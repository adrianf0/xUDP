--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:35:50 05/31/2011
-- Design Name:   
-- Module Name:   arp_tb.vhd
-- Project Name:  xUDP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- Synthesis wrapper for arp
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 0.02 - Added tests for ARP timeout
-- Additional Comments:
--
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arp_types.all;
use work.axi_types.all;
use work.xUDP_Common_pkg.all;

entity arp_synth is
    port (
        -- lookup request signals
        arp_req_req         : in  arp_req_req_type;
        arp_req_rslt        : out arp_req_rslt_type;
        -- MAC layer RX signals
        data_in             : in axi4_dvlk64_t; -- AXI4 input stream
        -- MAC layer TX signals
        mac_tx_req          : out std_logic;  -- indicates that ip wants access to channel (stays up for as long as tx)
        mac_tx_granted      : in  std_logic;  -- indicates that access to channel has been granted            
        data_out_ready      : in  std_logic;    -- indicates system ready to consume data
        data_out            : out axi4_dvlk64_t; -- AXI4 output stream
        -- system signals
        control             : in  arp_control_type;
        req_count           : out std_logic_vector(7 downto 0);    -- count of arp pkts received
        clks                : in xUDP_CLOCK_T
    );
end arp_synth;

architecture behavior of arp_synth is

  -- Component Declaration for the Unit Under Test (UUT)
  
component arp
    generic (
        no_default_gateway  : boolean := true;  -- set to false if communicating with devices accessed
                                                -- though a "default gateway or router"
        CLOCK_FREQ_HZ       : integer := 156250000;  -- freq of data_in_clk -- needed to timout cntr
        ARP_TIMEOUT_S       : integer := 60;    -- ARP response timeout (s)
        ARP_TX_TIMEOUT_CLKS : integer := 200;    -- # time allowed to tx before abort
        ARP_MAX_PKT_TMO     : integer := 5;     -- # wrong nwk pkts received before set error
        MAX_ARP_ENTRIES     : integer := 255    -- max entries in the arp store
        );
    port (
        -- lookup request signals
        arp_req_req         : in  arp_req_req_type;
        arp_req_rslt        : out arp_req_rslt_type;
        -- MAC layer RX signals
        data_in             : in axi4_dvlk64_t; -- AXI4 input stream
        -- MAC layer TX signals
        mac_tx_req          : out std_logic;  -- indicates that ip wants access to channel (stays up for as long as tx)
        mac_tx_granted      : in  std_logic;  -- indicates that access to channel has been granted            
        data_out_ready      : in  std_logic;    -- indicates system ready to consume data
        data_out            : out axi4_dvlk64_t; -- AXI4 output stream
        -- system signals
        cfg                 : in xUDP_CONIGURATION_T;
        control             : in  arp_control_type;
        req_count           : out std_logic_vector(7 downto 0);    -- count of arp pkts received
        clks                : in xUDP_CLOCK_T
    );
end component;

    --Inputs
    signal cfg_int         : xUDP_CONIGURATION_T;
    constant no_default_gateway : boolean := false;

begin

combinatorial : process (clks.rx_reset)
begin
    -- set defaults
    cfg_int.ip_address  <= x"C0A80105";
    cfg_int.mac_address <= x"023456780102";
    cfg_int.nwk_gateway <= x"C0A80101";
    cfg_int.nwk_mask    <= x"ffffff00";
end process;


-- Instantiate the Unit Under Test (UUT)
arp_layer : arp
    generic map (
        no_default_gateway  => no_default_gateway,
        ARP_TX_TIMEOUT_CLKS => 100,
        CLOCK_FREQ_HZ       => 156250000,
        ARP_TIMEOUT_S       => 20
    )
    port map (
        -- lookup request mappings
        arp_req_req     => arp_req_req,
        arp_req_rslt    => arp_req_rslt,
        -- rx mappings
        data_in         => data_in,
        -- tx mappings
        mac_tx_req      => mac_tx_req,
        mac_tx_granted  => mac_tx_granted,
        data_out_ready  => data_out_ready,
        data_out        => data_out,
        -- system mappings
        control         => control,
        req_count       => req_count,
        cfg             => cfg_int,
        clks            => clks
);


end;
