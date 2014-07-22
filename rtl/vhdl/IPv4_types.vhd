-------------------------------------------------------------------------------
-- Title      : IPv4_types
-- Project    : xUDP
-------------------------------------------------------------------------------
-- File       : IPv4_type.vhd
-- Author     : Adrian Fiergolski  <A.Fiergolski@gmail.com>
-- Company    : 
-- Created    : 2014-07-21
-- Last update: 2014-07-22
-- Platform   : 
-- Standard   : VHDL'2008
-------------------------------------------------------------------------------
-- Description: The type used by IPv4 layer. 
-------------------------------------------------------------------------------
-- This file is part of xUDP.
--
-- xUDP is free firmware: you can redistribute it and/or modify it under the terms of the GNU General Public License 
-- as published by the Free Software Foundation, either version 3 of the License, or any later version.
--
-- xUDP is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License along with xUDP. If not, see http://www.gnu.org/licenses/.

-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2014-07-21  1.0      afiergol        Created
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.axi_types.all;
use work.arp_types.all;

package IPv4_types is

  constant IP_BROADCAST_ADDR  : STD_LOGIC_VECTOR (31 downto 0) := x"FF_FF_FF_FF";

  --------------
  -- IPv4 TX --
  --------------

  type IPV4_TX_HEADER_T is record
    protocol    : STD_LOGIC_VECTOR (7 downto 0);   -- encapsulated transport protocol
    data_length : STD_LOGIC_VECTOR (15 downto 0);  -- user data size, in bytes
    dst_ip_addr : STD_LOGIC_VECTOR (31 downto 0);  -- destination IP address
  end record;

  type IPV4_TX_T is record
    hdr  : IPV4_TX_HEADER_T; --TX header
    data : axi4_dvlk64_t;    --AXI4-S bus carrying user data
  end record;

  type IPV4_TX_STATUS_STATE_T is (NONE,    -- idle
                                  SENDING, -- sending packet
                                  SENT,    -- packet  sent
                                  ERR);    -- error during packet transmission
  
  type IPV4_TX_STATUS_T is record
    state : IPV4_TX_STATUS_STATE_T;  -- current state of the IPV4_TX submodule
  end record;
  
  --------------
  -- IPv4 RX --
  --------------

  type IPV4_RX_HEADER_T is record
    valid       : STD_LOGIC;                      -- content of the record is valid
    protocol    : STD_LOGIC_VECTOR (7 downto 0);  -- encapsulated transport protocol
    data_length : STD_LOGIC_VECTOR (15 downto 0); -- user data size, bytes
    src_ip_addr : STD_LOGIC_VECTOR (31 downto 0); -- source IP address
    broadcast   : STD_LOGIC;                      -- set if the frame is IP broadcast
  end record;

  type IPV4_RX_T is record
    hdr  : IPV4_RX_HEADER_T; -- RX received
    data : axi4_dvlk64_t;    -- AXI4-S bus carrying user data
  end record;

  type IPV4_RX_STATUS_ERROR_T is (NONE,                    -- no error
                                  TERMINATION_ETHERNET,    -- early termination in Ethernet header phase
                                  TERMINATION_IP,          -- early termination in IP header phase
                                  TERMINATION_USER_DATA);  -- early termination sending user data
  
  
  type IPV4_RX_STATUS_T is record
    rx_frames_cnt   : STD_LOGIC_VECTOR (7 downto 0); -- number of received IP frames 
    num_frame_error : STD_LOGIC_VECTOR (7 downto 0); -- number of received IP frames with error
    error           : IPV4_RX_STATUS_ERROR_T;        -- last error
  end record;


  ------------------
  -- IPv4 Control --
  ------------------
  type IPV4_CONTROL_T is record
  end record;

end IPv4_types;
