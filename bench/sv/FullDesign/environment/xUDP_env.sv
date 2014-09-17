//                              -*- Mode: Verilog -*-
// Filename        : xUDP_env.sv
// Description     : Environment to test xUDP.
// Author          : Adrian Fiergolski
// Created On      : Tue Sep 16 11:45:02 2014
// Last Modified By: Adrian Fiergolski
// Last Modified On: Tue Sep 16 11:45:02 2014
// Update Count    : 0
// Status          : Unknown, Use with caution!

//Class: xUDP_env
//UVM environment to test xUDP_top
class xUDP_env extends uvm_env;

   //Variable: xaui_sim_agent
   //The simulation (MAC) side of the interface
   mvc_agent xaui_sim_agent;

   //Variable: xaui_rtl_agent
   //The RTL side of the interface (passive listener)
   mvc_agent xaui_rtl_agent;

   //Variable: cfg
   //It holds environment configuration
   xUDP_config cfg;
   
   `uvm_component_utils_begin(xUDP_env)
   `uvm_component_utils_end
   
   //Function: new
   //Creates a new <xUDP_env> with the given ~name~ and ~parent~.
   function new(string name="", uvm_component parent);
      super.new(name, parent);
   endfunction // new

   //Function: build_phase
   //Create internal agents and scoreboard. Assign configuration
   function void build_phase(uvm_phase phase);
      uvm_object tmp;
      if( get_config_object("xUDP_cfg", tmp, 0) )
	assert( $cast(cfg, tmp) );
      
      if(cfg == null) begin
	 `uvm_fatal("NOCONFIG", "Configuration not set for this component.")
      end

      //Creates components
      xaui_sim_agent = mvc_agent::type_id::create("xaui_sim_agent", this);
      xaui_rtl_agent = mvc_agent::type_id::create("xaui_rtl_agent", this);

      //assign configuration
      uvm_config_db #( uvm_object)::set( this, "*xaui_sim_agent", mvc_config_base_id, cfg.xaui_sim_cfg);
      uvm_config_db #( uvm_object)::set( this, "*xaui_rtl_agent", mvc_config_base_id, cfg.xaui_rtl_cfg);

      super.build_phase(phase);
      
   endfunction // build_phase

   //Function: connect_phase
   function void connect_phase( uvm_phase phase);
   endfunction // connect_phase
   
endclass // xUDP_env
