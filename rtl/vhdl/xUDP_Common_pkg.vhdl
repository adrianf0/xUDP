-------------------------------------------------------------------------------
-- Title      : xUDP_Common_pkg
-- Project    : xUDP
-------------------------------------------------------------------------------
-- File       : xUDP_Common_pkg.vhdl
-- Author     : Adrian Fiergolski  <A.Fiergolski@gmail.com>
-- Company    : 
-- Created    : 2014-07-22
-- Last update: 2014-08-19
-- Platform   : 
-- Standard   : VHDL'2008
-------------------------------------------------------------------------------
-- Description: Common Package used across xUDP stack.
-------------------------------------------------------------------------------
-- This file is part of xUDP.
--
-- xUDP is free firmware: you can redistribute it and/or modify it under the terms of the GNU General Public License 
-- as published by the Free Software Foundation, either version 3 of the License, or any later version.
--
--  is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License along with . If not, see http://www.gnu.org/licenses/.

-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2014-07-22  1.0      afiergol	Created
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package xUDP_Common_pkg is

  type xUDP_CLOCK_T is record
    rx_clk   : STD_LOGIC;   
    rx_reset : STD_LOGIC;   -- asynchronous reset of rx_clk domain (deny is
                            -- synchronised to rx_clk)
    tx_clk   : STD_LOGIC;
    tx_reset : STD_LOGIC;   -- asynchronous reset of tx_clk domain (deny is
                            -- synchronised to tx_clk) 
  end record;

  type xUDP_CONIGURATION_T is record
    ip_address  : STD_LOGIC_VECTOR(31 downto 0); -- xUDP IP address
    mac_address : STD_LOGIC_VECTOR(47 downto 0); -- xUDP MAC address
  end record;
      

end package xUDP_Common_pkg;
