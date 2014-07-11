--
--	Package File Template
--
--	Purpose: This package defines data types for AXI transfers


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package axi_types is

	-- Define 64 bit axi bus with data, valid, and last signals
	type axi4_dvl64_t is record
		tdata 				: STD_LOGIC_VECTOR (63 downto 0);
		tvalid 				: STD_LOGIC;								-- indicates data_in valid on clock
		tlast			 		: STD_LOGIC;								-- indicates last data in frame
	end record;
	
	function empty_axi4_tdl64_t return axi4_dvl64_t;


end axi_types;

package body axi_types is

function empty_axi4_tdl64_t return axi4_dvl64_t is
	variable axi : axi4_dvl64_t;
begin
	axi.tdata := (others => '0');
	axi.tvalid := '0';
	axi.tlast := '0';
	return axi;
end empty_axi4_tdl64_t;


end axi_types;