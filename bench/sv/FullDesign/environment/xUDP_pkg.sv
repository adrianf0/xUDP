//                              -*- Mode: Verilog -*-
// Filename        : xUDP_pkg.sv
// Description     : Package of xUDP simulation.
// Author          : Adrian Fiergolski
// Created On      : Tue Sep 16 12:43:27 2014
// Last Modified By: Adrian Fiergolski
// Last Modified On: Tue Sep 16 12:43:27 2014
// Update Count    : 0
// Status          : Unknown, Use with caution!

`ifndef XUDP_PKG_SV
 `define XUDP_PKG_SV

`include "mvc_macros.svh"
//Include VIP
`include "questa_mvc_svapi.svh"
`include "mvc_pkg.sv"
`include "mgc_ethernet_v1_0_pkg.sv"
`include "clk_reset.sv"

//Title: xUDP_pkg

//Package: xUDP_pkg
//Package containing <xUDP_env>
package xUDP_pkg;
   import uvm_pkg::*;
 `include <uvm_macros.svh>

   //Typedef: bfm_type
   //Type of the 10G Ethernet
   typedef `DEFINE_VIF_TYPE(ethernet) bfm_type;

   //Ethernet 10G package (Questa VIP)
   import mvc_pkg::*;
   import mgc_ethernet_v1_0_pkg::*;
   
 `include "xUDP_config.sv"
 `include "xUDP_env.sv"
   
endpackage // xUDP_pkg

`endif
  
