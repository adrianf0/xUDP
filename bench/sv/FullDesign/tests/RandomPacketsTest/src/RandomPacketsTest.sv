//                              -*- Mode: Verilog -*-
// Filename        : RandomPacketsTest.sv
// Description     : The test sends random Ethernt packets.
// Author          : Adrian Fiergolski
// Created On      : Tue Sep 16 14:53:40 2014
// Last Modified By: Adrian Fiergolski
// Last Modified On: Tue Sep 16 14:53:40 2014
// Update Count    : 0
// Status          : Unknown, Use with caution!

`include "genericTest.sv"

//Class: RandomPacketsRest
//The test send random Ethernet packets
class RandomPacketsRest extends genericTest;
   
   `uvm_component_utils_begin(RandomPacketsRest)
   `uvm_component_utils_end
   
   //Function: new
   //Creates a new <RandomPacketsRest> with the given ~name~ and ~parent~.
   function new(string name="", uvm_component parent);
      super.new(name, parent);
   endfunction // new

   //Task: start_xUDP_sequence
   //The task start  <ethernet_top_sequence_t> sending random Ethernet frames.
   virtual task start_xUDP_sequence();
      ethernet_top_sequence seq =  ethernet_top_sequence::type_id::create("Ethernet top sequence");

      if( ! seq.randomize() )
	`uvm_error("RAND_ERROR", "Randomisation failed");
      fork
	 seq.start( env.xaui_sim_agent.m_sequencer );
      join_none
      
   endtask // start_xUDP_sequence
   
endclass // RandomPacketsRest
