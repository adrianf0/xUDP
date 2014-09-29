/*****************************************************************************
 *
 * Copyright 2007-2013 Mentor Graphics Corporation
 * All Rights Reserved.
 *
 * THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS THE
 * PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS SUBJECT
 * TO LICENSE TERMS.
 *
 *****************************************************************************/

//External Clock-Reset generator module for XGMII

module clk_reset (output bit clk0, clk1, reset);

  reg iclk, irst;
  
  assign clk0 = iclk;
  assign clk1 = iclk;
  assign reset = irst;
  
  initial
  begin
    iclk = 0;
        forever #3200 iclk = ~iclk;
  end
  
  initial
  begin
    irst = 1;
    #30000 irst = 0;
  end
  
endmodule
