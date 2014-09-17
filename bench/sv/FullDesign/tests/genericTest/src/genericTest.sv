//                              -*- Mode: Verilog -*-
// Filename        : genericTest.sv
// Description     : The generic test of the xUDP
// Author          : Adrian Fiergolski
// Created On      : Tue Sep 16 12:37:05 2014
// Last Modified By: Adrian Fiergolski
// Last Modified On: Tue Sep 16 12:37:05 2014
// Update Count    : 0
// Status          : Unknown, Use with caution!

timeunit 1ns;
timeprecision 1ps;

`define USE_UVM_TLM_CLK

import uvm_pkg::*;
`include <uvm_macros.svh>

`include "xUDP_pkg.sv"
`include "FullTest_pkg.sv"

`include "top.sv"

import xUDP_pkg::*;
import FullTest_pkg::*;

//Class: genericTest
//The base class for any specific test of the xUDP
class genericTest extends uvm_test;

   //Variable: env
   //Simulation environment to test the xUDP
   xUDP_env env;
   
   //Variable: cfg
   //Configuration of the environment
   xUDP_config cfg;

   //Group: Configure
   
   //Variable: TCPdump_enable
   protected bit TCPdump_enable = 0;

   //Variable: TCPdump_file
   protected string TCPdump_file = "tcp_dump";

   
   `uvm_component_utils_begin(genericTest)
   `uvm_component_utils_end
   
   //Function: new
   //Creates a new <genericTest> with the given ~name~ and ~parent~.
   function new(string name="", uvm_component parent);
      super.new(name, parent);
   endfunction // new

   //Function: build_phase
   //Create environment and assign configuration.
   virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);

      //create environment
      env = xUDP_env::type_id::create("env", this);

      //create configuration
      cfg = xUDP_config::type_id::create("xUDP configuration");

      //configure XAUI's agents
      xaui_sim_config(cfg.xaui_sim_cfg);
      xaui_rtl_config(cfg.xaui_sim_cfg);

      
      set_config_object( "env*", "xUDP_cfg", cfg, .clone(0) );
      //use testplan
      $set_coverage_db_name( {"../../Testplan/ucdb/", get_type_name(), ".ucdb"} );
   endfunction // build_phase

   //Function: end_of_elaboration
   //
   //Implement UVM end of elaboration phase.
   //Prints topology of the test ans set the sequences.
   virtual function void end_of_elaboration_phase(uvm_phase phase);
      uvm_top.print_topology();
   endfunction // end_of_elaboration_phase

   //Task: run_phase
   //It calls <wait_for_xUDP> and afterwards in parallel:
   //- <start_xUDP_sequence> 
   //- <timeout>.
   virtual task run_phase(uvm_phase phase);
      phase.raise_objection(this, "Start test");
      
      wait_for_xUDP();
      fork
	 start_xUDP_sequence();
	 timeout();
      join

      phase.drop_objection(this,"Test done");
   endtask // run_phase

   //Task: wait_for_xUDP
   //Task should wait for the xUDP to become functional (PLL locked, ect.)
   virtual task wait_for_xUDP();
   endtask // wait_for_xUDP

   //Task: start_xUDP_sequence
   //User should spawn in this task <xUDP_seq>s
   virtual task start_xUDP_sequence();
   endtask // start_xUDP_sequence

   //Task: timeout
   //Timeout of the whole test. 
   //By default: 5us.
   virtual task timeout();
      # 5us;
   endtask // timeout
   
   //Group XAUI configuration

   //Function: xaui_sim_config
   //Configure xaui_sim_agent
   extern virtual function void xaui_sim_config(ethernet_vip_config cfg);

   //Function: xaui_rtl_config
   //Configure xaui_rtl_agent
   extern virtual function void xaui_rtl_config(ethernet_vip_config cfg);
   
endclass // genericTest

function void genericTest::xaui_sim_config(ethernet_vip_config cfg);
   xUDP_pkg::bfm_type bfm = cfg.m_bfm;
   cfg.set_structural_index(0);

   bfm.ethernet_set_device_abstraction_level(0, 0, 1);         // Device 0, TLM 
   bfm.ethernet_set_device_abstraction_level(1, 1, 0);         // Device 1, RTL

`ifdef USE_UVM_TLM_CLK
   bfm.ethernet_set_clk_contr_abstraction_level(0, 1);         // Clock, TLM
   bfm.ethernet_set_rst_contr_abstraction_level(0, 1);         // Reset, TLM
`else
   bfm.ethernet_set_clk_contr_abstraction_level(1, 0);         // Clock, RTL
   bfm.ethernet_set_rst_contr_abstraction_level(1, 0);         // Reset, RTL
`endif

   bfm.set_config_interface_type(ETH_10G_BASE_X);          // BASE-X Interface
   bfm.set_config_pma_lane_count(4);
   bfm.set_config_pma_lane_width(1);                       // Serial
   bfm.set_config_autoneg_enable(1'b0);
   bfm.set_config_mac_pause_transmission(1'b0);

   // Set this if the top level module has timescale in ps.
   bfm.set_m_clk_factor_ps( QUESTA_MVC::questa_mvc_sv_convert_to_precision(1,QUESTA_MVC::QUESTA_MVC_TIME_PS) );

   // Adding Data, Control and Fault Frame listeners
   /* -----\/----- EXCLUDED -----\/-----
    m_config.xaui_dev_0_cfg.set_analysis_component("data_frame_ap" , "data_frame_listener" ,
    mvc_item_listener #( ethernet_device_data_frame )::type_id::get());
    
    m_config.xaui_dev_0_cfg.set_analysis_component("control_frame_ap" , "control_frame_listener" ,
    mvc_item_listener #( ethernet_device_control_frame )::type_id::get());
    
    m_config.xaui_dev_0_cfg.set_analysis_component("fault_seq_ap" , "fault_seq_listener" ,
    mvc_item_listener #( ethernet_device_fault_sequence )::type_id::get());
    -----/\----- EXCLUDED -----/\----- */
endfunction // xaui_sim_config

function void genericTest::xaui_rtl_config(ethernet_vip_config cfg);
   bfm_type bfm = cfg.m_bfm;
   
   cfg.set_structural_index(1);

   //Configuring the PASIVE agent
   cfg.m_active_passive=UVM_PASSIVE;
endfunction // xaui_rtl_config
