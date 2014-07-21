-------------------------------------------------------------------------------
-- Title      : IPv4
-- Project    : xUDP
-------------------------------------------------------------------------------
-- File       : IPv4.vhd
-- Author     : Adrian Fiergolski  <A.Fiergolski@gmail.com>
-- Company    : 
-- Created    : 2014-07-21
-- Last update: 2014-07-21
-- Platform   : 
-- Standard   : VHDL'2008
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- This file is part of xUDP project.
--
-- xUDP is free firmware: you can redistribute it and/or modify it under the terms of the GNU General Public License 
-- as published by the Free Software Foundation, either version 3 of the License, or any later version.
--
--  is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License along with . If not, see http://www.gnu.org/licenses/.

-------------------------------------------------------------------------------
-- Revisions  : 0.01 - File created - refactored from
--                                    OpenCores UDP_IP_Stack 1G project
-- Date        Version  Author  Description
-- 2014-07-21  1.0      afiergol	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.axi_types.all;
use work.ipv4_types.all;
use work.arp_types.all;

entity IPv4 is
  port (
    -- IP Layer signals
    ip_tx             : in  IPV4_TX_T;
    ip_tx_data_tready : out STD_LOGIC;
    ip_tx_status      : out IPV4_TX_STATUS_T;

    ip_rx             : out IPV4_RX_T;
    ip_rx_data_tready : in  STD_LOGIC;
    ip_rx_status      : out IPV4_TX_STATUS_T; 

    ip_control        : in IPV4_CONTROL_T;   -- control of IP layer's internals

    -- system control signals
    rx_clk               : in  STD_LOGIC;
    tx_clk               : in  STD_LOGIC;
    reset                : in  STD_LOGIC;
    our_ip_address       : in  STD_LOGIC_VECTOR (31 downto 0);
    our_mac_address      : in  STD_LOGIC_VECTOR (47 downto 0);

    -- ARP lookup signals (retrieve MAC address from ARP module)
    arp_mac_req          : out arp_req_req_type;
    arp_mac_rslt         : in  arp_req_rslt_type;

    -- MAC layer RX signals (AXI4-S bus)
    mac_rx        : in  axi4_dvlk64_t;
    max_rx_tready : out STD_LOGIC;

    -- MAC layer TX signals (AXI4-S bus)
    mac_tx        : out axi4_dvlk64_t;
    mac_tx_tready : in  STD_LOGIC
    );
end IPv4;

architecture structural of IPv4 is

  component IPv4_TX
    port(
      -- IP Layer signals
      ip_tx_start          : in  STD_LOGIC;
      ip_tx                : in  ipv4_tx_type;                   -- IP tx cxns
      ip_tx_result         : out STD_LOGIC_VECTOR (1 downto 0);  -- tx status (changes during transmission)
      ip_tx_data_out_ready : out STD_LOGIC;  -- indicates IP TX is ready to take data

      -- system signals
      clk                : in  STD_LOGIC;  -- same clock used to clock mac data and ip data
      reset              : in  STD_LOGIC;
      our_ip_address     : in  STD_LOGIC_VECTOR (31 downto 0);
      our_mac_address    : in  STD_LOGIC_VECTOR (47 downto 0);
      -- ARP lookup signals
      arp_req_req        : out arp_req_req_type;
      arp_req_rslt       : in  arp_req_rslt_type;
      -- MAC layer TX signals
      mac_tx_req         : out STD_LOGIC;  -- indicates that ip wants access to channel (stays up for as long as tx)
      mac_tx_granted     : in  STD_LOGIC;  -- indicates that access to channel has been granted            
      mac_data_out_ready : in  STD_LOGIC;  -- indicates system ready to consume data
      mac_data_out_valid : out STD_LOGIC;  -- indicates data out is valid
      mac_data_out_first : out STD_LOGIC;  -- with data out valid indicates the first byte of a frame
      mac_data_out_last  : out STD_LOGIC;  -- with data out valid indicates the last byte of a frame
      mac_data_out       : out STD_LOGIC_VECTOR (7 downto 0)  -- ethernet frame (from dst mac addr through to last byte of frame)      
      );
  end component;

  component IPv4_RX
    port(
      -- IP Layer signals
      ip_rx             : out ipv4_rx_type;
      ip_rx_start       : out STD_LOGIC;  -- indicates receipt of ip frame.
      -- system signals
      clk               : in  STD_LOGIC;
      reset             : in  STD_LOGIC;
      our_ip_address    : in  STD_LOGIC_VECTOR (31 downto 0);
      rx_pkt_count      : out STD_LOGIC_VECTOR(7 downto 0);  -- number of IP pkts received for us
      -- MAC layer RX signals
      mac_data_in       : in  STD_LOGIC_VECTOR (7 downto 0);  -- ethernet frame (from dst mac addr through to last byte of frame)
      mac_data_in_valid : in  STD_LOGIC;  -- indicates data_in valid on clock
      mac_data_in_last  : in  STD_LOGIC   -- indicates last data in frame
      );
  end component;

begin

  TX : IPv4_TX port map (
    ip_tx_start          => ip_tx_start,
    ip_tx                => ip_tx,
    ip_tx_result         => ip_tx_result,
    ip_tx_data_out_ready => ip_tx_data_out_ready,
    clk                  => tx_clk,
    reset                => reset,
    our_ip_address       => our_ip_address,
    our_mac_address      => our_mac_address,
    arp_req_req          => arp_req_req,
    arp_req_rslt         => arp_req_rslt,
    mac_tx_req           => mac_tx_req,
    mac_tx_granted       => mac_tx_granted,
    mac_data_out_ready   => mac_data_out_ready,
    mac_data_out_valid   => mac_data_out_valid,
    mac_data_out_first   => mac_data_out_first,
    mac_data_out_last    => mac_data_out_last,
    mac_data_out         => mac_data_out
    );

  RX : IPv4_RX port map (
    ip_rx             => ip_rx,
    ip_rx_start       => ip_rx_start,
    clk               => rx_clk,
    reset             => reset,
    our_ip_address    => our_ip_address,
    rx_pkt_count      => rx_pkt_count,
    mac_data_in       => mac_data_in,
    mac_data_in_valid => mac_data_in_valid,
    mac_data_in_last  => mac_data_in_last
    );


end structural;
