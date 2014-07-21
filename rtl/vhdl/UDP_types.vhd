-------------------------------------------------------------------------------
-- Title      : UDP types
-- Project    : xUDP
-------------------------------------------------------------------------------
-- File       : UDP_types.vhd
-- Author     : Adrian Fiergolski  <A.Fiergolski@gmail.com>
-- Company    : 
-- Created    : 2014-07-21
-- Last update: 2014-07-21
-- Platform   : 
-- Standard   : VHDL'2008
-------------------------------------------------------------------------------
-- Description: Types used in UDP layer.
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
-- 2014-07-21  1.0      afiergol	Created
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.IPv4_types.all;

package UDP_types is

  ------------------------------------------------------------
  ------------------- to be reviewed -------------------------
  ------------------------------------------------------------

  
  ------------
  -- UDP TX --
  ------------

  -- coding for result in tx
  constant UDPTX_RESULT_NONE    : STD_LOGIC_VECTOR (1 downto 0) := "00";
  constant UDPTX_RESULT_SENDING : STD_LOGIC_VECTOR (1 downto 0) := "01";
  constant UDPTX_RESULT_ERR     : STD_LOGIC_VECTOR (1 downto 0) := "10";
  constant UDPTX_RESULT_SENT    : STD_LOGIC_VECTOR (1 downto 0) := "11";

  type udp_tx_header_type is record
    dst_ip_addr : STD_LOGIC_VECTOR (31 downto 0);
    dst_port    : STD_LOGIC_VECTOR (15 downto 0);
    src_port    : STD_LOGIC_VECTOR (15 downto 0);
    data_length : STD_LOGIC_VECTOR (15 downto 0);  -- user data size, bytes
    checksum    : STD_LOGIC_VECTOR (15 downto 0);
  end record;


  type udp_tx_type is record
    hdr  : udp_tx_header_type;          -- header received
    data : axi_out_type;                -- tx axi bus
  end record;


  ------------
  -- UDP RX --
  ------------
  type udp_rx_header_type is record
    is_valid    : STD_LOGIC;
    src_ip_addr : STD_LOGIC_VECTOR (31 downto 0);
    src_port    : STD_LOGIC_VECTOR (15 downto 0);
    dst_port    : STD_LOGIC_VECTOR (15 downto 0);
    data_length : STD_LOGIC_VECTOR (15 downto 0);  -- user data size, bytes
  end record;


  type udp_rx_type is record
    hdr  : udp_rx_header_type;          -- header received
    data : axi_in_type;                 -- rx axi bus
  end record;

  type udp_addr_type is record
    ip_addr  : STD_LOGIC_VECTOR (31 downto 0);
    port_num : STD_LOGIC_VECTOR (15 downto 0);
  end record;

  type udp_control_type is record
    ip_controls : ip_control_type;
  end record;

  
end package UDP_types;
