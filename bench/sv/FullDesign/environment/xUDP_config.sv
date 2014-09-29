//                              -*- Mode: Verilog -*-
// Filename        : xUDP_config.sv
// Description     : Environmetn config
// Author          : Adrian Fiergolski
// Created On      : Tue Sep 16 12:31:32 2014
// Last Modified By: Adrian Fiergolski
// Last Modified On: Tue Sep 16 12:31:32 2014
// Update Count    : 0
// Status          : Unknown, Use with caution!

//Class: xUDP_config
//Configuration of the environment to test xUDP.
class xUDP_config extends uvm_object;

   //Variable: xaui_sim_cfg
   //Configuration of the sim agent
   ethernet_vip_config xaui_sim_cfg;

   //Variable: xaui_rtl_cfg
   //Configuration of the rtl agent
   ethernet_vip_config xaui_rtl_cfg;
   
   `uvm_object_utils_begin(xUDP_config)
   `uvm_object_utils_end
   
   //Function: new
   //Creates a new <xUDP_config> with the given ~name~.
   function new(string name="xUDP_config");
      super.new(name);
      xaui_sim_cfg = new();
      xaui_rtl_cfg = new();
   endfunction
   
endclass // xUDP_config
