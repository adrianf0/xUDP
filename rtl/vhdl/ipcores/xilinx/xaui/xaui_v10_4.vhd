--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: xaui_v10_4.vhd
-- /___/   /\     Timestamp: Thu Aug 28 10:56:05 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/mquinto/git/xUDP/rtl/vhdl/ipcores/xilinx/xaui/tmp/_cg/xaui_v10_4.ngc /home/mquinto/git/xUDP/rtl/vhdl/ipcores/xilinx/xaui/tmp/_cg/xaui_v10_4.vhd 
-- Device	: 6vlx130tff1156-2
-- Input file	: /home/mquinto/git/xUDP/rtl/vhdl/ipcores/xilinx/xaui/tmp/_cg/xaui_v10_4.ngc
-- Output file	: /home/mquinto/git/xUDP/rtl/vhdl/ipcores/xilinx/xaui/tmp/_cg/xaui_v10_4.vhd
-- # of Entities	: 1
-- Design Name	: xaui_v10_4
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity xaui_v10_4 is
  port (
    reset : in STD_LOGIC := 'X'; 
    usrclk : in STD_LOGIC := 'X'; 
    mdc : in STD_LOGIC := 'X'; 
    mdio_in : in STD_LOGIC := 'X'; 
    mgt_enchansync : out STD_LOGIC; 
    mgt_loopback : out STD_LOGIC; 
    mgt_powerdown : out STD_LOGIC; 
    soft_reset : out STD_LOGIC; 
    align_status : out STD_LOGIC; 
    mdio_out : out STD_LOGIC; 
    mdio_tri : out STD_LOGIC; 
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 ); 
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mgt_rxdata : in STD_LOGIC_VECTOR ( 63 downto 0 ); 
    mgt_rxcharisk : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mgt_codevalid : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mgt_codecomma : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mgt_syncok : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    mgt_rxlock : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    mgt_tx_reset : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    mgt_rx_reset : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    signal_detect : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    type_sel : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    prtad : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 ); 
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mgt_txdata : out STD_LOGIC_VECTOR ( 63 downto 0 ); 
    mgt_txcharisk : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mgt_enable_align : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    sync_status : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end xaui_v10_4;

architecture STRUCTURE of xaui_v10_4 is
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdc_in : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_enable_align_331 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_enable_align_332 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_enable_align_333 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_enable_align_334 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_339 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_mgt_loopback_keep : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_mgt_powerdown_keep : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xaui_inst_align_status_int : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_out_344 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_tri_345 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U0_xaui_inst_align_status_int_inv : STD_LOGIC; 
  signal U0_xaui_inst_type_sel_reg_done_inv : STD_LOGIC; 
  signal U0_xaui_inst_aligned_sticky_350 : STD_LOGIC; 
  signal U0_xaui_inst_rx_local_fault_351 : STD_LOGIC; 
  signal U0_xaui_inst_tx_local_fault_352 : STD_LOGIC; 
  signal U0_xaui_inst_type_sel_reg_done_353 : STD_LOGIC; 
  signal U0_xaui_inst_usrclk_reset_354 : STD_LOGIC; 
  signal U0_xaui_inst_p_clear_aligned_edge_last_value_355 : STD_LOGIC; 
  signal U0_xaui_inst_clear_aligned_edge_356 : STD_LOGIC; 
  signal U0_xaui_inst_p_clear_local_fault_edge_last_value_357 : STD_LOGIC; 
  signal U0_xaui_inst_clear_local_fault_edge_358 : STD_LOGIC; 
  signal U0_xaui_inst_usrclk_reset_pipe_359 : STD_LOGIC; 
  signal U0_xaui_inst_reset_int : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_clear_aligned_362 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_clear_local_fault_363 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txc_out_382 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txc_out_391 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txc_out_400 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txc_out_409 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txc_out_418 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txc_out_427 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txc_out_436 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txc_out_445 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_464 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT3211 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1511 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT161 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT511 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT123 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT302 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT331 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT311 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_8_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_9_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_10_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_11_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_12_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_13_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_14_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_15_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_16_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_17_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_18_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_19_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_20_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_21_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_22_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_23_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_24_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_25_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_26_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_27_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_28_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_29_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_30_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_31_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_32_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_33_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_34_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_35_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_36_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_37_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_38_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_39_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_40_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_41_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_42_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_43_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_44_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_45_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_46_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_47_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_48_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_49_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_50_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_51_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_52_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_53_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_54_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_55_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_56_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_57_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_58_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_59_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_60_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_61_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_62_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_63_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_8_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_9_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_10_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_11_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_12_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_13_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_14_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_15_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_16_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_17_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_18_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_19_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_20_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_21_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_22_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_23_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_24_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_25_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_26_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_27_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_28_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_29_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_30_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_31_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_n0051_inv : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_n0020_inv : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_prbs_6_prbs_7_XOR_49_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_extra_a_675 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_k_r_prbs_i_prbs_6_prbs_7_XOR_66_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_k_r_prbs_i_prbs_5_prbs_6_XOR_65_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_state_machine_is_idle_1_is_q_1_AND_15_o_0 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_0_1 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_702 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_sync_status_int : STD_LOGIC; 
  signal U0_xaui_inst_receiver_sync_status_726 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_Mram_got_a_7_GND_18_o_Mux_10_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_Mram_got_a_3_GND_18_o_Mux_9_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_i_norst_inv_0 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2_PWR_19_o_wide_mux_42_OUT_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2_PWR_19_o_wide_mux_42_OUT_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2_PWR_19_o_wide_mux_42_OUT_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_4_got_a_7_AND_50_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_0_got_a_3_AND_47_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error_sliced_756 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_761 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_762 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_763 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_764 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxc_pipe_3_PWR_20_o_MUX_341_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxc_pipe_2_PWR_20_o_MUX_323_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxc_pipe_1_PWR_20_o_MUX_305_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxc_pipe_0_PWR_20_o_MUX_287_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_24_GND_19_o_MUX_339_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_25_PWR_20_o_MUX_338_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_26_PWR_20_o_MUX_337_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_27_PWR_20_o_MUX_336_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_28_PWR_20_o_MUX_335_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_29_PWR_20_o_MUX_334_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_30_PWR_20_o_MUX_333_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_31_PWR_20_o_MUX_332_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_16_GND_19_o_MUX_321_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_17_PWR_20_o_MUX_320_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_18_PWR_20_o_MUX_319_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_19_PWR_20_o_MUX_318_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_20_PWR_20_o_MUX_317_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_21_PWR_20_o_MUX_316_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_22_PWR_20_o_MUX_315_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_23_PWR_20_o_MUX_314_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_8_GND_19_o_MUX_303_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_9_PWR_20_o_MUX_302_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_10_PWR_20_o_MUX_301_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_11_PWR_20_o_MUX_300_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_12_PWR_20_o_MUX_299_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_13_PWR_20_o_MUX_298_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_14_PWR_20_o_MUX_297_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_15_PWR_20_o_MUX_296_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_0_GND_19_o_MUX_285_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_1_PWR_20_o_MUX_284_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_2_PWR_20_o_MUX_283_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_3_PWR_20_o_MUX_282_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_4_PWR_20_o_MUX_281_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_5_PWR_20_o_MUX_280_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_6_PWR_20_o_MUX_279_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe_7_PWR_20_o_MUX_278_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxc_half_pipe_0_PWR_20_o_MUX_215_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_0_GND_19_o_MUX_213_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_1_PWR_20_o_MUX_212_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_2_PWR_20_o_MUX_211_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_3_PWR_20_o_MUX_210_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_4_PWR_20_o_MUX_209_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_5_PWR_20_o_MUX_208_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_6_PWR_20_o_MUX_207_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_7_PWR_20_o_MUX_206_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxc_half_pipe_1_PWR_20_o_MUX_233_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_8_GND_19_o_MUX_231_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_9_PWR_20_o_MUX_230_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_10_PWR_20_o_MUX_229_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_11_PWR_20_o_MUX_228_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_12_PWR_20_o_MUX_227_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_13_PWR_20_o_MUX_226_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_14_PWR_20_o_MUX_225_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_15_PWR_20_o_MUX_224_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxc_half_pipe_2_PWR_20_o_MUX_251_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_16_GND_19_o_MUX_249_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_17_PWR_20_o_MUX_248_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_18_PWR_20_o_MUX_247_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_19_PWR_20_o_MUX_246_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_20_PWR_20_o_MUX_245_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_21_PWR_20_o_MUX_244_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_22_PWR_20_o_MUX_243_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_23_PWR_20_o_MUX_242_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxc_half_pipe_3_PWR_20_o_MUX_269_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_24_GND_19_o_MUX_267_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_25_PWR_20_o_MUX_266_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_26_PWR_20_o_MUX_265_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_27_PWR_20_o_MUX_264_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_28_PWR_20_o_MUX_263_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_29_PWR_20_o_MUX_262_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_30_PWR_20_o_MUX_261_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe_31_PWR_20_o_MUX_260_o : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_7_AND_204_o_848 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_6_AND_202_o_849 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_5_AND_200_o_850 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_4_AND_198_o_851 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_3_AND_196_o_852 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_2_AND_194_o_853 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_1_AND_192_o_854 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_0_AND_190_o_855 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_code_error_delay_0_898 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_code_error_delay_1_899 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_code_error_delay_2_900 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_code_error_delay_3_901 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_change_0 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_enable_align_i : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_change_0 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_enable_align_i : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_change_0 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_enable_align_i : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_change_0 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_enable_align_i : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1041 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1121 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd101 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_n0218_inv : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_8_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_n0185 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_9_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg2_mdc_reg3_AND_205_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_rd_AND_271_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_rd_AND_269_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_aligned_sticky_reg_1088 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_aligned_reg_1089 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_rx_local_fault_reg_1090 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_tx_local_fault_reg_1091 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg1_1092 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_in_reg3 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg3_1095 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg2_1096 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_rd_1105 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we_1106 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT17_1145 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In2_1147 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In1 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_3_11 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count4 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count3 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count1 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0185_inv : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_In : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int15 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int14 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int13 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int12 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int11 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int10 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int9 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int8 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int7 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int6 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int5 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int4 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int3 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int2 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int1 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int15 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int14 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int13 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int12 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int11 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int10 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int9 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int8 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int7 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int6 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int5 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int4 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int3 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int2 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int1 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_PWR_22_o_MUX_374_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_GND_21_o_MUX_373_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_out_int : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_tri_int : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_load_en : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_214_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_211_o_1262 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_prtad_4_shift_reg_8_equal_48_o : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_3_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_8_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_9_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_10_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_11_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_12_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_13_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_14_Q : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_15_Q : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_q_comb_1_1_1307 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_q_comb_1_2_1308 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_1_1_1309 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_1_2_1310 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_1_3_1311 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_1_4_1312 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_1_5_1313 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_1_6_1314 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_q_comb_0_1_1315 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_q_comb_0_2_1316 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_0_1_1317 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_0_2_1318 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_0_3_1319 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_0_4_1320 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_0_5_1321 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb_0_6_1322 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_1_1_1323 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_1_2_1324 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_1_3_1325 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_1_4_1326 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_1_5_1327 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_1_6_1328 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_1_7_1329 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_0_1_1330 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_0_2_1331 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_0_3_1332 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_0_4_1333 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_0_5_1334 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_0_6_1335 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_is_terminate_0_7_1336 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o1_1340 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o2_1341 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp4 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp41_1347 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp2 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o1_1349 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o1_1350 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o1_1351 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o1_1352 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o1_1353 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o1_1354 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o1_1355 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o1_1356 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_7_1_1357 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_7_2_1358 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_6_1_1359 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_6_2_1360 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_5_1_1361 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_5_2_1362 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_4_1_1363 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_4_2_1364 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_3_1_1365 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_3_2_1366 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_2_1_1367 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_2_2_1368 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_1_1_1369 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_1_2_1370 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_0_1_1371 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_code_error_0_2_1372 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_0_0_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_2_2_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_2_2_1_1383 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_2_2_2_1384 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_1_1_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_1_1_1_1386 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_6_6_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_6_6_1_1390 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_6_6_2_1391 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_5_5_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_5_5_1_1393 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_7_7_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_7_7_1_1395 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_4_4_Q : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_error_lane_4_4_1_1397 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o1_1442 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o2_1443 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o3_1444 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_n0185_15_1_1448 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In3_1451 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In1_1452 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In2_1453 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In1_1454 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In3_1455 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o1_1458 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT1 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT12_1460 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT13_1461 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT14_1462 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT15_1463 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT3 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT32 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT72 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT82 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT92 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT94 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT95_1473 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT101 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT113_1475 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal U0_xaui_inst_aligned_sticky_glue_set_1485 : STD_LOGIC; 
  signal U0_xaui_inst_rx_local_fault_glue_set_1486 : STD_LOGIC; 
  signal U0_xaui_inst_tx_local_fault_glue_set_1487 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_txc_out_7_glue_set_1488 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_txc_out_6_glue_set_1489 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_txc_out_5_glue_set_1490 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_txc_out_4_glue_set_1491 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_txc_out_3_glue_set_1492 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_txc_out_2_glue_set_1493 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_txc_out_1_glue_set_1494 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_recoder_txc_out_0_glue_set_1495 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_align_extra_a_glue_set_1496 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_glue_rst_1497 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg_glue_set_1498 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_loopback_reg_rstpot_1499 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_powerdown_reg_rstpot_1500 : STD_LOGIC; 
  signal U0_xaui_inst_clear_aligned_edge_rstpot_1501 : STD_LOGIC; 
  signal U0_xaui_inst_clear_local_fault_edge_rstpot_1502 : STD_LOGIC; 
  signal U0_xaui_inst_usrclk_reset_rstpot_1503 : STD_LOGIC; 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_rstpot_1504 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_rstpot_1505 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_7_rstpot_1526 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_6_rstpot_1527 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_5_rstpot_1528 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_4_rstpot_1529 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_3_rstpot_1530 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_2_rstpot_1531 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_1_rstpot_1532 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_0_rstpot_1533 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_7_rstpot_1534 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_6_rstpot_1535 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_5_rstpot_1536 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_4_rstpot_1537 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_3_rstpot_1538 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_2_rstpot_1539 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_1_rstpot_1540 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_0_rstpot_1541 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_7_rstpot_1542 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_6_rstpot_1543 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_5_rstpot_1544 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_4_rstpot_1545 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_3_rstpot_1546 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_2_rstpot_1547 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_1_rstpot_1548 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_0_rstpot_1549 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7_rstpot_1550 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_6_rstpot_1551 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_5_rstpot_1552 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_4_rstpot_1553 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_3_rstpot_1554 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_2_rstpot_1555 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_1_rstpot_1556 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_0_rstpot_1557 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_7_rstpot_1558 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_6_rstpot_1559 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_5_rstpot_1560 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_4_rstpot_1561 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_3_rstpot_1562 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_2_rstpot_1563 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_1_rstpot_1564 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_0_rstpot_1565 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_7_rstpot_1566 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_6_rstpot_1567 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_5_rstpot_1568 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_4_rstpot_1569 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_3_rstpot_1570 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_2_rstpot_1571 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_1_rstpot_1572 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_0_rstpot_1573 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_7_rstpot_1574 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_6_rstpot_1575 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_5_rstpot_1576 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_4_rstpot_1577 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_3_rstpot_1578 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_2_rstpot_1579 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_1_rstpot_1580 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_0_rstpot_1581 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7_rstpot_1582 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_6_rstpot_1583 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_5_rstpot_1584 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_4_rstpot_1585 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_3_rstpot_1586 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_2_rstpot_1587 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_1_rstpot_1588 : STD_LOGIC; 
  signal U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_0_rstpot_1589 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_0_dpot_1603 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_1_dpot_1604 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_2_dpot_1605 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_3_dpot_1606 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_4_dpot_1607 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_5_dpot_1608 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_6_dpot_1609 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_7_dpot_1610 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_8_dpot_1611 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_9_dpot_1612 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_10_dpot_1613 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_11_dpot_1614 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_12_dpot_1615 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_13_dpot_1616 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_14_dpot_1617 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_15_dpot_1618 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_0_dpot_1620 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_1_dpot_1621 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_2_dpot_1622 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_3_dpot_1623 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_4_dpot_1624 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_5_dpot_1625 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_6_dpot_1626 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_7_dpot_1627 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_8_dpot_1628 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_9_dpot_1629 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_10_dpot_1630 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_11_dpot_1631 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_12_dpot_1632 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_13_dpot_1633 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_14_dpot_1634 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_15_dpot_1635 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_2_rstpot_1639 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N306 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N348 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal N426 : STD_LOGIC; 
  signal N427 : STD_LOGIC; 
  signal N429 : STD_LOGIC; 
  signal N430 : STD_LOGIC; 
  signal N432 : STD_LOGIC; 
  signal N433 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal N438 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal N443 : STD_LOGIC; 
  signal N444 : STD_LOGIC; 
  signal N446 : STD_LOGIC; 
  signal N447 : STD_LOGIC; 
  signal N449 : STD_LOGIC; 
  signal N450 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal N453 : STD_LOGIC; 
  signal N455 : STD_LOGIC; 
  signal N456 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal N459 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal N462 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal N468 : STD_LOGIC; 
  signal N469 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal N474 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal N477 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_dpot_1753 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_0_dpot_1754 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_1_dpot_1755 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In111_1756 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1_1757 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11_1758 : STD_LOGIC; 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1_1759 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal N488 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal NLW_U0_xaui_inst_G_HAS_MDIO_management_1_Mshreg_mdio_in_reg3_Q15_UNCONNECTED : STD_LOGIC; 
  signal U0_xaui_inst_receiver_recoder_rxd_out : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal U0_xaui_inst_receiver_recoder_rxc_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xaui_inst_transmitter_recoder_txd_out : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal U0_xaui_inst_transmitter_recoder_txc_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NlwRenamedSig_OI_U0_xaui_inst_sync : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_type_sel_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_signal_detect_int : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xaui_inst_transmitter_is_terminate : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_transmitter_tx_is_q_comb : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_transmitter_tx_is_idle_comb : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_transmitter_tx_is_idle : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_transmitter_tx_is_q : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_transmitter_tx_code_r : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_transmitter_tx_code_q : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_transmitter_tx_code_a : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_transmitter_k_r_prbs_i_prbs : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal U0_xaui_inst_transmitter_a_due : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg : STD_LOGIC_VECTOR ( 31 downto 7 ); 
  signal U0_xaui_inst_transmitter_txc_pipe : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xaui_inst_transmitter_txd_pipe : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal U0_xaui_inst_transmitter_align_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xaui_inst_transmitter_align_prbs : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_xaui_inst_transmitter_state_machine_state_1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_xaui_inst_transmitter_state_machine_state_0 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_xaui_inst_receiver_code_error : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xaui_inst_receiver_sync_ok_int : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U0_xaui_inst_receiver_recoder_lane_terminate : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_mux_97_OUT : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal U0_xaui_inst_receiver_recoder_rxd_half_pipe : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U0_xaui_inst_receiver_recoder_lane_term_pipe : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xaui_inst_receiver_recoder_rxc_half_pipe : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xaui_inst_receiver_recoder_code_error_pipe : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xaui_inst_receiver_recoder_rxc_pipe : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xaui_inst_receiver_recoder_rxd_pipe : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_data_rd : STD_LOGIC_VECTOR ( 13 downto 13 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xaui_inst_G_HAS_MDIO_management_1_n0185_0 : STD_LOGIC_VECTOR ( 15 downto 15 ); 
begin
  U0_xaui_inst_G_HAS_MDIO_management_1_mdc_in <= mdc;
  xgmii_rxd(63) <= U0_xaui_inst_receiver_recoder_rxd_out(63);
  xgmii_rxd(62) <= U0_xaui_inst_receiver_recoder_rxd_out(62);
  xgmii_rxd(61) <= U0_xaui_inst_receiver_recoder_rxd_out(61);
  xgmii_rxd(60) <= U0_xaui_inst_receiver_recoder_rxd_out(60);
  xgmii_rxd(59) <= U0_xaui_inst_receiver_recoder_rxd_out(59);
  xgmii_rxd(58) <= U0_xaui_inst_receiver_recoder_rxd_out(58);
  xgmii_rxd(57) <= U0_xaui_inst_receiver_recoder_rxd_out(57);
  xgmii_rxd(56) <= U0_xaui_inst_receiver_recoder_rxd_out(56);
  xgmii_rxd(55) <= U0_xaui_inst_receiver_recoder_rxd_out(55);
  xgmii_rxd(54) <= U0_xaui_inst_receiver_recoder_rxd_out(54);
  xgmii_rxd(53) <= U0_xaui_inst_receiver_recoder_rxd_out(53);
  xgmii_rxd(52) <= U0_xaui_inst_receiver_recoder_rxd_out(52);
  xgmii_rxd(51) <= U0_xaui_inst_receiver_recoder_rxd_out(51);
  xgmii_rxd(50) <= U0_xaui_inst_receiver_recoder_rxd_out(50);
  xgmii_rxd(49) <= U0_xaui_inst_receiver_recoder_rxd_out(49);
  xgmii_rxd(48) <= U0_xaui_inst_receiver_recoder_rxd_out(48);
  xgmii_rxd(47) <= U0_xaui_inst_receiver_recoder_rxd_out(47);
  xgmii_rxd(46) <= U0_xaui_inst_receiver_recoder_rxd_out(46);
  xgmii_rxd(45) <= U0_xaui_inst_receiver_recoder_rxd_out(45);
  xgmii_rxd(44) <= U0_xaui_inst_receiver_recoder_rxd_out(44);
  xgmii_rxd(43) <= U0_xaui_inst_receiver_recoder_rxd_out(43);
  xgmii_rxd(42) <= U0_xaui_inst_receiver_recoder_rxd_out(42);
  xgmii_rxd(41) <= U0_xaui_inst_receiver_recoder_rxd_out(41);
  xgmii_rxd(40) <= U0_xaui_inst_receiver_recoder_rxd_out(40);
  xgmii_rxd(39) <= U0_xaui_inst_receiver_recoder_rxd_out(39);
  xgmii_rxd(38) <= U0_xaui_inst_receiver_recoder_rxd_out(38);
  xgmii_rxd(37) <= U0_xaui_inst_receiver_recoder_rxd_out(37);
  xgmii_rxd(36) <= U0_xaui_inst_receiver_recoder_rxd_out(36);
  xgmii_rxd(35) <= U0_xaui_inst_receiver_recoder_rxd_out(35);
  xgmii_rxd(34) <= U0_xaui_inst_receiver_recoder_rxd_out(34);
  xgmii_rxd(33) <= U0_xaui_inst_receiver_recoder_rxd_out(33);
  xgmii_rxd(32) <= U0_xaui_inst_receiver_recoder_rxd_out(32);
  xgmii_rxd(31) <= U0_xaui_inst_receiver_recoder_rxd_out(31);
  xgmii_rxd(30) <= U0_xaui_inst_receiver_recoder_rxd_out(30);
  xgmii_rxd(29) <= U0_xaui_inst_receiver_recoder_rxd_out(29);
  xgmii_rxd(28) <= U0_xaui_inst_receiver_recoder_rxd_out(28);
  xgmii_rxd(27) <= U0_xaui_inst_receiver_recoder_rxd_out(27);
  xgmii_rxd(26) <= U0_xaui_inst_receiver_recoder_rxd_out(26);
  xgmii_rxd(25) <= U0_xaui_inst_receiver_recoder_rxd_out(25);
  xgmii_rxd(24) <= U0_xaui_inst_receiver_recoder_rxd_out(24);
  xgmii_rxd(23) <= U0_xaui_inst_receiver_recoder_rxd_out(23);
  xgmii_rxd(22) <= U0_xaui_inst_receiver_recoder_rxd_out(22);
  xgmii_rxd(21) <= U0_xaui_inst_receiver_recoder_rxd_out(21);
  xgmii_rxd(20) <= U0_xaui_inst_receiver_recoder_rxd_out(20);
  xgmii_rxd(19) <= U0_xaui_inst_receiver_recoder_rxd_out(19);
  xgmii_rxd(18) <= U0_xaui_inst_receiver_recoder_rxd_out(18);
  xgmii_rxd(17) <= U0_xaui_inst_receiver_recoder_rxd_out(17);
  xgmii_rxd(16) <= U0_xaui_inst_receiver_recoder_rxd_out(16);
  xgmii_rxd(15) <= U0_xaui_inst_receiver_recoder_rxd_out(15);
  xgmii_rxd(14) <= U0_xaui_inst_receiver_recoder_rxd_out(14);
  xgmii_rxd(13) <= U0_xaui_inst_receiver_recoder_rxd_out(13);
  xgmii_rxd(12) <= U0_xaui_inst_receiver_recoder_rxd_out(12);
  xgmii_rxd(11) <= U0_xaui_inst_receiver_recoder_rxd_out(11);
  xgmii_rxd(10) <= U0_xaui_inst_receiver_recoder_rxd_out(10);
  xgmii_rxd(9) <= U0_xaui_inst_receiver_recoder_rxd_out(9);
  xgmii_rxd(8) <= U0_xaui_inst_receiver_recoder_rxd_out(8);
  xgmii_rxd(7) <= U0_xaui_inst_receiver_recoder_rxd_out(7);
  xgmii_rxd(6) <= U0_xaui_inst_receiver_recoder_rxd_out(6);
  xgmii_rxd(5) <= U0_xaui_inst_receiver_recoder_rxd_out(5);
  xgmii_rxd(4) <= U0_xaui_inst_receiver_recoder_rxd_out(4);
  xgmii_rxd(3) <= U0_xaui_inst_receiver_recoder_rxd_out(3);
  xgmii_rxd(2) <= U0_xaui_inst_receiver_recoder_rxd_out(2);
  xgmii_rxd(1) <= U0_xaui_inst_receiver_recoder_rxd_out(1);
  xgmii_rxd(0) <= U0_xaui_inst_receiver_recoder_rxd_out(0);
  xgmii_rxc(7) <= U0_xaui_inst_receiver_recoder_rxc_out(7);
  xgmii_rxc(6) <= U0_xaui_inst_receiver_recoder_rxc_out(6);
  xgmii_rxc(5) <= U0_xaui_inst_receiver_recoder_rxc_out(5);
  xgmii_rxc(4) <= U0_xaui_inst_receiver_recoder_rxc_out(4);
  xgmii_rxc(3) <= U0_xaui_inst_receiver_recoder_rxc_out(3);
  xgmii_rxc(2) <= U0_xaui_inst_receiver_recoder_rxc_out(2);
  xgmii_rxc(1) <= U0_xaui_inst_receiver_recoder_rxc_out(1);
  xgmii_rxc(0) <= U0_xaui_inst_receiver_recoder_rxc_out(0);
  mgt_txdata(63) <= U0_xaui_inst_transmitter_recoder_txd_out(63);
  mgt_txdata(62) <= U0_xaui_inst_transmitter_recoder_txd_out(62);
  mgt_txdata(61) <= U0_xaui_inst_transmitter_recoder_txd_out(61);
  mgt_txdata(60) <= U0_xaui_inst_transmitter_recoder_txd_out(60);
  mgt_txdata(59) <= U0_xaui_inst_transmitter_recoder_txd_out(59);
  mgt_txdata(58) <= U0_xaui_inst_transmitter_recoder_txd_out(58);
  mgt_txdata(57) <= U0_xaui_inst_transmitter_recoder_txd_out(57);
  mgt_txdata(56) <= U0_xaui_inst_transmitter_recoder_txd_out(56);
  mgt_txdata(55) <= U0_xaui_inst_transmitter_recoder_txd_out(31);
  mgt_txdata(54) <= U0_xaui_inst_transmitter_recoder_txd_out(30);
  mgt_txdata(53) <= U0_xaui_inst_transmitter_recoder_txd_out(29);
  mgt_txdata(52) <= U0_xaui_inst_transmitter_recoder_txd_out(28);
  mgt_txdata(51) <= U0_xaui_inst_transmitter_recoder_txd_out(27);
  mgt_txdata(50) <= U0_xaui_inst_transmitter_recoder_txd_out(26);
  mgt_txdata(49) <= U0_xaui_inst_transmitter_recoder_txd_out(25);
  mgt_txdata(48) <= U0_xaui_inst_transmitter_recoder_txd_out(24);
  mgt_txdata(47) <= U0_xaui_inst_transmitter_recoder_txd_out(55);
  mgt_txdata(46) <= U0_xaui_inst_transmitter_recoder_txd_out(54);
  mgt_txdata(45) <= U0_xaui_inst_transmitter_recoder_txd_out(53);
  mgt_txdata(44) <= U0_xaui_inst_transmitter_recoder_txd_out(52);
  mgt_txdata(43) <= U0_xaui_inst_transmitter_recoder_txd_out(51);
  mgt_txdata(42) <= U0_xaui_inst_transmitter_recoder_txd_out(50);
  mgt_txdata(41) <= U0_xaui_inst_transmitter_recoder_txd_out(49);
  mgt_txdata(40) <= U0_xaui_inst_transmitter_recoder_txd_out(48);
  mgt_txdata(39) <= U0_xaui_inst_transmitter_recoder_txd_out(23);
  mgt_txdata(38) <= U0_xaui_inst_transmitter_recoder_txd_out(22);
  mgt_txdata(37) <= U0_xaui_inst_transmitter_recoder_txd_out(21);
  mgt_txdata(36) <= U0_xaui_inst_transmitter_recoder_txd_out(20);
  mgt_txdata(35) <= U0_xaui_inst_transmitter_recoder_txd_out(19);
  mgt_txdata(34) <= U0_xaui_inst_transmitter_recoder_txd_out(18);
  mgt_txdata(33) <= U0_xaui_inst_transmitter_recoder_txd_out(17);
  mgt_txdata(32) <= U0_xaui_inst_transmitter_recoder_txd_out(16);
  mgt_txdata(31) <= U0_xaui_inst_transmitter_recoder_txd_out(47);
  mgt_txdata(30) <= U0_xaui_inst_transmitter_recoder_txd_out(46);
  mgt_txdata(29) <= U0_xaui_inst_transmitter_recoder_txd_out(45);
  mgt_txdata(28) <= U0_xaui_inst_transmitter_recoder_txd_out(44);
  mgt_txdata(27) <= U0_xaui_inst_transmitter_recoder_txd_out(43);
  mgt_txdata(26) <= U0_xaui_inst_transmitter_recoder_txd_out(42);
  mgt_txdata(25) <= U0_xaui_inst_transmitter_recoder_txd_out(41);
  mgt_txdata(24) <= U0_xaui_inst_transmitter_recoder_txd_out(40);
  mgt_txdata(23) <= U0_xaui_inst_transmitter_recoder_txd_out(15);
  mgt_txdata(22) <= U0_xaui_inst_transmitter_recoder_txd_out(14);
  mgt_txdata(21) <= U0_xaui_inst_transmitter_recoder_txd_out(13);
  mgt_txdata(20) <= U0_xaui_inst_transmitter_recoder_txd_out(12);
  mgt_txdata(19) <= U0_xaui_inst_transmitter_recoder_txd_out(11);
  mgt_txdata(18) <= U0_xaui_inst_transmitter_recoder_txd_out(10);
  mgt_txdata(17) <= U0_xaui_inst_transmitter_recoder_txd_out(9);
  mgt_txdata(16) <= U0_xaui_inst_transmitter_recoder_txd_out(8);
  mgt_txdata(15) <= U0_xaui_inst_transmitter_recoder_txd_out(39);
  mgt_txdata(14) <= U0_xaui_inst_transmitter_recoder_txd_out(38);
  mgt_txdata(13) <= U0_xaui_inst_transmitter_recoder_txd_out(37);
  mgt_txdata(12) <= U0_xaui_inst_transmitter_recoder_txd_out(36);
  mgt_txdata(11) <= U0_xaui_inst_transmitter_recoder_txd_out(35);
  mgt_txdata(10) <= U0_xaui_inst_transmitter_recoder_txd_out(34);
  mgt_txdata(9) <= U0_xaui_inst_transmitter_recoder_txd_out(33);
  mgt_txdata(8) <= U0_xaui_inst_transmitter_recoder_txd_out(32);
  mgt_txdata(7) <= U0_xaui_inst_transmitter_recoder_txd_out(7);
  mgt_txdata(6) <= U0_xaui_inst_transmitter_recoder_txd_out(6);
  mgt_txdata(5) <= U0_xaui_inst_transmitter_recoder_txd_out(5);
  mgt_txdata(4) <= U0_xaui_inst_transmitter_recoder_txd_out(4);
  mgt_txdata(3) <= U0_xaui_inst_transmitter_recoder_txd_out(3);
  mgt_txdata(2) <= U0_xaui_inst_transmitter_recoder_txd_out(2);
  mgt_txdata(1) <= U0_xaui_inst_transmitter_recoder_txd_out(1);
  mgt_txdata(0) <= U0_xaui_inst_transmitter_recoder_txd_out(0);
  mgt_txcharisk(7) <= U0_xaui_inst_transmitter_recoder_txc_out(7);
  mgt_txcharisk(6) <= U0_xaui_inst_transmitter_recoder_txc_out(3);
  mgt_txcharisk(5) <= U0_xaui_inst_transmitter_recoder_txc_out(6);
  mgt_txcharisk(4) <= U0_xaui_inst_transmitter_recoder_txc_out(2);
  mgt_txcharisk(3) <= U0_xaui_inst_transmitter_recoder_txc_out(5);
  mgt_txcharisk(2) <= U0_xaui_inst_transmitter_recoder_txc_out(1);
  mgt_txcharisk(1) <= U0_xaui_inst_transmitter_recoder_txc_out(4);
  mgt_txcharisk(0) <= U0_xaui_inst_transmitter_recoder_txc_out(0);
  mgt_enable_align(3) <= U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_enable_align_331;
  mgt_enable_align(2) <= U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_enable_align_332;
  mgt_enable_align(1) <= U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_enable_align_333;
  mgt_enable_align(0) <= U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_enable_align_334;
  sync_status(3) <= NlwRenamedSig_OI_U0_xaui_inst_sync(3);
  sync_status(2) <= NlwRenamedSig_OI_U0_xaui_inst_sync(2);
  sync_status(1) <= NlwRenamedSig_OI_U0_xaui_inst_sync(1);
  sync_status(0) <= NlwRenamedSig_OI_U0_xaui_inst_sync(0);
  mgt_enchansync <= U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_339;
  mgt_loopback <= NlwRenamedSig_OI_U0_mgt_loopback_keep;
  mgt_powerdown <= NlwRenamedSig_OI_U0_mgt_powerdown_keep;
  soft_reset <= NlwRenamedSig_OI_U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg;
  align_status <= NlwRenamedSig_OI_U0_xaui_inst_align_status_int;
  mdio_out <= U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_out_344;
  mdio_tri <= U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_tri_345;
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  U0_xaui_inst_p_clear_aligned_edge_last_value : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_clear_aligned_362,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_p_clear_aligned_edge_last_value_355
    );
  U0_xaui_inst_p_clear_local_fault_edge_last_value : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_clear_local_fault_363,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_p_clear_local_fault_edge_last_value_357
    );
  U0_xaui_inst_signal_detect_int_3 : FDS
    port map (
      C => usrclk,
      D => signal_detect(3),
      S => U0_xaui_inst_type_sel_reg(1),
      Q => U0_xaui_inst_signal_detect_int(3)
    );
  U0_xaui_inst_signal_detect_int_2 : FDS
    port map (
      C => usrclk,
      D => signal_detect(2),
      S => U0_xaui_inst_type_sel_reg(1),
      Q => U0_xaui_inst_signal_detect_int(2)
    );
  U0_xaui_inst_signal_detect_int_1 : FDS
    port map (
      C => usrclk,
      D => signal_detect(1),
      S => U0_xaui_inst_type_sel_reg(1),
      Q => U0_xaui_inst_signal_detect_int(1)
    );
  U0_xaui_inst_signal_detect_int_0 : FDS
    port map (
      C => usrclk,
      D => signal_detect(0),
      S => U0_xaui_inst_type_sel_reg(1),
      Q => U0_xaui_inst_signal_detect_int(0)
    );
  U0_xaui_inst_type_sel_reg_1 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_type_sel_reg_done_inv,
      D => type_sel(1),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_type_sel_reg(1)
    );
  U0_xaui_inst_type_sel_reg_0 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_type_sel_reg_done_inv,
      D => type_sel(0),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_type_sel_reg(0)
    );
  U0_xaui_inst_usrclk_reset_pipe : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_reset_int,
      Q => U0_xaui_inst_usrclk_reset_pipe_359
    );
  U0_xaui_inst_transmitter_tx_is_idle_1 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_tx_is_idle_comb(1),
      Q => U0_xaui_inst_transmitter_tx_is_idle(1)
    );
  U0_xaui_inst_transmitter_tx_is_idle_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_tx_is_idle_comb(0),
      Q => U0_xaui_inst_transmitter_tx_is_idle(0)
    );
  U0_xaui_inst_transmitter_tx_is_q_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_tx_is_q_comb(1),
      Q => U0_xaui_inst_transmitter_tx_is_q(1)
    );
  U0_xaui_inst_transmitter_tx_is_q_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_tx_is_q_comb(0),
      Q => U0_xaui_inst_transmitter_tx_is_q(0)
    );
  U0_xaui_inst_transmitter_txc_pipe_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txc(7),
      Q => U0_xaui_inst_transmitter_txc_pipe(7)
    );
  U0_xaui_inst_transmitter_txc_pipe_6 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txc(6),
      Q => U0_xaui_inst_transmitter_txc_pipe(6)
    );
  U0_xaui_inst_transmitter_txc_pipe_5 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txc(5),
      Q => U0_xaui_inst_transmitter_txc_pipe(5)
    );
  U0_xaui_inst_transmitter_txc_pipe_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txc(4),
      Q => U0_xaui_inst_transmitter_txc_pipe(4)
    );
  U0_xaui_inst_transmitter_txc_pipe_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txc(3),
      Q => U0_xaui_inst_transmitter_txc_pipe(3)
    );
  U0_xaui_inst_transmitter_txc_pipe_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txc(2),
      Q => U0_xaui_inst_transmitter_txc_pipe(2)
    );
  U0_xaui_inst_transmitter_txc_pipe_1 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txc(1),
      Q => U0_xaui_inst_transmitter_txc_pipe(1)
    );
  U0_xaui_inst_transmitter_txc_pipe_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txc(0),
      Q => U0_xaui_inst_transmitter_txc_pipe(0)
    );
  U0_xaui_inst_transmitter_txd_pipe_63 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(63),
      Q => U0_xaui_inst_transmitter_txd_pipe(63)
    );
  U0_xaui_inst_transmitter_txd_pipe_62 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(62),
      Q => U0_xaui_inst_transmitter_txd_pipe(62)
    );
  U0_xaui_inst_transmitter_txd_pipe_61 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(61),
      Q => U0_xaui_inst_transmitter_txd_pipe(61)
    );
  U0_xaui_inst_transmitter_txd_pipe_60 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(60),
      Q => U0_xaui_inst_transmitter_txd_pipe(60)
    );
  U0_xaui_inst_transmitter_txd_pipe_59 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(59),
      Q => U0_xaui_inst_transmitter_txd_pipe(59)
    );
  U0_xaui_inst_transmitter_txd_pipe_58 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(58),
      Q => U0_xaui_inst_transmitter_txd_pipe(58)
    );
  U0_xaui_inst_transmitter_txd_pipe_57 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(57),
      Q => U0_xaui_inst_transmitter_txd_pipe(57)
    );
  U0_xaui_inst_transmitter_txd_pipe_56 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(56),
      Q => U0_xaui_inst_transmitter_txd_pipe(56)
    );
  U0_xaui_inst_transmitter_txd_pipe_55 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(55),
      Q => U0_xaui_inst_transmitter_txd_pipe(55)
    );
  U0_xaui_inst_transmitter_txd_pipe_54 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(54),
      Q => U0_xaui_inst_transmitter_txd_pipe(54)
    );
  U0_xaui_inst_transmitter_txd_pipe_53 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(53),
      Q => U0_xaui_inst_transmitter_txd_pipe(53)
    );
  U0_xaui_inst_transmitter_txd_pipe_52 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(52),
      Q => U0_xaui_inst_transmitter_txd_pipe(52)
    );
  U0_xaui_inst_transmitter_txd_pipe_51 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(51),
      Q => U0_xaui_inst_transmitter_txd_pipe(51)
    );
  U0_xaui_inst_transmitter_txd_pipe_50 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(50),
      Q => U0_xaui_inst_transmitter_txd_pipe(50)
    );
  U0_xaui_inst_transmitter_txd_pipe_49 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(49),
      Q => U0_xaui_inst_transmitter_txd_pipe(49)
    );
  U0_xaui_inst_transmitter_txd_pipe_48 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(48),
      Q => U0_xaui_inst_transmitter_txd_pipe(48)
    );
  U0_xaui_inst_transmitter_txd_pipe_47 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(47),
      Q => U0_xaui_inst_transmitter_txd_pipe(47)
    );
  U0_xaui_inst_transmitter_txd_pipe_46 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(46),
      Q => U0_xaui_inst_transmitter_txd_pipe(46)
    );
  U0_xaui_inst_transmitter_txd_pipe_45 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(45),
      Q => U0_xaui_inst_transmitter_txd_pipe(45)
    );
  U0_xaui_inst_transmitter_txd_pipe_44 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(44),
      Q => U0_xaui_inst_transmitter_txd_pipe(44)
    );
  U0_xaui_inst_transmitter_txd_pipe_43 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(43),
      Q => U0_xaui_inst_transmitter_txd_pipe(43)
    );
  U0_xaui_inst_transmitter_txd_pipe_42 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(42),
      Q => U0_xaui_inst_transmitter_txd_pipe(42)
    );
  U0_xaui_inst_transmitter_txd_pipe_41 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(41),
      Q => U0_xaui_inst_transmitter_txd_pipe(41)
    );
  U0_xaui_inst_transmitter_txd_pipe_40 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(40),
      Q => U0_xaui_inst_transmitter_txd_pipe(40)
    );
  U0_xaui_inst_transmitter_txd_pipe_39 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(39),
      Q => U0_xaui_inst_transmitter_txd_pipe(39)
    );
  U0_xaui_inst_transmitter_txd_pipe_38 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(38),
      Q => U0_xaui_inst_transmitter_txd_pipe(38)
    );
  U0_xaui_inst_transmitter_txd_pipe_37 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(37),
      Q => U0_xaui_inst_transmitter_txd_pipe(37)
    );
  U0_xaui_inst_transmitter_txd_pipe_36 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(36),
      Q => U0_xaui_inst_transmitter_txd_pipe(36)
    );
  U0_xaui_inst_transmitter_txd_pipe_35 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(35),
      Q => U0_xaui_inst_transmitter_txd_pipe(35)
    );
  U0_xaui_inst_transmitter_txd_pipe_34 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(34),
      Q => U0_xaui_inst_transmitter_txd_pipe(34)
    );
  U0_xaui_inst_transmitter_txd_pipe_33 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(33),
      Q => U0_xaui_inst_transmitter_txd_pipe(33)
    );
  U0_xaui_inst_transmitter_txd_pipe_32 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(32),
      Q => U0_xaui_inst_transmitter_txd_pipe(32)
    );
  U0_xaui_inst_transmitter_txd_pipe_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(31),
      Q => U0_xaui_inst_transmitter_txd_pipe(31)
    );
  U0_xaui_inst_transmitter_txd_pipe_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(30),
      Q => U0_xaui_inst_transmitter_txd_pipe(30)
    );
  U0_xaui_inst_transmitter_txd_pipe_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(29),
      Q => U0_xaui_inst_transmitter_txd_pipe(29)
    );
  U0_xaui_inst_transmitter_txd_pipe_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(28),
      Q => U0_xaui_inst_transmitter_txd_pipe(28)
    );
  U0_xaui_inst_transmitter_txd_pipe_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(27),
      Q => U0_xaui_inst_transmitter_txd_pipe(27)
    );
  U0_xaui_inst_transmitter_txd_pipe_26 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(26),
      Q => U0_xaui_inst_transmitter_txd_pipe(26)
    );
  U0_xaui_inst_transmitter_txd_pipe_25 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(25),
      Q => U0_xaui_inst_transmitter_txd_pipe(25)
    );
  U0_xaui_inst_transmitter_txd_pipe_24 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(24),
      Q => U0_xaui_inst_transmitter_txd_pipe(24)
    );
  U0_xaui_inst_transmitter_txd_pipe_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(23),
      Q => U0_xaui_inst_transmitter_txd_pipe(23)
    );
  U0_xaui_inst_transmitter_txd_pipe_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(22),
      Q => U0_xaui_inst_transmitter_txd_pipe(22)
    );
  U0_xaui_inst_transmitter_txd_pipe_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(21),
      Q => U0_xaui_inst_transmitter_txd_pipe(21)
    );
  U0_xaui_inst_transmitter_txd_pipe_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(20),
      Q => U0_xaui_inst_transmitter_txd_pipe(20)
    );
  U0_xaui_inst_transmitter_txd_pipe_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(19),
      Q => U0_xaui_inst_transmitter_txd_pipe(19)
    );
  U0_xaui_inst_transmitter_txd_pipe_18 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(18),
      Q => U0_xaui_inst_transmitter_txd_pipe(18)
    );
  U0_xaui_inst_transmitter_txd_pipe_17 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(17),
      Q => U0_xaui_inst_transmitter_txd_pipe(17)
    );
  U0_xaui_inst_transmitter_txd_pipe_16 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(16),
      Q => U0_xaui_inst_transmitter_txd_pipe(16)
    );
  U0_xaui_inst_transmitter_txd_pipe_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(15),
      Q => U0_xaui_inst_transmitter_txd_pipe(15)
    );
  U0_xaui_inst_transmitter_txd_pipe_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(14),
      Q => U0_xaui_inst_transmitter_txd_pipe(14)
    );
  U0_xaui_inst_transmitter_txd_pipe_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(13),
      Q => U0_xaui_inst_transmitter_txd_pipe(13)
    );
  U0_xaui_inst_transmitter_txd_pipe_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(12),
      Q => U0_xaui_inst_transmitter_txd_pipe(12)
    );
  U0_xaui_inst_transmitter_txd_pipe_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(11),
      Q => U0_xaui_inst_transmitter_txd_pipe(11)
    );
  U0_xaui_inst_transmitter_txd_pipe_10 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(10),
      Q => U0_xaui_inst_transmitter_txd_pipe(10)
    );
  U0_xaui_inst_transmitter_txd_pipe_9 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(9),
      Q => U0_xaui_inst_transmitter_txd_pipe(9)
    );
  U0_xaui_inst_transmitter_txd_pipe_8 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(8),
      Q => U0_xaui_inst_transmitter_txd_pipe(8)
    );
  U0_xaui_inst_transmitter_txd_pipe_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(7),
      Q => U0_xaui_inst_transmitter_txd_pipe(7)
    );
  U0_xaui_inst_transmitter_txd_pipe_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(6),
      Q => U0_xaui_inst_transmitter_txd_pipe(6)
    );
  U0_xaui_inst_transmitter_txd_pipe_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(5),
      Q => U0_xaui_inst_transmitter_txd_pipe(5)
    );
  U0_xaui_inst_transmitter_txd_pipe_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(4),
      Q => U0_xaui_inst_transmitter_txd_pipe(4)
    );
  U0_xaui_inst_transmitter_txd_pipe_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(3),
      Q => U0_xaui_inst_transmitter_txd_pipe(3)
    );
  U0_xaui_inst_transmitter_txd_pipe_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(2),
      Q => U0_xaui_inst_transmitter_txd_pipe(2)
    );
  U0_xaui_inst_transmitter_txd_pipe_1 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(1),
      Q => U0_xaui_inst_transmitter_txd_pipe(1)
    );
  U0_xaui_inst_transmitter_txd_pipe_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => xgmii_txd(0),
      Q => U0_xaui_inst_transmitter_txd_pipe(0)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_63 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_63_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(63)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_62 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_62_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(62)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_61 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_61_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(61)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_60 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_60_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(60)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_59 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_59_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(59)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_58 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_58_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(58)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_57 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_57_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(57)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_56 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_56_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(56)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_55 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_55_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(55)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_54 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_54_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(54)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_53 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_53_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(53)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_52 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_52_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(52)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_51 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_51_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(51)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_50 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_50_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(50)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_49 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_49_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(49)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_48 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_48_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(48)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_47 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_47_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(47)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_46 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_46_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(46)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_45 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_45_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(45)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_44 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_44_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(44)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_43 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_43_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(43)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_42 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_42_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(42)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_41 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_41_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(41)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_40 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_40_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(40)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_39 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_39_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(39)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_38 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_38_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(38)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_37 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_37_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(37)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_36 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_36_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(36)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_35 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_35_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(35)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_34 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_34_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(34)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_33 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_33_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(33)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_32 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_32_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(32)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_31 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_31_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(31)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_30 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_30_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(30)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_29 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_29_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(29)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_28 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_28_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(28)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_27 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_27_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(27)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_26 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_26_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(26)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_25 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_25_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(25)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_24 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_24_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(24)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_23 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_23_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(23)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_22 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_22_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(22)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_21 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_21_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(21)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_20 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_20_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(20)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_19 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_19_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(19)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_18 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_18_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(18)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_17 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_17_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(17)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_16 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_16_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(16)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_15 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_15_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(15)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_14 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_14_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(14)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_13 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_13_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(13)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_12 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_12_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(12)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_11 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_11_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(11)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_10 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_10_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(10)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_9 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_9_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(9)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_8 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_8_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(8)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_7 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_7_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(7)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_6 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_6_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(6)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_5 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_5_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(5)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_4 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_4_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(4)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_3 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_3_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(3)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_2 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_2_Q,
      S => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(2)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_1 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_1_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(1)
    );
  U0_xaui_inst_transmitter_recoder_txd_out_0 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_0_Q,
      R => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      Q => U0_xaui_inst_transmitter_recoder_txd_out(0)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_31_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(31)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_30_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(30)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_29_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(29)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_28_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(28)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_27_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(27)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_26_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(26)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_25_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(25)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_24_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(24)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_23_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(23)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_22_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(22)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_21_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(21)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_20_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(20)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_19_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(19)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_18_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(18)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_17_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(17)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_16_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(16)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_15_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(15)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_14_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(14)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_13_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(13)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_12_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(12)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_11_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(11)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_10_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(10)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_9_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(9)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_8_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(8)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_7_Q,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(7)
    );
  U0_xaui_inst_transmitter_align_count_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0051_inv,
      D => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_4_Q,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_count(4)
    );
  U0_xaui_inst_transmitter_align_count_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0051_inv,
      D => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_3_Q,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_count(3)
    );
  U0_xaui_inst_transmitter_align_count_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0051_inv,
      D => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_2_Q,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_count(2)
    );
  U0_xaui_inst_transmitter_align_count_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0051_inv,
      D => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_1_Q,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_count(1)
    );
  U0_xaui_inst_transmitter_align_count_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0051_inv,
      D => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_0_Q,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_count(0)
    );
  U0_xaui_inst_transmitter_align_prbs_7 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0020_inv,
      D => U0_xaui_inst_transmitter_align_prbs(6),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_prbs(7)
    );
  U0_xaui_inst_transmitter_align_prbs_6 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0020_inv,
      D => U0_xaui_inst_transmitter_align_prbs(5),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_prbs(6)
    );
  U0_xaui_inst_transmitter_align_prbs_5 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0020_inv,
      D => U0_xaui_inst_transmitter_align_prbs(4),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_prbs(5)
    );
  U0_xaui_inst_transmitter_align_prbs_4 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0020_inv,
      D => U0_xaui_inst_transmitter_align_prbs(3),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_prbs(4)
    );
  U0_xaui_inst_transmitter_align_prbs_3 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0020_inv,
      D => U0_xaui_inst_transmitter_align_prbs(2),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_prbs(3)
    );
  U0_xaui_inst_transmitter_align_prbs_2 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0020_inv,
      D => U0_xaui_inst_transmitter_align_prbs(1),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_prbs(2)
    );
  U0_xaui_inst_transmitter_align_prbs_1 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_transmitter_align_n0020_inv,
      D => U0_xaui_inst_transmitter_align_prbs_6_prbs_7_XOR_49_o,
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_prbs(1)
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_prbs_8 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(6),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(8)
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_prbs_7 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(5),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(7)
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_prbs_6 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(4),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(6)
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_prbs_5 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(3),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(5)
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_prbs_4 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(2),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(4)
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_prbs_3 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(1),
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(3)
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_prbs_2 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_k_r_prbs_i_prbs_6_prbs_7_XOR_66_o,
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(2)
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_prbs_1 : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_k_r_prbs_i_prbs_5_prbs_6_XOR_65_o,
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(1)
    );
  U0_xaui_inst_transmitter_state_machine_state_0_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(2),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_state_machine_state_0(2)
    );
  U0_xaui_inst_transmitter_state_machine_state_0_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(1),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_state_machine_state_0(1)
    );
  U0_xaui_inst_transmitter_state_machine_state_0_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(0),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_state_machine_state_0(0)
    );
  U0_xaui_inst_transmitter_state_machine_state_1_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_2_Q,
      R => U0_xaui_inst_transmitter_state_machine_is_idle_1_is_q_1_AND_15_o_0,
      Q => U0_xaui_inst_transmitter_state_machine_state_1(2)
    );
  U0_xaui_inst_transmitter_state_machine_state_1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_1_Q,
      R => U0_xaui_inst_transmitter_state_machine_is_idle_1_is_q_1_AND_15_o_0,
      Q => U0_xaui_inst_transmitter_state_machine_state_1(1)
    );
  U0_xaui_inst_transmitter_state_machine_state_1_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_0_1,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_state_machine_state_1(0)
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txc_out : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_txc_pipe(7),
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txc_out_382
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txc_out : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_txc_pipe(6),
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txc_out_391
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txc_out : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_txc_pipe(5),
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txc_out_400
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txc_out : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_txc_pipe(4),
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txc_out_409
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txc_out : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_txc_pipe(3),
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txc_out_418
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txc_out : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_txc_pipe(2),
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txc_out_427
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txc_out : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_txc_pipe(1),
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txc_out_436
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txc_out : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_txc_pipe(0),
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txc_out_445
    );
  U0_xaui_inst_receiver_sync_ok_3 : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_sync_ok_int(3),
      Q => NlwRenamedSig_OI_U0_xaui_inst_sync(3)
    );
  U0_xaui_inst_receiver_sync_ok_2 : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_sync_ok_int(2),
      Q => NlwRenamedSig_OI_U0_xaui_inst_sync(2)
    );
  U0_xaui_inst_receiver_sync_ok_1 : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_sync_ok_int(1),
      Q => NlwRenamedSig_OI_U0_xaui_inst_sync(1)
    );
  U0_xaui_inst_receiver_sync_ok_0 : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_sync_ok_int(0),
      Q => NlwRenamedSig_OI_U0_xaui_inst_sync(0)
    );
  U0_xaui_inst_receiver_sync_status : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_sync_status_int,
      Q => U0_xaui_inst_receiver_sync_status_726
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_align_status : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(2),
      Q => NlwRenamedSig_OI_U0_xaui_inst_align_status_int
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2_PWR_19_o_wide_mux_42_OUT_2_Q,
      R => U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_i_norst_inv_0,
      Q => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(2)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2_PWR_19_o_wide_mux_42_OUT_1_Q,
      R => U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_i_norst_inv_0,
      Q => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(1)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2_PWR_19_o_wide_mux_42_OUT_0_Q,
      R => U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_i_norst_inv_0,
      Q => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(0)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error_sliced : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_deskew_state_Mram_got_a_3_GND_18_o_Mux_9_o,
      Q => U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error_sliced_756
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_deskew_state_Mram_got_a_7_GND_18_o_Mux_10_o,
      Q => U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error(1)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_4_got_a_7_AND_50_o,
      Q => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align(1)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_0_got_a_3_AND_47_o,
      Q => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align(0)
    );
  U0_xaui_inst_receiver_recoder_rxc_out_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_pipe_3_PWR_20_o_MUX_341_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxc_out(7)
    );
  U0_xaui_inst_receiver_recoder_rxc_out_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_pipe_2_PWR_20_o_MUX_323_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxc_out(6)
    );
  U0_xaui_inst_receiver_recoder_rxc_out_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_pipe_1_PWR_20_o_MUX_305_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxc_out(5)
    );
  U0_xaui_inst_receiver_recoder_rxc_out_4 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_pipe_0_PWR_20_o_MUX_287_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxc_out(4)
    );
  U0_xaui_inst_receiver_recoder_rxc_out_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_half_pipe_3_PWR_20_o_MUX_269_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxc_out(3)
    );
  U0_xaui_inst_receiver_recoder_rxc_out_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_half_pipe_2_PWR_20_o_MUX_251_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxc_out(2)
    );
  U0_xaui_inst_receiver_recoder_rxc_out_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_half_pipe_1_PWR_20_o_MUX_233_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxc_out(1)
    );
  U0_xaui_inst_receiver_recoder_rxc_out_0 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_half_pipe_0_PWR_20_o_MUX_215_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxc_out(0)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_63 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_31_PWR_20_o_MUX_332_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(63)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_62 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_30_PWR_20_o_MUX_333_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(62)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_61 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_29_PWR_20_o_MUX_334_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(61)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_60 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_28_PWR_20_o_MUX_335_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(60)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_59 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_27_PWR_20_o_MUX_336_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(59)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_58 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_26_PWR_20_o_MUX_337_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(58)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_57 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_25_PWR_20_o_MUX_338_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(57)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_56 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_24_GND_19_o_MUX_339_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(56)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_55 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_23_PWR_20_o_MUX_314_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(55)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_54 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_22_PWR_20_o_MUX_315_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(54)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_53 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_21_PWR_20_o_MUX_316_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(53)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_52 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_20_PWR_20_o_MUX_317_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(52)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_51 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_19_PWR_20_o_MUX_318_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(51)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_50 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_18_PWR_20_o_MUX_319_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(50)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_49 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_17_PWR_20_o_MUX_320_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(49)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_48 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_16_GND_19_o_MUX_321_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(48)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_47 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_15_PWR_20_o_MUX_296_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(47)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_46 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_14_PWR_20_o_MUX_297_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(46)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_45 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_13_PWR_20_o_MUX_298_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(45)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_44 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_12_PWR_20_o_MUX_299_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(44)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_43 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_11_PWR_20_o_MUX_300_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(43)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_42 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_10_PWR_20_o_MUX_301_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(42)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_41 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_9_PWR_20_o_MUX_302_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(41)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_40 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_8_GND_19_o_MUX_303_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(40)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_39 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_7_PWR_20_o_MUX_278_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(39)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_38 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_6_PWR_20_o_MUX_279_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(38)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_37 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_5_PWR_20_o_MUX_280_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(37)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_36 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_4_PWR_20_o_MUX_281_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(36)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_35 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_3_PWR_20_o_MUX_282_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(35)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_34 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_2_PWR_20_o_MUX_283_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(34)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_33 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_1_PWR_20_o_MUX_284_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(33)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_32 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe_0_GND_19_o_MUX_285_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(32)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_31_PWR_20_o_MUX_260_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(31)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_30_PWR_20_o_MUX_261_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(30)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_29_PWR_20_o_MUX_262_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(29)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_28_PWR_20_o_MUX_263_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(28)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_27_PWR_20_o_MUX_264_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(27)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_26_PWR_20_o_MUX_265_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(26)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_25_PWR_20_o_MUX_266_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(25)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_24 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_24_GND_19_o_MUX_267_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(24)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_23_PWR_20_o_MUX_242_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(23)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_22_PWR_20_o_MUX_243_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(22)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_21_PWR_20_o_MUX_244_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(21)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_20_PWR_20_o_MUX_245_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(20)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_19_PWR_20_o_MUX_246_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(19)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_18_PWR_20_o_MUX_247_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(18)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_17_PWR_20_o_MUX_248_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(17)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_16_GND_19_o_MUX_249_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(16)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_15_PWR_20_o_MUX_224_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(15)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_14_PWR_20_o_MUX_225_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(14)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_13_PWR_20_o_MUX_226_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(13)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_12_PWR_20_o_MUX_227_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(12)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_11_PWR_20_o_MUX_228_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(11)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_10_PWR_20_o_MUX_229_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(10)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_9_PWR_20_o_MUX_230_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(9)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_8_GND_19_o_MUX_231_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(8)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_7 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_7_PWR_20_o_MUX_206_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(7)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_6_PWR_20_o_MUX_207_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(6)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_5_PWR_20_o_MUX_208_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(5)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_4 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_4_PWR_20_o_MUX_209_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(4)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_3 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_3_PWR_20_o_MUX_210_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(3)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_2 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_2_PWR_20_o_MUX_211_o,
      S => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(2)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_1_PWR_20_o_MUX_212_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(1)
    );
  U0_xaui_inst_receiver_recoder_rxd_out_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_half_pipe_0_GND_19_o_MUX_213_o,
      R => U0_xaui_inst_align_status_int_inv,
      Q => U0_xaui_inst_receiver_recoder_rxd_out(0)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(63),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(31)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(62),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(30)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(61),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(29)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(60),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(28)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(59),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(27)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(58),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(26)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(57),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(25)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_24 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(56),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(24)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(55),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(23)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(54),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(22)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(53),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(21)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(52),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(20)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(51),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(19)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(50),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(18)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(49),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(17)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(48),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(16)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(47),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(15)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(46),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(14)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(45),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(13)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(44),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(12)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(43),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(11)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(42),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(10)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(41),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(9)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(40),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(8)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(39),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(7)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(38),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(6)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(37),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(5)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(36),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(4)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(35),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(3)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(34),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(2)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(33),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(1)
    );
  U0_xaui_inst_receiver_recoder_rxd_half_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxd_pipe(32),
      Q => U0_xaui_inst_receiver_recoder_rxd_half_pipe(0)
    );
  U0_xaui_inst_receiver_recoder_lane_term_pipe_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_lane_terminate(7),
      Q => U0_xaui_inst_receiver_recoder_lane_term_pipe(3)
    );
  U0_xaui_inst_receiver_recoder_lane_term_pipe_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_lane_terminate(6),
      Q => U0_xaui_inst_receiver_recoder_lane_term_pipe(2)
    );
  U0_xaui_inst_receiver_recoder_lane_term_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_lane_terminate(5),
      Q => U0_xaui_inst_receiver_recoder_lane_term_pipe(1)
    );
  U0_xaui_inst_receiver_recoder_lane_term_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_lane_terminate(4),
      Q => U0_xaui_inst_receiver_recoder_lane_term_pipe(0)
    );
  U0_xaui_inst_receiver_recoder_code_error_delay_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_code_error_pipe(4),
      Q => U0_xaui_inst_receiver_recoder_code_error_delay_0_898
    );
  U0_xaui_inst_receiver_recoder_code_error_delay_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_code_error_pipe(5),
      Q => U0_xaui_inst_receiver_recoder_code_error_delay_1_899
    );
  U0_xaui_inst_receiver_recoder_code_error_delay_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_code_error_pipe(7),
      Q => U0_xaui_inst_receiver_recoder_code_error_delay_3_901
    );
  U0_xaui_inst_receiver_recoder_rxc_half_pipe_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_pipe(7),
      Q => U0_xaui_inst_receiver_recoder_rxc_half_pipe(3)
    );
  U0_xaui_inst_receiver_recoder_rxc_half_pipe_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_pipe(6),
      Q => U0_xaui_inst_receiver_recoder_rxc_half_pipe(2)
    );
  U0_xaui_inst_receiver_recoder_rxc_half_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_pipe(5),
      Q => U0_xaui_inst_receiver_recoder_rxc_half_pipe(1)
    );
  U0_xaui_inst_receiver_recoder_rxc_half_pipe_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_rxc_pipe(4),
      Q => U0_xaui_inst_receiver_recoder_rxc_half_pipe(0)
    );
  U0_xaui_inst_receiver_recoder_code_error_delay_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_code_error_pipe(6),
      Q => U0_xaui_inst_receiver_recoder_code_error_delay_2_900
    );
  U0_xaui_inst_receiver_recoder_lane_terminate_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_7_AND_204_o_848,
      Q => U0_xaui_inst_receiver_recoder_lane_terminate(7)
    );
  U0_xaui_inst_receiver_recoder_lane_terminate_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_6_AND_202_o_849,
      Q => U0_xaui_inst_receiver_recoder_lane_terminate(6)
    );
  U0_xaui_inst_receiver_recoder_lane_terminate_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_5_AND_200_o_850,
      Q => U0_xaui_inst_receiver_recoder_lane_terminate(5)
    );
  U0_xaui_inst_receiver_recoder_lane_terminate_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_4_AND_198_o_851,
      Q => U0_xaui_inst_receiver_recoder_lane_terminate(4)
    );
  U0_xaui_inst_receiver_recoder_lane_terminate_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_3_AND_196_o_852,
      Q => U0_xaui_inst_receiver_recoder_lane_terminate(3)
    );
  U0_xaui_inst_receiver_recoder_lane_terminate_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_2_AND_194_o_853,
      Q => U0_xaui_inst_receiver_recoder_lane_terminate(2)
    );
  U0_xaui_inst_receiver_recoder_lane_terminate_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_1_AND_192_o_854,
      Q => U0_xaui_inst_receiver_recoder_lane_terminate(1)
    );
  U0_xaui_inst_receiver_recoder_lane_terminate_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_0_AND_190_o_855,
      Q => U0_xaui_inst_receiver_recoder_lane_terminate(0)
    );
  U0_xaui_inst_receiver_recoder_rxc_pipe_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxcharisk(7),
      Q => U0_xaui_inst_receiver_recoder_rxc_pipe(7)
    );
  U0_xaui_inst_receiver_recoder_rxc_pipe_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxcharisk(5),
      Q => U0_xaui_inst_receiver_recoder_rxc_pipe(6)
    );
  U0_xaui_inst_receiver_recoder_rxc_pipe_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxcharisk(3),
      Q => U0_xaui_inst_receiver_recoder_rxc_pipe(5)
    );
  U0_xaui_inst_receiver_recoder_rxc_pipe_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxcharisk(1),
      Q => U0_xaui_inst_receiver_recoder_rxc_pipe(4)
    );
  U0_xaui_inst_receiver_recoder_rxc_pipe_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxcharisk(6),
      Q => U0_xaui_inst_receiver_recoder_rxc_pipe(3)
    );
  U0_xaui_inst_receiver_recoder_rxc_pipe_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxcharisk(4),
      Q => U0_xaui_inst_receiver_recoder_rxc_pipe(2)
    );
  U0_xaui_inst_receiver_recoder_rxc_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxcharisk(2),
      Q => U0_xaui_inst_receiver_recoder_rxc_pipe(1)
    );
  U0_xaui_inst_receiver_recoder_rxc_pipe_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxcharisk(0),
      Q => U0_xaui_inst_receiver_recoder_rxc_pipe(0)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_63 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(63),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(63)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_62 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(62),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(62)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_61 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(61),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(61)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_60 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(60),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(60)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_59 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(59),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(59)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_58 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(58),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(58)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_57 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(57),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(57)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_56 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(56),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(56)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_55 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(47),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(55)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_54 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(46),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(54)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_53 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(45),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(53)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_52 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(44),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(52)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_51 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(43),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(51)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_50 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(42),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(50)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_49 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(41),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(49)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_48 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(40),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(48)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_47 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(31),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(47)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_46 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(30),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(46)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_45 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(29),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(45)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_44 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(28),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(44)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_43 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(27),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(43)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_42 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(26),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(42)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_41 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(25),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(41)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_40 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(24),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(40)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_39 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(15),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(39)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_38 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(14),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(38)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_37 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(13),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(37)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_36 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(12),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(36)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_35 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(11),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(35)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_34 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(10),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(34)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_33 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(9),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(33)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_32 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(8),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(32)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(55),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(31)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(54),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(30)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(53),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(29)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(52),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(28)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(51),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(27)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(50),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(26)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(49),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(25)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_24 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(48),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(24)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(39),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(23)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(38),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(22)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(37),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(21)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(36),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(20)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(35),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(19)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(34),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(18)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(33),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(17)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(32),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(16)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(23),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(15)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(22),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(14)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(21),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(13)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(20),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(12)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(19),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(11)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(18),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(10)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(17),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(9)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(16),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(8)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(7),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(7)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(6),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(6)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(5),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(5)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(4),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(4)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(3),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(3)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(2),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(2)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(1),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(1)
    );
  U0_xaui_inst_receiver_recoder_rxd_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_rxdata(0),
      Q => U0_xaui_inst_receiver_recoder_rxd_pipe(0)
    );
  U0_xaui_inst_receiver_recoder_code_error_pipe_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_code_error(7),
      Q => U0_xaui_inst_receiver_recoder_code_error_pipe(7)
    );
  U0_xaui_inst_receiver_recoder_code_error_pipe_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_code_error(6),
      Q => U0_xaui_inst_receiver_recoder_code_error_pipe(6)
    );
  U0_xaui_inst_receiver_recoder_code_error_pipe_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_code_error(5),
      Q => U0_xaui_inst_receiver_recoder_code_error_pipe(5)
    );
  U0_xaui_inst_receiver_recoder_code_error_pipe_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_code_error(4),
      Q => U0_xaui_inst_receiver_recoder_code_error_pipe(4)
    );
  U0_xaui_inst_receiver_recoder_code_error_pipe_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_code_error(3),
      Q => U0_xaui_inst_receiver_recoder_code_error_pipe(3)
    );
  U0_xaui_inst_receiver_recoder_code_error_pipe_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_code_error(2),
      Q => U0_xaui_inst_receiver_recoder_code_error_pipe(2)
    );
  U0_xaui_inst_receiver_recoder_code_error_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_code_error(1),
      Q => U0_xaui_inst_receiver_recoder_code_error_pipe(1)
    );
  U0_xaui_inst_receiver_recoder_code_error_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_code_error(0),
      Q => U0_xaui_inst_receiver_recoder_code_error_pipe(0)
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_enable_align : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_enable_align_i,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_enable_align_331
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codecomma(7),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codecomma(6),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codevalid(7),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codevalid(6),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_signal_detect_int(3),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_enable_align : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_enable_align_i,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_enable_align_332
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codecomma(5),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codecomma(4),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codevalid(5),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codevalid(4),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_signal_detect_int(2),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_enable_align : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_enable_align_i,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_enable_align_333
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codecomma(3),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codecomma(2),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codevalid(3),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codevalid(2),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_signal_detect_int(1),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q,
      R => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_change_0,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_enable_align : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_enable_align_i,
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_enable_align_334
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codecomma(1),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codecomma(0),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codevalid(1),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => mgt_codevalid(0),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_signal_detect_int(0),
      Q => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_1 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1041,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_1_dpot_1755,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_0 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1041,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_0_dpot_1754,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1041,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_dpot_1753,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg2_1096,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg3_1095
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_clear_local_fault : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_rd_AND_271_o,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_clear_local_fault_363
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_clear_aligned : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_rd_AND_269_o,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_clear_aligned_362
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_aligned_sticky_reg : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_aligned_sticky_350,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_aligned_sticky_reg_1088
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_aligned_reg : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => NlwRenamedSig_OI_U0_xaui_inst_align_status_int,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_aligned_reg_1089
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_rx_local_fault_reg : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_rx_local_fault_351,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_rx_local_fault_reg_1090
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_tx_local_fault_reg : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_tx_local_fault_352,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_tx_local_fault_reg_1091
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg1_1092,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg2_1096
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg_3 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => NlwRenamedSig_OI_U0_xaui_inst_sync(3),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg_2 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => NlwRenamedSig_OI_U0_xaui_inst_sync(2),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg_1 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => NlwRenamedSig_OI_U0_xaui_inst_sync(1),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg_0 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => NlwRenamedSig_OI_U0_xaui_inst_sync(0),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg_3 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_signal_detect_int(3),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg_2 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_signal_detect_int(2),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg_1 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_signal_detect_int(1),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg_0 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_signal_detect_int(0),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_in,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg1_1092
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg2_mdc_reg3_AND_205_o,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_In,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_4 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0185_inv,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count4,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(4)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_3 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0185_inv,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count3,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_1 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0185_inv,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count1,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_0 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0185_inv,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_15_dpot_1635,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(15)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_14_dpot_1634,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(14)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_13_dpot_1633,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(13)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_12_dpot_1632,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(12)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_11_dpot_1631,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(11)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_10_dpot_1630,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(10)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_9_dpot_1629,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(9)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_8_dpot_1628,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(8)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_7_dpot_1627,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(7)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_6_dpot_1626,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(6)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_5_dpot_1625,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(5)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_4_dpot_1624,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_3_dpot_1623,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_2_dpot_1622,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_1_dpot_1621,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_0_dpot_1620,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_15_dpot_1618,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(15)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_14_dpot_1617,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(14)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_13_dpot_1616,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(13)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_12_dpot_1615,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(12)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_11_dpot_1614,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(11)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_10_dpot_1613,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(10)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_9_dpot_1612,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(9)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_8_dpot_1611,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(8)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_7_dpot_1610,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(7)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_6_dpot_1609,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(6)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_5_dpot_1608,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(5)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_4_dpot_1607,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(4)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_3_dpot_1606,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_2_dpot_1605,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_1_dpot_1604,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_0_dpot_1603,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_15_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(14),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(15),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int15
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_14_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(13),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(14),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int14
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_14_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(13),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(14),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(14)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_13_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(12),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(13),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int13
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_13_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(12),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(13),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(13)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_12_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(11),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(12),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int12
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_12_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(11),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(12),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(12)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_11_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(10),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(11),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int11
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_11_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(10),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(11),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(11)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_10_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(9),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(10),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int10
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_10_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(9),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(10),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(10)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_9_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(8),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(9),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int9
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_9_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(8),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(9),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(9)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_8_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(7),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(8),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int8
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_8_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(7),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(8),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(8)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_7_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(6),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(7),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int7
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_7_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(6),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(7),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(7)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_6_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(5),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(6),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int6
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_6_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(5),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(6),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(6)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_5_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(4),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(5),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int5
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_5_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(4),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(5),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(5)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_4_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(3),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(4),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int4
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_4_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(3),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(4),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(4)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_3_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(2),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int3
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_3_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(2),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_2_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(1),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(2),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int2
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_2_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(1),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(2),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_1_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(0),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int1
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_1_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(0),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_xor_0_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy_0_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_cy(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_15_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(14),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(15),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int15
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_14_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(13),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(14),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int14
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_14_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(13),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(14),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(14)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_13_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(12),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(13),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int13
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_13_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(12),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(13),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(13)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_12_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(11),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(12),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int12
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_12_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(11),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(12),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(12)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_11_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(10),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(11),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int11
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_11_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(10),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(11),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(11)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_10_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(9),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(10),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int10
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_10_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(9),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(10),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(10)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_9_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(8),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(9),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int9
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_9_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(8),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(9),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(9)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_8_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(7),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(8),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int8
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_8_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(7),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(8),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(8)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_7_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(6),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(7),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int7
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_7_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(6),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(7),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(7)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_6_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(5),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(6),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int6
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_6_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(5),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(6),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(6)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_5_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(4),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(5),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int5
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_5_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(4),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(5),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(5)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_4_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(3),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(4),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int4
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_4_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(3),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(4),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(4)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_3_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(2),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int3
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_3_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(2),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_2_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(1),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(2),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int2
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_2_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(1),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(2),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_1_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(0),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int1
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_1_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(0),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_xor_0_Q : XORCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      LI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy_0_Q : MUXCY
    port map (
      CI => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      DI => N1,
      S => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_cy(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_out : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_out_int,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_out_344
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_tri : FDSE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_tri_int,
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_tri_345
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_rd : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_PWR_22_o_MUX_374_o,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_rd_1105
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_GND_21_o_MUX_373_o,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we_1106
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg_4 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_214_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(3),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(4)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg_3 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_214_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg_2 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_214_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg_1 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_214_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg_0 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_214_o,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode_1 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_211_o_1262,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode_0 : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_211_o_1262,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg : FDRE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_in_reg3,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_15 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_15_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(15)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_14_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(14)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_13 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_13_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(13)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_12 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_12_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(12)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_11 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_11_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(11)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_10 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_10_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(10)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_9 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_9_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(9)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_8 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_8_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(8)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_7 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_7_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(7)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_6 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_6_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(6)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_5 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_5_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(5)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_4 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_4_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(4)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_3 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_3_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_2 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_2_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_1 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_1_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_0 : FDE
    port map (
      C => usrclk,
      CE => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_0_Q,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0)
    );
  U0_xaui_inst_reset_int1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset,
      I1 => NlwRenamedSig_OI_U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg,
      O => U0_xaui_inst_reset_int
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT411 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT3211,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(14),
      I2 => U0_xaui_inst_transmitter_tx_code_q(1),
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_6_Q,
      I4 => U0_xaui_inst_transmitter_tx_code_a(1),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_46_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT501 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT3211,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(22),
      I2 => U0_xaui_inst_transmitter_tx_code_q(1),
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_6_Q,
      I4 => U0_xaui_inst_transmitter_tx_code_a(1),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_54_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT591 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT3211,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(30),
      I2 => U0_xaui_inst_transmitter_tx_code_q(1),
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_6_Q,
      I4 => U0_xaui_inst_transmitter_tx_code_a(1),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_62_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT65 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1511,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(14),
      I2 => U0_xaui_inst_transmitter_tx_code_q(0),
      I3 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_6_Q,
      I4 => U0_xaui_inst_transmitter_tx_code_a(0),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_14_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT241 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1511,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(30),
      I2 => U0_xaui_inst_transmitter_tx_code_q(0),
      I3 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_6_Q,
      I4 => U0_xaui_inst_transmitter_tx_code_a(0),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_30_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT151 : LUT6
    generic map(
      INIT => X"FFFF8A808A808A80"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1511,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(22),
      I2 => U0_xaui_inst_transmitter_tx_code_q(0),
      I3 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_6_Q,
      I4 => U0_xaui_inst_transmitter_tx_code_a(0),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_22_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT251 : LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(0),
      I1 => U0_xaui_inst_transmitter_tx_code_r(0),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(31),
      I3 => U0_xaui_inst_transmitter_tx_code_q(0),
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_7_Q,
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT161,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_31_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT71 : LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(0),
      I1 => U0_xaui_inst_transmitter_tx_code_r(0),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(15),
      I3 => U0_xaui_inst_transmitter_tx_code_q(0),
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_7_Q,
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT161,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_15_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT621 : LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(0),
      I1 => U0_xaui_inst_transmitter_tx_code_r(0),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(7),
      I3 => U0_xaui_inst_transmitter_tx_code_q(0),
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7_Q,
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT161,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_7_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT162 : LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(0),
      I1 => U0_xaui_inst_transmitter_tx_code_r(0),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(23),
      I3 => U0_xaui_inst_transmitter_tx_code_q(0),
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_7_Q,
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT161,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_23_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT601 : LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(1),
      I1 => U0_xaui_inst_transmitter_tx_code_r(1),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(31),
      I3 => U0_xaui_inst_transmitter_tx_code_q(1),
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_7_Q,
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT331,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_63_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT512 : LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(1),
      I1 => U0_xaui_inst_transmitter_tx_code_r(1),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(23),
      I3 => U0_xaui_inst_transmitter_tx_code_q(1),
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_7_Q,
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT331,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_55_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT421 : LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(1),
      I1 => U0_xaui_inst_transmitter_tx_code_r(1),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(15),
      I3 => U0_xaui_inst_transmitter_tx_code_q(1),
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_7_Q,
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT331,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_47_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT332 : LUT6
    generic map(
      INIT => X"FFFFFFFF10111000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(1),
      I1 => U0_xaui_inst_transmitter_tx_code_r(1),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(7),
      I3 => U0_xaui_inst_transmitter_tx_code_q(1),
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7_Q,
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT331,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_39_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT6351 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT6311 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631
    );
  U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o
    );
  U0_xaui_inst_transmitter_align_mux411 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAA9"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_align_count(4),
      I1 => U0_xaui_inst_transmitter_align_count(2),
      I2 => U0_xaui_inst_transmitter_align_count(3),
      I3 => U0_xaui_inst_transmitter_align_count(1),
      I4 => U0_xaui_inst_transmitter_tx_code_a(0),
      I5 => U0_xaui_inst_transmitter_tx_code_a(1),
      O => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_4_Q
    );
  U0_xaui_inst_transmitter_align_mux311 : LUT6
    generic map(
      INIT => X"FEFEFEEF10101001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(1),
      I1 => U0_xaui_inst_transmitter_tx_code_a(0),
      I2 => U0_xaui_inst_transmitter_align_count(3),
      I3 => U0_xaui_inst_transmitter_align_count(1),
      I4 => U0_xaui_inst_transmitter_align_count(2),
      I5 => U0_xaui_inst_transmitter_align_prbs(4),
      O => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_3_Q
    );
  U0_xaui_inst_transmitter_align_Mxor_prbs_6_prbs_7_XOR_49_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_align_prbs(6),
      I1 => U0_xaui_inst_transmitter_align_prbs(7),
      O => U0_xaui_inst_transmitter_align_prbs_6_prbs_7_XOR_49_o
    );
  U0_xaui_inst_transmitter_align_n0051_inv1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(1),
      I1 => U0_xaui_inst_transmitter_tx_code_a(0),
      I2 => U0_xaui_inst_transmitter_align_count(4),
      I3 => U0_xaui_inst_transmitter_align_count(3),
      I4 => U0_xaui_inst_transmitter_align_count(2),
      I5 => U0_xaui_inst_transmitter_align_count(1),
      O => U0_xaui_inst_transmitter_align_n0051_inv
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_Mxor_prbs_5_prbs_6_XOR_65_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(5),
      I1 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(6),
      O => U0_xaui_inst_transmitter_k_r_prbs_i_prbs_5_prbs_6_XOR_65_o
    );
  U0_xaui_inst_transmitter_k_r_prbs_i_Mxor_prbs_6_prbs_7_XOR_66_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(6),
      I1 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(7),
      O => U0_xaui_inst_transmitter_k_r_prbs_i_prbs_6_prbs_7_XOR_66_o
    );
  U0_xaui_inst_transmitter_state_machine_Mmux_state_1_2_PWR_15_o_wide_mux_20_OUT31 : LUT5
    generic map(
      INIT => X"FFF1F0FF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_is_q(1),
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_464,
      I2 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(2),
      I3 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(0),
      I4 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(1),
      O => U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_2_Q
    );
  U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp51 : LUT6
    generic map(
      INIT => X"EEE0E0EEEEE2E0EE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_is_idle(0),
      I1 => U0_xaui_inst_transmitter_tx_is_q(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_464,
      O => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(2)
    );
  U0_xaui_inst_transmitter_state_machine_tx_code_q_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      O => U0_xaui_inst_transmitter_tx_code_q(1)
    );
  U0_xaui_inst_transmitter_state_machine_tx_code_a_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      O => U0_xaui_inst_transmitter_tx_code_a(1)
    );
  U0_xaui_inst_transmitter_state_machine_tx_code_a_0_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      O => U0_xaui_inst_transmitter_tx_code_a(0)
    );
  U0_xaui_inst_transmitter_state_machine_is_idle_1_is_q_1_AND_15_o_01 : LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => U0_xaui_inst_usrclk_reset_354,
      I1 => U0_xaui_inst_transmitter_tx_is_idle(1),
      I2 => U0_xaui_inst_transmitter_tx_is_q(1),
      O => U0_xaui_inst_transmitter_state_machine_is_idle_1_is_q_1_AND_15_o_0
    );
  U0_xaui_inst_transmitter_state_machine_tx_code_q_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      O => U0_xaui_inst_transmitter_tx_code_q(0)
    );
  U0_xaui_inst_transmitter_state_machine_tx_code_r_1_2_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      O => U0_xaui_inst_transmitter_tx_code_r(1)
    );
  U0_xaui_inst_transmitter_state_machine_tx_code_r_0_2_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      O => U0_xaui_inst_transmitter_tx_code_r(0)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_Mmux_state_1_2_PWR_19_o_wide_mux_42_OUT21 : LUT5
    generic map(
      INIT => X"66148C44"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(1),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align(1),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(2),
      I4 => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(0),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2_PWR_19_o_wide_mux_42_OUT_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_Mmux_p_state_comb_state_temp_1_11 : LUT6
    generic map(
      INIT => X"282880A002202020"
    )
    port map (
      I0 => U0_xaui_inst_receiver_sync_status_726,
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error_sliced_756,
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(1),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align(0),
      I4 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(0),
      I5 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(2),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(1)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_Mmux_state_1_2_PWR_19_o_wide_mux_42_OUT11 : LUT5
    generic map(
      INIT => X"56520646"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align(1),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error(1),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(1),
      I4 => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(2),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2_PWR_19_o_wide_mux_42_OUT_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_Mmux_p_state_comb_state_temp_0_11 : LUT6
    generic map(
      INIT => X"2200282822200828"
    )
    port map (
      I0 => U0_xaui_inst_receiver_sync_status_726,
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(0),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align(0),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(2),
      I4 => U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error_sliced_756,
      I5 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(1),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(0)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_Mmux_p_state_comb_state_temp_2_11 : LUT6
    generic map(
      INIT => X"0888A88808888888"
    )
    port map (
      I0 => U0_xaui_inst_receiver_sync_status_726,
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(2),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(1),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(0),
      I4 => U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error_sliced_756,
      I5 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align(0),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(2)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_Mram_got_a_7_GND_18_o_Mux_10_o11 : LUT4
    generic map(
      INIT => X"7FFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(7),
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(4),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(5),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(6),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_Mram_got_a_7_GND_18_o_Mux_10_o
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_Mram_got_a_3_GND_18_o_Mux_9_o11 : LUT4
    generic map(
      INIT => X"7FFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(0),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(1),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(2),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_Mram_got_a_3_GND_18_o_Mux_9_o
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_Mmux_state_1_2_PWR_19_o_wide_mux_42_OUT31 : LUT5
    generic map(
      INIT => X"3AAA2AAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_deskew_error(1),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(0),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_p_state_comb_state_temp(1),
      I4 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_align(1),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1_2_PWR_19_o_wide_mux_42_OUT_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_i_norst_inv_01 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U0_xaui_inst_receiver_sync_status_726,
      I1 => U0_xaui_inst_usrclk_reset_354,
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_i_norst_inv_0
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_4_got_a_7_AND_50_o_4_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(4),
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(5),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(6),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(7),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_4_got_a_7_AND_50_o
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_0_got_a_3_AND_47_o_0_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(1),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(2),
      I3 => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(3),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_0_got_a_3_AND_47_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_24_GND_19_o_MUX_339_o11 : LUT6
    generic map(
      INIT => X"00000000BEABAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(24),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(31),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(30),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(29),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_7_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_24_GND_19_o_MUX_339_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_25_PWR_20_o_MUX_338_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0882"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2,
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(29),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(30),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(31),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_7_Q,
      I5 => U0_xaui_inst_receiver_recoder_rxd_pipe(25),
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_25_PWR_20_o_MUX_338_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_27_PWR_20_o_MUX_336_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF82A8AAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(27),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(31),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(30),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(29),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_7_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_27_PWR_20_o_MUX_336_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_29_PWR_20_o_MUX_334_o11 : LUT5
    generic map(
      INIT => X"FFFFA22A"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(29),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2,
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(30),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(31),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_7_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_29_PWR_20_o_MUX_334_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_30_PWR_20_o_MUX_333_o11 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(30),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(31),
      I2 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2,
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(29),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_7_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_30_PWR_20_o_MUX_333_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_28_PWR_20_o_MUX_335_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF82A8AAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(28),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(31),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(30),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(29),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_7_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_28_PWR_20_o_MUX_335_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_16_GND_19_o_MUX_321_o11 : LUT6
    generic map(
      INIT => X"00000000AEEBAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(16),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(21),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(23),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(22),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_6_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_16_GND_19_o_MUX_321_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_19_PWR_20_o_MUX_318_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF82A8AAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(19),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(23),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(22),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(21),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_6_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_19_PWR_20_o_MUX_318_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_17_PWR_20_o_MUX_320_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFFAEEBAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(17),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(21),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(23),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(22),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_6_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_17_PWR_20_o_MUX_320_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_20_PWR_20_o_MUX_317_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF82A8AAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(20),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(23),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(22),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(21),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_6_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_20_PWR_20_o_MUX_317_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_8_GND_19_o_MUX_303_o11 : LUT6
    generic map(
      INIT => X"00000000BEABAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(8),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(15),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(14),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(13),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_5_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_8_GND_19_o_MUX_303_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_9_PWR_20_o_MUX_302_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFFBEABAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(9),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(15),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(14),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(13),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_5_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_9_PWR_20_o_MUX_302_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_12_PWR_20_o_MUX_299_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF82A8AAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(12),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(15),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(14),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(13),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_5_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_12_PWR_20_o_MUX_299_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_11_PWR_20_o_MUX_300_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF82A8AAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(11),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(15),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(14),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(13),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_5_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_11_PWR_20_o_MUX_300_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_0_GND_19_o_MUX_285_o11 : LUT6
    generic map(
      INIT => X"00000000BEABAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(0),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(7),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(6),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(5),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_4_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_0_GND_19_o_MUX_285_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_1_PWR_20_o_MUX_284_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFFBEABAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(1),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(7),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(6),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(5),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_4_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_1_PWR_20_o_MUX_284_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_3_PWR_20_o_MUX_282_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF82A8AAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(3),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(7),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(6),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(5),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_4_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_3_PWR_20_o_MUX_282_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_4_PWR_20_o_MUX_281_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF82A8AAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(4),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(7),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(6),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(5),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_4_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_4_PWR_20_o_MUX_281_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_6_PWR_20_o_MUX_279_o11 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(6),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(7),
      I2 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1,
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(5),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_4_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_6_PWR_20_o_MUX_279_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_7_PWR_20_o_MUX_278_o11 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(7),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(6),
      I2 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1,
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(5),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_4_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_7_PWR_20_o_MUX_278_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_5_PWR_20_o_MUX_280_o11 : LUT5
    generic map(
      INIT => X"FFFFA22A"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(5),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1,
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(6),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(7),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_4_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_5_PWR_20_o_MUX_280_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_21_PWR_20_o_MUX_316_o11 : LUT5
    generic map(
      INIT => X"FFFFA22A"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(21),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1,
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(22),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(23),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_6_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_21_PWR_20_o_MUX_316_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_22_PWR_20_o_MUX_315_o11 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(22),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(23),
      I2 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1,
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(21),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_6_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_22_PWR_20_o_MUX_315_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_13_PWR_20_o_MUX_298_o11 : LUT5
    generic map(
      INIT => X"FFFFA22A"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(13),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1,
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(14),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(15),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_5_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_13_PWR_20_o_MUX_298_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_14_PWR_20_o_MUX_297_o11 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(14),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(15),
      I2 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1,
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(13),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_5_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_14_PWR_20_o_MUX_297_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_31_PWR_20_o_MUX_332_o11 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(31),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(30),
      I2 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2,
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(29),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_7_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_31_PWR_20_o_MUX_332_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_23_PWR_20_o_MUX_314_o11 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(23),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(22),
      I2 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1,
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(21),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_6_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_23_PWR_20_o_MUX_314_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_15_PWR_20_o_MUX_296_o11 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(15),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(14),
      I2 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1,
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(13),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_5_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_15_PWR_20_o_MUX_296_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_24_GND_19_o_MUX_267_o11 : LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(24),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_761,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_3_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_24_GND_19_o_MUX_267_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_16_GND_19_o_MUX_249_o11 : LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(16),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_762,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_2_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_16_GND_19_o_MUX_249_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_0_GND_19_o_MUX_213_o11 : LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(0),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_764,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_0_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_0_GND_19_o_MUX_213_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_GND_19_o_GND_19_o_mux_97_OUT21 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_lane_terminate(0),
      I1 => U0_xaui_inst_receiver_recoder_lane_terminate(1),
      I2 => U0_xaui_inst_receiver_recoder_lane_terminate(2),
      I3 => U0_xaui_inst_receiver_recoder_lane_terminate(3),
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_mux_97_OUT(1)
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o21 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(28),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(27),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(26),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(25),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(24),
      I5 => U0_xaui_inst_receiver_recoder_rxc_pipe(3),
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o11 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(4),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(3),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(2),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(1),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(0),
      I5 => U0_xaui_inst_receiver_recoder_rxc_pipe(0),
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o11 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(20),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(19),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(18),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(17),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(16),
      I5 => U0_xaui_inst_receiver_recoder_rxc_pipe(2),
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o11 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(12),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(11),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(10),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(9),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(8),
      I5 => U0_xaui_inst_receiver_recoder_rxc_pipe(1),
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_26_PWR_20_o_MUX_265_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_error_lane_3_Q,
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(26),
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_26_PWR_20_o_MUX_265_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_18_PWR_20_o_MUX_247_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_error_lane_2_Q,
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(18),
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_18_PWR_20_o_MUX_247_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_2_PWR_20_o_MUX_211_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(2),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_0_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_2_PWR_20_o_MUX_211_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxc_half_pipe_3_PWR_20_o_MUX_269_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_error_lane_3_Q,
      I1 => U0_xaui_inst_receiver_recoder_rxc_half_pipe(3),
      O => U0_xaui_inst_receiver_recoder_rxc_half_pipe_3_PWR_20_o_MUX_269_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxc_half_pipe_2_PWR_20_o_MUX_251_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_error_lane_2_Q,
      I1 => U0_xaui_inst_receiver_recoder_rxc_half_pipe(2),
      O => U0_xaui_inst_receiver_recoder_rxc_half_pipe_2_PWR_20_o_MUX_251_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxc_half_pipe_0_PWR_20_o_MUX_215_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxc_half_pipe(0),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_0_Q,
      O => U0_xaui_inst_receiver_recoder_rxc_half_pipe_0_PWR_20_o_MUX_215_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxc_pipe_3_PWR_20_o_MUX_341_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxc_pipe(3),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_7_Q,
      O => U0_xaui_inst_receiver_recoder_rxc_pipe_3_PWR_20_o_MUX_341_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxc_pipe_2_PWR_20_o_MUX_323_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxc_pipe(2),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_6_Q,
      O => U0_xaui_inst_receiver_recoder_rxc_pipe_2_PWR_20_o_MUX_323_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxc_pipe_1_PWR_20_o_MUX_305_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxc_pipe(1),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_5_Q,
      O => U0_xaui_inst_receiver_recoder_rxc_pipe_1_PWR_20_o_MUX_305_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxc_pipe_0_PWR_20_o_MUX_287_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxc_pipe(0),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_4_Q,
      O => U0_xaui_inst_receiver_recoder_rxc_pipe_0_PWR_20_o_MUX_287_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_26_PWR_20_o_MUX_337_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(26),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_7_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_26_PWR_20_o_MUX_337_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_18_PWR_20_o_MUX_319_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(18),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_6_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_18_PWR_20_o_MUX_319_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_10_PWR_20_o_MUX_301_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(10),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_5_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_10_PWR_20_o_MUX_301_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_pipe_2_PWR_20_o_MUX_283_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(2),
      I1 => U0_xaui_inst_receiver_recoder_error_lane_4_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_pipe_2_PWR_20_o_MUX_283_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_25_PWR_20_o_MUX_266_o11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_761,
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(25),
      I2 => U0_xaui_inst_receiver_recoder_error_lane_3_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_25_PWR_20_o_MUX_266_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_27_PWR_20_o_MUX_264_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(27),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_761,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_3_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_27_PWR_20_o_MUX_264_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_28_PWR_20_o_MUX_263_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(28),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_761,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_3_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_28_PWR_20_o_MUX_263_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_29_PWR_20_o_MUX_262_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(29),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_761,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_3_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_29_PWR_20_o_MUX_262_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_30_PWR_20_o_MUX_261_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(30),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_761,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_3_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_30_PWR_20_o_MUX_261_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_31_PWR_20_o_MUX_260_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(31),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_761,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_3_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_31_PWR_20_o_MUX_260_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_17_PWR_20_o_MUX_248_o11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_762,
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(17),
      I2 => U0_xaui_inst_receiver_recoder_error_lane_2_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_17_PWR_20_o_MUX_248_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_19_PWR_20_o_MUX_246_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(19),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_762,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_2_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_19_PWR_20_o_MUX_246_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_20_PWR_20_o_MUX_245_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(20),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_762,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_2_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_20_PWR_20_o_MUX_245_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_22_PWR_20_o_MUX_243_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(22),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_762,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_2_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_22_PWR_20_o_MUX_243_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_23_PWR_20_o_MUX_242_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(23),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_762,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_2_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_23_PWR_20_o_MUX_242_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_21_PWR_20_o_MUX_244_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(21),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_762,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_2_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_21_PWR_20_o_MUX_244_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_1_PWR_20_o_MUX_212_o11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_764,
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(1),
      I2 => U0_xaui_inst_receiver_recoder_error_lane_0_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_1_PWR_20_o_MUX_212_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_3_PWR_20_o_MUX_210_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(3),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_764,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_0_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_3_PWR_20_o_MUX_210_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_5_PWR_20_o_MUX_208_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(5),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_764,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_0_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_5_PWR_20_o_MUX_208_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_6_PWR_20_o_MUX_207_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(6),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_764,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_0_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_6_PWR_20_o_MUX_207_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_4_PWR_20_o_MUX_209_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(4),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_764,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_0_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_4_PWR_20_o_MUX_209_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_7_PWR_20_o_MUX_206_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(7),
      I1 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_764,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_0_Q,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_7_PWR_20_o_MUX_206_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_GND_19_o_GND_19_o_mux_97_OUT31 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_lane_terminate(3),
      I1 => U0_xaui_inst_receiver_recoder_lane_terminate(2),
      I2 => U0_xaui_inst_receiver_recoder_lane_terminate(1),
      I3 => U0_xaui_inst_receiver_recoder_lane_terminate(0),
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_mux_97_OUT(2)
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_change_01 : LUT4
    generic map(
      INIT => X"EFFE"
    )
    port map (
      I0 => mgt_rx_reset(3),
      I1 => U0_xaui_inst_usrclk_reset_354,
      I2 => U0_xaui_inst_signal_detect_int(3),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_change_0
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mram_sync_ok11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      O => U0_xaui_inst_receiver_sync_ok_int(3)
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_enable_align_i_4_1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_enable_align_i
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_change_01 : LUT4
    generic map(
      INIT => X"EFFE"
    )
    port map (
      I0 => mgt_rx_reset(2),
      I1 => U0_xaui_inst_usrclk_reset_354,
      I2 => U0_xaui_inst_signal_detect_int(2),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_change_0
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mram_sync_ok11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q,
      O => U0_xaui_inst_receiver_sync_ok_int(2)
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_enable_align_i_4_1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_enable_align_i
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_change_01 : LUT4
    generic map(
      INIT => X"EFFE"
    )
    port map (
      I0 => mgt_rx_reset(1),
      I1 => U0_xaui_inst_usrclk_reset_354,
      I2 => U0_xaui_inst_signal_detect_int(1),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_change_0
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mram_sync_ok11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q,
      O => U0_xaui_inst_receiver_sync_ok_int(1)
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_enable_align_i_4_1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_enable_align_i
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_change_01 : LUT4
    generic map(
      INIT => X"EFFE"
    )
    port map (
      I0 => mgt_rx_reset(0),
      I1 => U0_xaui_inst_usrclk_reset_354,
      I2 => U0_xaui_inst_signal_detect_int(0),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_change_0
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mram_sync_ok11 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q,
      O => U0_xaui_inst_receiver_sync_ok_int(0)
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_enable_align_i_4_1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_enable_align_i
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_8_o_15_1 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_8_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd11211 : LUT5
    generic map(
      INIT => X"00040000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1121
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_rd_AND_271_o1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_rd_1105,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1121,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_rd_AND_271_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg2_mdc_reg3_AND_205_o1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg3_1095,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg2_1096,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_reg2_mdc_reg3_AND_205_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_rd_AND_269_o1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_rd_1105,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_9_o,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_rd_AND_269_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In111 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(2),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In111_1756,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_214_o1 : LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_214_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_GND_21_o_GND_21_o_MUX_373_o11 : LUT5
    generic map(
      INIT => X"00080000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_GND_21_o_MUX_373_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_GND_21_o_PWR_22_o_MUX_374_o11 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_PWR_22_o_MUX_374_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv21 : LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_mdio_out_int11 : LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(15),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_tri_int,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_out_int
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_mdio_tri_int11 : LUT6
    generic map(
      INIT => X"FDFFFFFFFDBFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_tri_int
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"6AAA6A2A"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In1,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_In
    );
  U0_xaui_inst_transmitter_tx_is_q_comb_1_1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => xgmii_txd(37),
      I1 => xgmii_txc(4),
      I2 => xgmii_txd(35),
      I3 => xgmii_txd(36),
      I4 => xgmii_txd(39),
      I5 => xgmii_txd(34),
      O => U0_xaui_inst_transmitter_tx_is_q_comb_1_1_1307
    );
  U0_xaui_inst_transmitter_tx_is_q_comb_1_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => xgmii_txd(33),
      I1 => xgmii_txd(38),
      I2 => xgmii_txd(32),
      I3 => xgmii_txc(7),
      I4 => xgmii_txc(6),
      I5 => xgmii_txc(5),
      O => U0_xaui_inst_transmitter_tx_is_q_comb_1_2_1308
    );
  U0_xaui_inst_transmitter_tx_is_q_comb_1_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_is_q_comb_1_1_1307,
      I1 => U0_xaui_inst_transmitter_tx_is_q_comb_1_2_1308,
      O => U0_xaui_inst_transmitter_tx_is_q_comb(1)
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_1_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => xgmii_txd(33),
      I1 => xgmii_txd(40),
      I2 => xgmii_txc(7),
      I3 => xgmii_txd(32),
      I4 => xgmii_txc(5),
      I5 => xgmii_txc(6),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_1_1_1309
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_1_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => xgmii_txd(50),
      I1 => xgmii_txd(56),
      I2 => xgmii_txd(48),
      I3 => xgmii_txd(49),
      I4 => xgmii_txd(41),
      I5 => xgmii_txd(42),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_1_2_1310
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_1_3 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => xgmii_txd(58),
      I1 => xgmii_txd(34),
      I2 => xgmii_txd(57),
      I3 => xgmii_txd(37),
      I4 => xgmii_txd(38),
      I5 => xgmii_txc(4),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_1_3_1311
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_1_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => xgmii_txd(62),
      I1 => xgmii_txd(63),
      I2 => xgmii_txd(61),
      I3 => xgmii_txd(60),
      I4 => xgmii_txd(59),
      I5 => xgmii_txd(55),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_1_4_1312
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_1_5 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => xgmii_txd(53),
      I1 => xgmii_txd(54),
      I2 => xgmii_txd(52),
      I3 => xgmii_txd(51),
      I4 => xgmii_txd(47),
      I5 => xgmii_txd(46),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_1_5_1313
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_1_6 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => xgmii_txd(44),
      I1 => xgmii_txd(45),
      I2 => xgmii_txd(43),
      I3 => xgmii_txd(39),
      I4 => xgmii_txd(36),
      I5 => xgmii_txd(35),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_1_6_1314
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_1_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_is_idle_comb_1_1_1309,
      I1 => U0_xaui_inst_transmitter_tx_is_idle_comb_1_2_1310,
      I2 => U0_xaui_inst_transmitter_tx_is_idle_comb_1_3_1311,
      I3 => U0_xaui_inst_transmitter_tx_is_idle_comb_1_4_1312,
      I4 => U0_xaui_inst_transmitter_tx_is_idle_comb_1_5_1313,
      I5 => U0_xaui_inst_transmitter_tx_is_idle_comb_1_6_1314,
      O => U0_xaui_inst_transmitter_tx_is_idle_comb(1)
    );
  U0_xaui_inst_transmitter_tx_is_q_comb_0_1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => xgmii_txd(5),
      I1 => xgmii_txc(0),
      I2 => xgmii_txd(3),
      I3 => xgmii_txd(4),
      I4 => xgmii_txd(7),
      I5 => xgmii_txd(2),
      O => U0_xaui_inst_transmitter_tx_is_q_comb_0_1_1315
    );
  U0_xaui_inst_transmitter_tx_is_q_comb_0_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => xgmii_txd(1),
      I1 => xgmii_txd(6),
      I2 => xgmii_txd(0),
      I3 => xgmii_txc(3),
      I4 => xgmii_txc(2),
      I5 => xgmii_txc(1),
      O => U0_xaui_inst_transmitter_tx_is_q_comb_0_2_1316
    );
  U0_xaui_inst_transmitter_tx_is_q_comb_0_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_is_q_comb_0_1_1315,
      I1 => U0_xaui_inst_transmitter_tx_is_q_comb_0_2_1316,
      O => U0_xaui_inst_transmitter_tx_is_q_comb(0)
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_0_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => xgmii_txd(10),
      I1 => xgmii_txd(16),
      I2 => xgmii_txc(3),
      I3 => xgmii_txd(0),
      I4 => xgmii_txc(1),
      I5 => xgmii_txc(2),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_0_1_1317
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_0_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => xgmii_txd(25),
      I1 => xgmii_txd(26),
      I2 => xgmii_txd(1),
      I3 => xgmii_txd(24),
      I4 => xgmii_txd(17),
      I5 => xgmii_txd(18),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_0_2_1318
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_0_3 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => xgmii_txd(9),
      I1 => xgmii_txd(2),
      I2 => xgmii_txd(8),
      I3 => xgmii_txd(5),
      I4 => xgmii_txd(6),
      I5 => xgmii_txc(0),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_0_3_1319
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_0_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => xgmii_txd(4),
      I1 => xgmii_txd(7),
      I2 => xgmii_txd(3),
      I3 => xgmii_txd(31),
      I4 => xgmii_txd(30),
      I5 => xgmii_txd(29),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_0_4_1320
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_0_5 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => xgmii_txd(27),
      I1 => xgmii_txd(28),
      I2 => xgmii_txd(23),
      I3 => xgmii_txd(22),
      I4 => xgmii_txd(21),
      I5 => xgmii_txd(20),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_0_5_1321
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_0_6 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => xgmii_txd(15),
      I1 => xgmii_txd(19),
      I2 => xgmii_txd(14),
      I3 => xgmii_txd(13),
      I4 => xgmii_txd(12),
      I5 => xgmii_txd(11),
      O => U0_xaui_inst_transmitter_tx_is_idle_comb_0_6_1322
    );
  U0_xaui_inst_transmitter_tx_is_idle_comb_0_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_is_idle_comb_0_1_1317,
      I1 => U0_xaui_inst_transmitter_tx_is_idle_comb_0_2_1318,
      I2 => U0_xaui_inst_transmitter_tx_is_idle_comb_0_3_1319,
      I3 => U0_xaui_inst_transmitter_tx_is_idle_comb_0_4_1320,
      I4 => U0_xaui_inst_transmitter_tx_is_idle_comb_0_5_1321,
      I5 => U0_xaui_inst_transmitter_tx_is_idle_comb_0_6_1322,
      O => U0_xaui_inst_transmitter_tx_is_idle_comb(0)
    );
  U0_xaui_inst_transmitter_is_terminate_1_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(60),
      I1 => U0_xaui_inst_transmitter_txd_pipe(59),
      I2 => U0_xaui_inst_transmitter_txd_pipe(62),
      I3 => U0_xaui_inst_transmitter_txd_pipe(61),
      I4 => U0_xaui_inst_transmitter_txc_pipe(7),
      I5 => U0_xaui_inst_transmitter_txd_pipe(63),
      O => U0_xaui_inst_transmitter_is_terminate_1_1_1323
    );
  U0_xaui_inst_transmitter_is_terminate_1_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(52),
      I1 => U0_xaui_inst_transmitter_txd_pipe(51),
      I2 => U0_xaui_inst_transmitter_txd_pipe(54),
      I3 => U0_xaui_inst_transmitter_txd_pipe(53),
      I4 => U0_xaui_inst_transmitter_txc_pipe(6),
      I5 => U0_xaui_inst_transmitter_txd_pipe(55),
      O => U0_xaui_inst_transmitter_is_terminate_1_2_1324
    );
  U0_xaui_inst_transmitter_is_terminate_1_3 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(48),
      I1 => U0_xaui_inst_transmitter_txd_pipe(49),
      I2 => U0_xaui_inst_transmitter_txd_pipe(50),
      O => U0_xaui_inst_transmitter_is_terminate_1_3_1325
    );
  U0_xaui_inst_transmitter_is_terminate_1_4 : LUT6
    generic map(
      INIT => X"FF20FF0020200000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(56),
      I1 => U0_xaui_inst_transmitter_txd_pipe(57),
      I2 => U0_xaui_inst_transmitter_txd_pipe(58),
      I3 => U0_xaui_inst_transmitter_is_terminate_1_3_1325,
      I4 => U0_xaui_inst_transmitter_is_terminate_1_1_1323,
      I5 => U0_xaui_inst_transmitter_is_terminate_1_2_1324,
      O => U0_xaui_inst_transmitter_is_terminate_1_4_1326
    );
  U0_xaui_inst_transmitter_is_terminate_1_5 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(36),
      I1 => U0_xaui_inst_transmitter_txd_pipe(35),
      I2 => U0_xaui_inst_transmitter_txd_pipe(38),
      I3 => U0_xaui_inst_transmitter_txd_pipe(37),
      I4 => U0_xaui_inst_transmitter_txc_pipe(4),
      I5 => U0_xaui_inst_transmitter_txd_pipe(39),
      O => U0_xaui_inst_transmitter_is_terminate_1_5_1327
    );
  U0_xaui_inst_transmitter_is_terminate_1_6 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(33),
      I1 => U0_xaui_inst_transmitter_txd_pipe(32),
      I2 => U0_xaui_inst_transmitter_txd_pipe(34),
      I3 => U0_xaui_inst_transmitter_is_terminate_1_5_1327,
      O => U0_xaui_inst_transmitter_is_terminate_1_6_1328
    );
  U0_xaui_inst_transmitter_is_terminate_1_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(44),
      I1 => U0_xaui_inst_transmitter_txd_pipe(43),
      I2 => U0_xaui_inst_transmitter_txd_pipe(46),
      I3 => U0_xaui_inst_transmitter_txd_pipe(45),
      I4 => U0_xaui_inst_transmitter_txc_pipe(5),
      I5 => U0_xaui_inst_transmitter_txd_pipe(47),
      O => U0_xaui_inst_transmitter_is_terminate_1_7_1329
    );
  U0_xaui_inst_transmitter_is_terminate_1_8 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF2000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(42),
      I1 => U0_xaui_inst_transmitter_txd_pipe(41),
      I2 => U0_xaui_inst_transmitter_txd_pipe(40),
      I3 => U0_xaui_inst_transmitter_is_terminate_1_7_1329,
      I4 => U0_xaui_inst_transmitter_is_terminate_1_6_1328,
      I5 => U0_xaui_inst_transmitter_is_terminate_1_4_1326,
      O => U0_xaui_inst_transmitter_is_terminate(1)
    );
  U0_xaui_inst_transmitter_is_terminate_0_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(28),
      I1 => U0_xaui_inst_transmitter_txd_pipe(27),
      I2 => U0_xaui_inst_transmitter_txd_pipe(30),
      I3 => U0_xaui_inst_transmitter_txd_pipe(29),
      I4 => U0_xaui_inst_transmitter_txc_pipe(3),
      I5 => U0_xaui_inst_transmitter_txd_pipe(31),
      O => U0_xaui_inst_transmitter_is_terminate_0_1_1330
    );
  U0_xaui_inst_transmitter_is_terminate_0_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(20),
      I1 => U0_xaui_inst_transmitter_txd_pipe(19),
      I2 => U0_xaui_inst_transmitter_txd_pipe(22),
      I3 => U0_xaui_inst_transmitter_txd_pipe(21),
      I4 => U0_xaui_inst_transmitter_txc_pipe(2),
      I5 => U0_xaui_inst_transmitter_txd_pipe(23),
      O => U0_xaui_inst_transmitter_is_terminate_0_2_1331
    );
  U0_xaui_inst_transmitter_is_terminate_0_3 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(16),
      I1 => U0_xaui_inst_transmitter_txd_pipe(17),
      I2 => U0_xaui_inst_transmitter_txd_pipe(18),
      O => U0_xaui_inst_transmitter_is_terminate_0_3_1332
    );
  U0_xaui_inst_transmitter_is_terminate_0_4 : LUT6
    generic map(
      INIT => X"FF20FF0020200000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(24),
      I1 => U0_xaui_inst_transmitter_txd_pipe(25),
      I2 => U0_xaui_inst_transmitter_txd_pipe(26),
      I3 => U0_xaui_inst_transmitter_is_terminate_0_3_1332,
      I4 => U0_xaui_inst_transmitter_is_terminate_0_1_1330,
      I5 => U0_xaui_inst_transmitter_is_terminate_0_2_1331,
      O => U0_xaui_inst_transmitter_is_terminate_0_4_1333
    );
  U0_xaui_inst_transmitter_is_terminate_0_5 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(4),
      I1 => U0_xaui_inst_transmitter_txd_pipe(3),
      I2 => U0_xaui_inst_transmitter_txd_pipe(6),
      I3 => U0_xaui_inst_transmitter_txd_pipe(5),
      I4 => U0_xaui_inst_transmitter_txc_pipe(0),
      I5 => U0_xaui_inst_transmitter_txd_pipe(7),
      O => U0_xaui_inst_transmitter_is_terminate_0_5_1334
    );
  U0_xaui_inst_transmitter_is_terminate_0_6 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(1),
      I1 => U0_xaui_inst_transmitter_txd_pipe(0),
      I2 => U0_xaui_inst_transmitter_txd_pipe(2),
      I3 => U0_xaui_inst_transmitter_is_terminate_0_5_1334,
      O => U0_xaui_inst_transmitter_is_terminate_0_6_1335
    );
  U0_xaui_inst_transmitter_is_terminate_0_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(12),
      I1 => U0_xaui_inst_transmitter_txd_pipe(11),
      I2 => U0_xaui_inst_transmitter_txd_pipe(14),
      I3 => U0_xaui_inst_transmitter_txd_pipe(13),
      I4 => U0_xaui_inst_transmitter_txc_pipe(1),
      I5 => U0_xaui_inst_transmitter_txd_pipe(15),
      O => U0_xaui_inst_transmitter_is_terminate_0_7_1336
    );
  U0_xaui_inst_transmitter_is_terminate_0_8 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF2000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(10),
      I1 => U0_xaui_inst_transmitter_txd_pipe(9),
      I2 => U0_xaui_inst_transmitter_txd_pipe(8),
      I3 => U0_xaui_inst_transmitter_is_terminate_0_7_1336,
      I4 => U0_xaui_inst_transmitter_is_terminate_0_6_1335,
      I5 => U0_xaui_inst_transmitter_is_terminate_0_4_1333,
      O => U0_xaui_inst_transmitter_is_terminate(0)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txc_out_436,
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txc_out_445,
      I2 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7_Q,
      I3 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_4_Q,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_3_Q,
      I5 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_2_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o1_1340
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txc_out_418,
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txc_out_427,
      I2 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_0_Q,
      I3 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_1_Q,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_5_Q,
      I5 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_6_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o2_1341
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txc_out_400,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txc_out_409,
      I2 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7_Q,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_4_Q,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_3_Q,
      I5 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_2_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txc_out_382,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txc_out_391,
      I2 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_0_Q,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_1_Q,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_5_Q,
      I5 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_6_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343
    );
  U0_xaui_inst_transmitter_align_Mmux_a_cnt1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_align_count(4),
      I1 => U0_xaui_inst_transmitter_align_count(3),
      I2 => U0_xaui_inst_transmitter_align_count(2),
      O => N16
    );
  U0_xaui_inst_transmitter_align_Mmux_a_cnt1 : LUT6
    generic map(
      INIT => X"00000000000000DF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_align_count(0),
      I1 => U0_xaui_inst_transmitter_align_extra_a_675,
      I2 => U0_xaui_inst_transmitter_align_count(1),
      I3 => N16,
      I4 => U0_xaui_inst_transmitter_tx_code_a(1),
      I5 => U0_xaui_inst_transmitter_tx_code_a(0),
      O => U0_xaui_inst_transmitter_a_due(0)
    );
  U0_xaui_inst_transmitter_state_machine_Mmux_state_1_2_PWR_15_o_wide_mux_20_OUT2_SW0 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_is_q(1),
      I1 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(2),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_464,
      O => N20
    );
  U0_xaui_inst_transmitter_state_machine_Mmux_state_1_2_PWR_15_o_wide_mux_20_OUT2 : LUT6
    generic map(
      INIT => X"00F000F0EECC0000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_702,
      I1 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(2),
      I2 => N20,
      I3 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(0),
      I4 => U0_xaui_inst_transmitter_a_due(1),
      I5 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(1),
      O => U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_1_Q
    );
  U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp41 : LUT5
    generic map(
      INIT => X"EEE0E0E0"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_is_idle(0),
      I1 => U0_xaui_inst_transmitter_tx_is_q(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I3 => U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_702,
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      O => U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp4
    );
  U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp42 : LUT4
    generic map(
      INIT => X"A8EC"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_464,
      I1 => U0_xaui_inst_transmitter_tx_is_q(0),
      I2 => U0_xaui_inst_transmitter_tx_is_idle(0),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      O => U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp41_1347
    );
  U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp43 : LUT5
    generic map(
      INIT => X"75202020"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I2 => U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp41_1347,
      I3 => U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp4,
      I4 => U0_xaui_inst_transmitter_a_due(0),
      O => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(1)
    );
  U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp21 : LUT6
    generic map(
      INIT => X"20222020AA22AA20"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_464,
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I4 => U0_xaui_inst_transmitter_tx_is_q(0),
      I5 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(8),
      O => U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp2
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(62),
      I1 => U0_xaui_inst_transmitter_txd_pipe(63),
      I2 => U0_xaui_inst_transmitter_txd_pipe(61),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o1_1349
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(58),
      I1 => U0_xaui_inst_transmitter_txd_pipe(59),
      I2 => U0_xaui_inst_transmitter_txd_pipe(56),
      I3 => U0_xaui_inst_transmitter_txd_pipe(57),
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o1_1349,
      I5 => U0_xaui_inst_transmitter_txd_pipe(60),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(54),
      I1 => U0_xaui_inst_transmitter_txd_pipe(55),
      I2 => U0_xaui_inst_transmitter_txd_pipe(53),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o1_1350
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(50),
      I1 => U0_xaui_inst_transmitter_txd_pipe(51),
      I2 => U0_xaui_inst_transmitter_txd_pipe(48),
      I3 => U0_xaui_inst_transmitter_txd_pipe(49),
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o1_1350,
      I5 => U0_xaui_inst_transmitter_txd_pipe(52),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(46),
      I1 => U0_xaui_inst_transmitter_txd_pipe(47),
      I2 => U0_xaui_inst_transmitter_txd_pipe(45),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o1_1351
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(42),
      I1 => U0_xaui_inst_transmitter_txd_pipe(43),
      I2 => U0_xaui_inst_transmitter_txd_pipe(40),
      I3 => U0_xaui_inst_transmitter_txd_pipe(41),
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o1_1351,
      I5 => U0_xaui_inst_transmitter_txd_pipe(44),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(38),
      I1 => U0_xaui_inst_transmitter_txd_pipe(39),
      I2 => U0_xaui_inst_transmitter_txd_pipe(37),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o1_1352
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(34),
      I1 => U0_xaui_inst_transmitter_txd_pipe(35),
      I2 => U0_xaui_inst_transmitter_txd_pipe(32),
      I3 => U0_xaui_inst_transmitter_txd_pipe(33),
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o1_1352,
      I5 => U0_xaui_inst_transmitter_txd_pipe(36),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(30),
      I1 => U0_xaui_inst_transmitter_txd_pipe(31),
      I2 => U0_xaui_inst_transmitter_txd_pipe(29),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o1_1353
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(26),
      I1 => U0_xaui_inst_transmitter_txd_pipe(27),
      I2 => U0_xaui_inst_transmitter_txd_pipe(24),
      I3 => U0_xaui_inst_transmitter_txd_pipe(25),
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o1_1353,
      I5 => U0_xaui_inst_transmitter_txd_pipe(28),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(22),
      I1 => U0_xaui_inst_transmitter_txd_pipe(23),
      I2 => U0_xaui_inst_transmitter_txd_pipe(21),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o1_1354
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(18),
      I1 => U0_xaui_inst_transmitter_txd_pipe(19),
      I2 => U0_xaui_inst_transmitter_txd_pipe(16),
      I3 => U0_xaui_inst_transmitter_txd_pipe(17),
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o1_1354,
      I5 => U0_xaui_inst_transmitter_txd_pipe(20),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(14),
      I1 => U0_xaui_inst_transmitter_txd_pipe(15),
      I2 => U0_xaui_inst_transmitter_txd_pipe(13),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o1_1355
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(10),
      I1 => U0_xaui_inst_transmitter_txd_pipe(11),
      I2 => U0_xaui_inst_transmitter_txd_pipe(8),
      I3 => U0_xaui_inst_transmitter_txd_pipe(9),
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o1_1355,
      I5 => U0_xaui_inst_transmitter_txd_pipe(12),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(6),
      I1 => U0_xaui_inst_transmitter_txd_pipe(7),
      I2 => U0_xaui_inst_transmitter_txd_pipe(5),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o1_1356
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(2),
      I1 => U0_xaui_inst_transmitter_txd_pipe(3),
      I2 => U0_xaui_inst_transmitter_txd_pipe(0),
      I3 => U0_xaui_inst_transmitter_txd_pipe(1),
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o1_1356,
      I5 => U0_xaui_inst_transmitter_txd_pipe(4),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o
    );
  U0_xaui_inst_receiver_code_error_7_1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => mgt_rxdata(62),
      I1 => mgt_rxdata(63),
      I2 => mgt_rxdata(61),
      O => U0_xaui_inst_receiver_code_error_7_1_1357
    );
  U0_xaui_inst_receiver_code_error_7_2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(58),
      I1 => mgt_rxdata(59),
      I2 => mgt_rxdata(56),
      I3 => mgt_rxdata(57),
      I4 => U0_xaui_inst_receiver_code_error_7_1_1357,
      I5 => mgt_rxdata(60),
      O => U0_xaui_inst_receiver_code_error_7_2_1358
    );
  U0_xaui_inst_receiver_code_error_7_3 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => mgt_codevalid(7),
      I1 => U0_xaui_inst_receiver_code_error_7_2_1358,
      I2 => mgt_rxcharisk(7),
      O => U0_xaui_inst_receiver_code_error(7)
    );
  U0_xaui_inst_receiver_code_error_6_1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => mgt_rxdata(46),
      I1 => mgt_rxdata(47),
      I2 => mgt_rxdata(45),
      O => U0_xaui_inst_receiver_code_error_6_1_1359
    );
  U0_xaui_inst_receiver_code_error_6_2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(42),
      I1 => mgt_rxdata(43),
      I2 => mgt_rxdata(40),
      I3 => mgt_rxdata(41),
      I4 => U0_xaui_inst_receiver_code_error_6_1_1359,
      I5 => mgt_rxdata(44),
      O => U0_xaui_inst_receiver_code_error_6_2_1360
    );
  U0_xaui_inst_receiver_code_error_6_3 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => mgt_codevalid(5),
      I1 => U0_xaui_inst_receiver_code_error_6_2_1360,
      I2 => mgt_rxcharisk(5),
      O => U0_xaui_inst_receiver_code_error(6)
    );
  U0_xaui_inst_receiver_code_error_5_1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => mgt_rxdata(30),
      I1 => mgt_rxdata(31),
      I2 => mgt_rxdata(29),
      O => U0_xaui_inst_receiver_code_error_5_1_1361
    );
  U0_xaui_inst_receiver_code_error_5_2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(26),
      I1 => mgt_rxdata(27),
      I2 => mgt_rxdata(24),
      I3 => mgt_rxdata(25),
      I4 => U0_xaui_inst_receiver_code_error_5_1_1361,
      I5 => mgt_rxdata(28),
      O => U0_xaui_inst_receiver_code_error_5_2_1362
    );
  U0_xaui_inst_receiver_code_error_5_3 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => mgt_codevalid(3),
      I1 => U0_xaui_inst_receiver_code_error_5_2_1362,
      I2 => mgt_rxcharisk(3),
      O => U0_xaui_inst_receiver_code_error(5)
    );
  U0_xaui_inst_receiver_code_error_4_1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => mgt_rxdata(14),
      I1 => mgt_rxdata(15),
      I2 => mgt_rxdata(13),
      O => U0_xaui_inst_receiver_code_error_4_1_1363
    );
  U0_xaui_inst_receiver_code_error_4_2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(10),
      I1 => mgt_rxdata(11),
      I2 => mgt_rxdata(8),
      I3 => mgt_rxdata(9),
      I4 => U0_xaui_inst_receiver_code_error_4_1_1363,
      I5 => mgt_rxdata(12),
      O => U0_xaui_inst_receiver_code_error_4_2_1364
    );
  U0_xaui_inst_receiver_code_error_4_3 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => mgt_codevalid(1),
      I1 => U0_xaui_inst_receiver_code_error_4_2_1364,
      I2 => mgt_rxcharisk(1),
      O => U0_xaui_inst_receiver_code_error(4)
    );
  U0_xaui_inst_receiver_code_error_3_1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => mgt_rxdata(54),
      I1 => mgt_rxdata(55),
      I2 => mgt_rxdata(53),
      O => U0_xaui_inst_receiver_code_error_3_1_1365
    );
  U0_xaui_inst_receiver_code_error_3_2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(50),
      I1 => mgt_rxdata(51),
      I2 => mgt_rxdata(48),
      I3 => mgt_rxdata(49),
      I4 => U0_xaui_inst_receiver_code_error_3_1_1365,
      I5 => mgt_rxdata(52),
      O => U0_xaui_inst_receiver_code_error_3_2_1366
    );
  U0_xaui_inst_receiver_code_error_3_3 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => mgt_codevalid(6),
      I1 => U0_xaui_inst_receiver_code_error_3_2_1366,
      I2 => mgt_rxcharisk(6),
      O => U0_xaui_inst_receiver_code_error(3)
    );
  U0_xaui_inst_receiver_code_error_2_1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => mgt_rxdata(38),
      I1 => mgt_rxdata(39),
      I2 => mgt_rxdata(37),
      O => U0_xaui_inst_receiver_code_error_2_1_1367
    );
  U0_xaui_inst_receiver_code_error_2_2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(34),
      I1 => mgt_rxdata(35),
      I2 => mgt_rxdata(32),
      I3 => mgt_rxdata(33),
      I4 => U0_xaui_inst_receiver_code_error_2_1_1367,
      I5 => mgt_rxdata(36),
      O => U0_xaui_inst_receiver_code_error_2_2_1368
    );
  U0_xaui_inst_receiver_code_error_2_3 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => mgt_codevalid(4),
      I1 => U0_xaui_inst_receiver_code_error_2_2_1368,
      I2 => mgt_rxcharisk(4),
      O => U0_xaui_inst_receiver_code_error(2)
    );
  U0_xaui_inst_receiver_code_error_1_1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => mgt_rxdata(22),
      I1 => mgt_rxdata(23),
      I2 => mgt_rxdata(21),
      O => U0_xaui_inst_receiver_code_error_1_1_1369
    );
  U0_xaui_inst_receiver_code_error_1_2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(18),
      I1 => mgt_rxdata(19),
      I2 => mgt_rxdata(16),
      I3 => mgt_rxdata(17),
      I4 => U0_xaui_inst_receiver_code_error_1_1_1369,
      I5 => mgt_rxdata(20),
      O => U0_xaui_inst_receiver_code_error_1_2_1370
    );
  U0_xaui_inst_receiver_code_error_1_3 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => mgt_codevalid(2),
      I1 => U0_xaui_inst_receiver_code_error_1_2_1370,
      I2 => mgt_rxcharisk(2),
      O => U0_xaui_inst_receiver_code_error(1)
    );
  U0_xaui_inst_receiver_code_error_0_1 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => mgt_rxdata(6),
      I1 => mgt_rxdata(7),
      I2 => mgt_rxdata(5),
      O => U0_xaui_inst_receiver_code_error_0_1_1371
    );
  U0_xaui_inst_receiver_code_error_0_2 : LUT6
    generic map(
      INIT => X"FFF79777FFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(2),
      I1 => mgt_rxdata(3),
      I2 => mgt_rxdata(0),
      I3 => mgt_rxdata(1),
      I4 => U0_xaui_inst_receiver_code_error_0_1_1371,
      I5 => mgt_rxdata(4),
      O => U0_xaui_inst_receiver_code_error_0_2_1372
    );
  U0_xaui_inst_receiver_code_error_0_3 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => mgt_codevalid(0),
      I1 => U0_xaui_inst_receiver_code_error_0_2_1372,
      I2 => mgt_rxcharisk(0),
      O => U0_xaui_inst_receiver_code_error(0)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_7_SW0 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(56),
      I1 => mgt_rxdata(57),
      I2 => mgt_rxdata(58),
      I3 => mgt_rxcharisk(7),
      I4 => mgt_codevalid(7),
      O => N40
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_7_Q : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => mgt_rxdata(60),
      I1 => mgt_rxdata(59),
      I2 => mgt_rxdata(61),
      I3 => mgt_rxdata(63),
      I4 => N40,
      I5 => mgt_rxdata(62),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(7)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_6_SW0 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(40),
      I1 => mgt_rxdata(41),
      I2 => mgt_rxdata(42),
      I3 => mgt_rxcharisk(5),
      I4 => mgt_codevalid(5),
      O => N42
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_6_Q : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => mgt_rxdata(44),
      I1 => mgt_rxdata(43),
      I2 => mgt_rxdata(45),
      I3 => mgt_rxdata(47),
      I4 => N42,
      I5 => mgt_rxdata(46),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(6)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_5_SW0 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(24),
      I1 => mgt_rxdata(25),
      I2 => mgt_rxdata(26),
      I3 => mgt_rxcharisk(3),
      I4 => mgt_codevalid(3),
      O => N44
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_5_Q : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => mgt_rxdata(28),
      I1 => mgt_rxdata(27),
      I2 => mgt_rxdata(29),
      I3 => mgt_rxdata(31),
      I4 => N44,
      I5 => mgt_rxdata(30),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(5)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_4_SW0 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => mgt_rxdata(12),
      I1 => mgt_rxdata(11),
      I2 => mgt_rxdata(10),
      I3 => mgt_rxcharisk(1),
      I4 => mgt_codevalid(1),
      O => N46
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_4_Q : LUT6
    generic map(
      INIT => X"0002000000000000"
    )
    port map (
      I0 => mgt_rxdata(14),
      I1 => mgt_rxdata(9),
      I2 => mgt_rxdata(8),
      I3 => mgt_rxdata(15),
      I4 => mgt_rxdata(13),
      I5 => N46,
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(4)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_3_SW0 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(48),
      I1 => mgt_rxdata(49),
      I2 => mgt_rxdata(50),
      I3 => mgt_rxcharisk(6),
      I4 => mgt_codevalid(6),
      O => N48
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_3_Q : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => mgt_rxdata(52),
      I1 => mgt_rxdata(51),
      I2 => mgt_rxdata(53),
      I3 => mgt_rxdata(55),
      I4 => N48,
      I5 => mgt_rxdata(54),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(3)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_2_SW0 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(32),
      I1 => mgt_rxdata(33),
      I2 => mgt_rxdata(34),
      I3 => mgt_rxcharisk(4),
      I4 => mgt_codevalid(4),
      O => N50
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_2_Q : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => mgt_rxdata(36),
      I1 => mgt_rxdata(35),
      I2 => mgt_rxdata(37),
      I3 => mgt_rxdata(39),
      I4 => N50,
      I5 => mgt_rxdata(38),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(2)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_1_SW0 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(16),
      I1 => mgt_rxdata(17),
      I2 => mgt_rxdata(18),
      I3 => mgt_rxcharisk(2),
      I4 => mgt_codevalid(2),
      O => N52
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_1_Q : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => mgt_rxdata(20),
      I1 => mgt_rxdata(19),
      I2 => mgt_rxdata(21),
      I3 => mgt_rxdata(23),
      I4 => N52,
      I5 => mgt_rxdata(22),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(1)
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_0_SW0 : LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(0),
      I1 => mgt_rxdata(1),
      I2 => mgt_rxdata(2),
      I3 => mgt_rxcharisk(0),
      I4 => mgt_codevalid(0),
      O => N54
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a_0_Q : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => mgt_rxdata(4),
      I1 => mgt_rxdata(3),
      I2 => mgt_rxdata(5),
      I3 => mgt_rxdata(7),
      I4 => N54,
      I5 => mgt_rxdata(6),
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_got_a(0)
    );
  U0_xaui_inst_receiver_recoder_error_lane_0_0_1 : LUT5
    generic map(
      INIT => X"FFD7FFFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(5),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(7),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(6),
      I3 => U0_xaui_inst_receiver_recoder_code_error_pipe(0),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_110_o1,
      O => U0_xaui_inst_receiver_recoder_error_lane_0_0_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_0_0_2 : LUT6
    generic map(
      INIT => X"AAAAFFFEAAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_delay_0_898,
      I1 => U0_xaui_inst_receiver_recoder_lane_term_pipe(1),
      I2 => U0_xaui_inst_receiver_recoder_lane_term_pipe(3),
      I3 => U0_xaui_inst_receiver_recoder_lane_term_pipe(2),
      I4 => U0_xaui_inst_receiver_recoder_lane_term_pipe(0),
      I5 => U0_xaui_inst_receiver_recoder_error_lane_0_0_Q,
      O => U0_xaui_inst_receiver_recoder_error_lane_0_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_2_2_1 : LUT6
    generic map(
      INIT => X"EEEEEEEEEEEFEEEE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_lane_terminate(0),
      I1 => U0_xaui_inst_receiver_recoder_lane_terminate(1),
      I2 => U0_xaui_inst_receiver_recoder_lane_term_pipe(2),
      I3 => U0_xaui_inst_receiver_recoder_lane_term_pipe(0),
      I4 => U0_xaui_inst_receiver_recoder_lane_term_pipe(3),
      I5 => U0_xaui_inst_receiver_recoder_lane_term_pipe(1),
      O => U0_xaui_inst_receiver_recoder_error_lane_2_2_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_2_2_2 : LUT5
    generic map(
      INIT => X"FEAAFEFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_delay_2_900,
      I1 => U0_xaui_inst_receiver_recoder_lane_terminate(0),
      I2 => U0_xaui_inst_receiver_recoder_lane_terminate(1),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(22),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(23),
      O => U0_xaui_inst_receiver_recoder_error_lane_2_2_1_1383
    );
  U0_xaui_inst_receiver_recoder_error_lane_2_2_3 : LUT6
    generic map(
      INIT => X"0010000000000010"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_lane_term_pipe(2),
      I1 => U0_xaui_inst_receiver_recoder_lane_term_pipe(0),
      I2 => U0_xaui_inst_receiver_recoder_lane_term_pipe(3),
      I3 => U0_xaui_inst_receiver_recoder_lane_term_pipe(1),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(23),
      I5 => U0_xaui_inst_receiver_recoder_rxd_pipe(22),
      O => U0_xaui_inst_receiver_recoder_error_lane_2_2_2_1384
    );
  U0_xaui_inst_receiver_recoder_error_lane_2_2_4 : LUT6
    generic map(
      INIT => X"FFFBFFF0FFFFFFF0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_pipe(2),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(21),
      I2 => U0_xaui_inst_receiver_recoder_error_lane_2_2_1_1383,
      I3 => U0_xaui_inst_receiver_recoder_error_lane_2_2_2_1384,
      I4 => U0_xaui_inst_receiver_recoder_error_lane_2_2_Q,
      I5 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_114_o1,
      O => U0_xaui_inst_receiver_recoder_error_lane_2_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_1_1_1 : LUT6
    generic map(
      INIT => X"AAAAAA2AAAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_lane_terminate(0),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(15),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(13),
      I3 => U0_xaui_inst_receiver_recoder_code_error_pipe(1),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(14),
      I5 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1,
      O => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_1_1_2 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_lane_term_pipe(1),
      I1 => U0_xaui_inst_receiver_recoder_lane_term_pipe(0),
      I2 => U0_xaui_inst_receiver_recoder_lane_term_pipe(2),
      I3 => U0_xaui_inst_receiver_recoder_lane_term_pipe(3),
      O => U0_xaui_inst_receiver_recoder_error_lane_1_1_1_1386
    );
  U0_xaui_inst_receiver_recoder_error_lane_1_1_3 : LUT6
    generic map(
      INIT => X"EBFF0000FFFF0000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_pipe(1),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(14),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(15),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(13),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_1_1_1_1386,
      I5 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_112_o1,
      O => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387
    );
  U0_xaui_inst_receiver_recoder_error_lane_3_3_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(30),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(31),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(29),
      I3 => U0_xaui_inst_receiver_recoder_code_error_pipe(3),
      O => N56
    );
  U0_xaui_inst_receiver_recoder_error_lane_3_3_Q : LUT6
    generic map(
      INIT => X"FFFEAAAAFFFEFFFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_delay_3_901,
      I1 => U0_xaui_inst_receiver_recoder_lane_terminate(2),
      I2 => U0_xaui_inst_receiver_recoder_lane_terminate(1),
      I3 => U0_xaui_inst_receiver_recoder_lane_terminate(0),
      I4 => N56,
      I5 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_116_o2,
      O => U0_xaui_inst_receiver_recoder_error_lane_3_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_6_6_1 : LUT6
    generic map(
      INIT => X"FFAAFEFFFEAAFEFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_pipe(2),
      I1 => U0_xaui_inst_receiver_recoder_lane_terminate(4),
      I2 => U0_xaui_inst_receiver_recoder_lane_terminate(5),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(54),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(55),
      I5 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_mux_97_OUT(2),
      O => U0_xaui_inst_receiver_recoder_error_lane_6_6_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_6_6_2 : LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(53),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(52),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(49),
      I3 => U0_xaui_inst_receiver_recoder_code_error_pipe(6),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(48),
      I5 => U0_xaui_inst_receiver_recoder_rxd_pipe(51),
      O => U0_xaui_inst_receiver_recoder_error_lane_6_6_1_1390
    );
  U0_xaui_inst_receiver_recoder_error_lane_6_6_3 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxc_pipe(6),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(50),
      O => U0_xaui_inst_receiver_recoder_error_lane_6_6_2_1391
    );
  U0_xaui_inst_receiver_recoder_error_lane_6_6_4 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEEF0E0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_lane_terminate(5),
      I1 => U0_xaui_inst_receiver_recoder_lane_terminate(4),
      I2 => U0_xaui_inst_receiver_recoder_error_lane_6_6_2_1391,
      I3 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_mux_97_OUT(2),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_6_6_1_1390,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_6_6_Q,
      O => U0_xaui_inst_receiver_recoder_error_lane_6_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_5_5_1 : LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(45),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(44),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(41),
      I3 => U0_xaui_inst_receiver_recoder_code_error_pipe(5),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(40),
      I5 => U0_xaui_inst_receiver_recoder_rxd_pipe(43),
      O => U0_xaui_inst_receiver_recoder_error_lane_5_5_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_5_5_2 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxc_pipe(5),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(42),
      I2 => U0_xaui_inst_receiver_recoder_error_lane_5_5_Q,
      O => U0_xaui_inst_receiver_recoder_error_lane_5_5_1_1393
    );
  U0_xaui_inst_receiver_recoder_error_lane_5_5_3 : LUT6
    generic map(
      INIT => X"FFFFFFF0FDF9FDF0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(47),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(46),
      I2 => U0_xaui_inst_receiver_recoder_code_error_pipe(1),
      I3 => U0_xaui_inst_receiver_recoder_lane_terminate(4),
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_mux_97_OUT(1),
      I5 => U0_xaui_inst_receiver_recoder_error_lane_5_5_1_1393,
      O => U0_xaui_inst_receiver_recoder_error_lane_5_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_7_7_1 : LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(63),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(62),
      I2 => U0_xaui_inst_receiver_recoder_code_error_pipe(7),
      I3 => U0_xaui_inst_receiver_recoder_rxd_pipe(56),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(57),
      I5 => U0_xaui_inst_receiver_recoder_rxd_pipe(61),
      O => U0_xaui_inst_receiver_recoder_error_lane_7_7_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_7_7_2 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(59),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(60),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(58),
      I3 => U0_xaui_inst_receiver_recoder_rxc_pipe(7),
      O => U0_xaui_inst_receiver_recoder_error_lane_7_7_1_1395
    );
  U0_xaui_inst_receiver_recoder_error_lane_7_7_3 : LUT6
    generic map(
      INIT => X"FFFEFFFEFFFECCCC"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_lane_terminate(6),
      I1 => U0_xaui_inst_receiver_recoder_code_error_pipe(3),
      I2 => U0_xaui_inst_receiver_recoder_lane_terminate(5),
      I3 => U0_xaui_inst_receiver_recoder_lane_terminate(4),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_7_7_1_1395,
      I5 => U0_xaui_inst_receiver_recoder_error_lane_7_7_Q,
      O => U0_xaui_inst_receiver_recoder_error_lane_7_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_4_4_1 : LUT6
    generic map(
      INIT => X"FFFFFFF9FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(38),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(39),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(33),
      I3 => U0_xaui_inst_receiver_recoder_code_error_pipe(4),
      I4 => U0_xaui_inst_receiver_recoder_rxd_pipe(32),
      I5 => U0_xaui_inst_receiver_recoder_rxd_pipe(37),
      O => U0_xaui_inst_receiver_recoder_error_lane_4_4_Q
    );
  U0_xaui_inst_receiver_recoder_error_lane_4_4_2 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_pipe(35),
      I1 => U0_xaui_inst_receiver_recoder_rxd_pipe(36),
      I2 => U0_xaui_inst_receiver_recoder_rxd_pipe(34),
      I3 => U0_xaui_inst_receiver_recoder_rxc_pipe(4),
      I4 => U0_xaui_inst_receiver_recoder_error_lane_4_4_Q,
      O => U0_xaui_inst_receiver_recoder_error_lane_4_4_1_1397
    );
  U0_xaui_inst_receiver_recoder_error_lane_4_4_3 : LUT6
    generic map(
      INIT => X"AAAAFFFEAAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_pipe(0),
      I1 => U0_xaui_inst_receiver_recoder_lane_terminate(3),
      I2 => U0_xaui_inst_receiver_recoder_lane_terminate(2),
      I3 => U0_xaui_inst_receiver_recoder_lane_terminate(1),
      I4 => U0_xaui_inst_receiver_recoder_lane_terminate(0),
      I5 => U0_xaui_inst_receiver_recoder_error_lane_4_4_1_1397,
      O => U0_xaui_inst_receiver_recoder_error_lane_4_Q
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(25),
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(26),
      I2 => U0_xaui_inst_receiver_recoder_rxc_half_pipe(3),
      I3 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(24),
      O => N58
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o : LUT6
    generic map(
      INIT => X"0008080000000008"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(27),
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(28),
      I2 => N58,
      I3 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(30),
      I4 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(31),
      I5 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(29),
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_108_o_761
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(17),
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(18),
      I2 => U0_xaui_inst_receiver_recoder_rxc_half_pipe(2),
      I3 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(16),
      O => N60
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o : LUT6
    generic map(
      INIT => X"0008080000000008"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(19),
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(20),
      I2 => N60,
      I3 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(22),
      I4 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(23),
      I5 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(21),
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_106_o_762
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(9),
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(10),
      I2 => U0_xaui_inst_receiver_recoder_rxc_half_pipe(1),
      I3 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(8),
      O => N62
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o : LUT6
    generic map(
      INIT => X"0000000029000000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(13),
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(15),
      I2 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(14),
      I3 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(12),
      I4 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(11),
      I5 => N62,
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_763
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(1),
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(2),
      I2 => U0_xaui_inst_receiver_recoder_rxc_half_pipe(0),
      I3 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(0),
      O => N64
    );
  U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o : LUT6
    generic map(
      INIT => X"0008080000000008"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(3),
      I1 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(4),
      I2 => N64,
      I3 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(6),
      I4 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(7),
      I5 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(5),
      O => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_102_o_764
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_7_AND_204_o : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => N66,
      I1 => mgt_rxdata(62),
      I2 => mgt_rxdata(61),
      I3 => mgt_rxdata(60),
      I4 => mgt_rxdata(59),
      I5 => mgt_rxdata(63),
      O => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_7_AND_204_o_848
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_6_AND_202_o : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => N68,
      I1 => mgt_rxdata(46),
      I2 => mgt_rxdata(45),
      I3 => mgt_rxdata(44),
      I4 => mgt_rxdata(43),
      I5 => mgt_rxdata(47),
      O => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_6_AND_202_o_849
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_5_AND_200_o : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => N70,
      I1 => mgt_rxdata(30),
      I2 => mgt_rxdata(29),
      I3 => mgt_rxdata(28),
      I4 => mgt_rxdata(27),
      I5 => mgt_rxdata(31),
      O => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_5_AND_200_o_850
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_4_AND_198_o : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => mgt_rxdata(14),
      I1 => mgt_rxdata(13),
      I2 => mgt_rxdata(15),
      I3 => mgt_rxdata(9),
      I4 => N72,
      I5 => mgt_rxdata(8),
      O => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_4_AND_198_o_851
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_3_AND_196_o : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => N74,
      I1 => mgt_rxdata(54),
      I2 => mgt_rxdata(53),
      I3 => mgt_rxdata(52),
      I4 => mgt_rxdata(51),
      I5 => mgt_rxdata(55),
      O => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_3_AND_196_o_852
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_2_AND_194_o : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => N76,
      I1 => mgt_rxdata(38),
      I2 => mgt_rxdata(37),
      I3 => mgt_rxdata(36),
      I4 => mgt_rxdata(35),
      I5 => mgt_rxdata(39),
      O => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_2_AND_194_o_853
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_1_AND_192_o : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => N78,
      I1 => mgt_rxdata(22),
      I2 => mgt_rxdata(21),
      I3 => mgt_rxdata(20),
      I4 => mgt_rxdata(19),
      I5 => mgt_rxdata(23),
      O => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_1_AND_192_o_854
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_0_AND_190_o : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => N80,
      I1 => mgt_rxdata(6),
      I2 => mgt_rxdata(5),
      I3 => mgt_rxdata(4),
      I4 => mgt_rxdata(3),
      I5 => mgt_rxdata(7),
      O => U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_0_AND_190_o_855
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT2_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q,
      I1 => mgt_rxlock(3),
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_4_Q,
      O => N82
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT2 : LUT6
    generic map(
      INIT => X"00000F1E0000F0F0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_2_Q,
      I4 => N82,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_4_1_SW0 : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003,
      I3 => U0_xaui_inst_signal_detect_int(3),
      O => N84
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_4_1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      I5 => N84,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_21_SW0 : LUT5
    generic map(
      INIT => X"99999995"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_0_Q,
      O => N86
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_21 : LUT6
    generic map(
      INIT => X"0000000000008020"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_signal_detect_int(3),
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      I5 => N86,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_22_SW0 : LUT6
    generic map(
      INIT => X"AB55BBBB5511BB55"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1_Q,
      O => N88
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_22 : LUT5
    generic map(
      INIT => X"00000082"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003,
      I2 => U0_xaui_inst_signal_detect_int(3),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      I4 => N88,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT5 : LUT6
    generic map(
      INIT => X"0000080000000000"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I4 => N90,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_27 : LUT6
    generic map(
      INIT => X"AAAAAAAA11441164"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_28 : LUT5
    generic map(
      INIT => X"AAAA8008"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24,
      I2 => U0_xaui_inst_signal_detect_int(3),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_3_1_SW0 : LUT5
    generic map(
      INIT => X"97A95755"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      O => N92
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_3_1 : LUT6
    generic map(
      INIT => X"80000080A20000A2"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_signal_detect_int(3),
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003,
      I5 => N92,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT2_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q,
      I1 => mgt_rxlock(2),
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_4_Q,
      O => N94
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT2 : LUT6
    generic map(
      INIT => X"00000F1E0000F0F0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_2_Q,
      I4 => N94,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_4_1_SW0 : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025,
      I3 => U0_xaui_inst_signal_detect_int(2),
      O => N96
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_4_1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q,
      I5 => N96,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_21_SW0 : LUT5
    generic map(
      INIT => X"99999995"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_0_Q,
      O => N98
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_21 : LUT6
    generic map(
      INIT => X"0000000000800020"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      I4 => U0_xaui_inst_signal_detect_int(2),
      I5 => N98,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_22_SW0 : LUT6
    generic map(
      INIT => X"AB55BBBB5511BB55"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1_Q,
      O => N100
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_22 : LUT5
    generic map(
      INIT => X"00000802"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_signal_detect_int(2),
      I4 => N100,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT5 : LUT6
    generic map(
      INIT => X"0000080000000000"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I4 => N102,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_27 : LUT6
    generic map(
      INIT => X"AAAAAAAA11441164"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_28 : LUT5
    generic map(
      INIT => X"AAAA8008"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24,
      I2 => U0_xaui_inst_signal_detect_int(2),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_3_1_SW0 : LUT5
    generic map(
      INIT => X"97A95755"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q,
      O => N104
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_3_1 : LUT6
    generic map(
      INIT => X"80000080A20000A2"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_signal_detect_int(2),
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025,
      I5 => N104,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT2_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q,
      I1 => mgt_rxlock(1),
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_4_Q,
      O => N106
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT2 : LUT6
    generic map(
      INIT => X"00000F1E0000F0F0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_2_Q,
      I4 => N106,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_4_1_SW0 : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047,
      I3 => U0_xaui_inst_signal_detect_int(1),
      O => N108
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_4_1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q,
      I5 => N108,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_21_SW0 : LUT5
    generic map(
      INIT => X"99999995"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_0_Q,
      O => N110
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_21 : LUT6
    generic map(
      INIT => X"0000000000800020"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      I4 => U0_xaui_inst_signal_detect_int(1),
      I5 => N110,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_22_SW0 : LUT6
    generic map(
      INIT => X"AB55BBBB5511BB55"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1_Q,
      O => N112
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_22 : LUT5
    generic map(
      INIT => X"00000802"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_signal_detect_int(1),
      I4 => N112,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT5 : LUT6
    generic map(
      INIT => X"0000080000000000"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I4 => N114,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_27 : LUT6
    generic map(
      INIT => X"AAAAAAAA11441164"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_28 : LUT5
    generic map(
      INIT => X"AAAA8008"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24,
      I2 => U0_xaui_inst_signal_detect_int(1),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_3_1_SW0 : LUT5
    generic map(
      INIT => X"97A95755"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q,
      O => N116
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_3_1 : LUT6
    generic map(
      INIT => X"80000080A20000A2"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_signal_detect_int(1),
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047,
      I5 => N116,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT2_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q,
      I1 => mgt_rxlock(0),
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_4_Q,
      O => N118
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT2 : LUT6
    generic map(
      INIT => X"00000F1E0000F0F0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_2_Q,
      I4 => N118,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_4_1_SW0 : LUT4
    generic map(
      INIT => X"8008"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069,
      I3 => U0_xaui_inst_signal_detect_int(0),
      O => N120
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_4_1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q,
      I5 => N120,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_21_SW0 : LUT5
    generic map(
      INIT => X"99999995"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_0_Q,
      O => N122
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_21 : LUT6
    generic map(
      INIT => X"0000000000800020"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      I4 => U0_xaui_inst_signal_detect_int(0),
      I5 => N122,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_1_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_22_SW0 : LUT6
    generic map(
      INIT => X"AB55BBBB5511BB55"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1_Q,
      O => N124
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_22 : LUT5
    generic map(
      INIT => X"00000802"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_signal_detect_int(0),
      I4 => N124,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT5 : LUT6
    generic map(
      INIT => X"0000080000000000"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I4 => N126,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_27 : LUT6
    generic map(
      INIT => X"AAAAAAAA11441164"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_28 : LUT5
    generic map(
      INIT => X"AAAA8008"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_24,
      I2 => U0_xaui_inst_signal_detect_int(0),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_3_1_SW0 : LUT5
    generic map(
      INIT => X"97A95755"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q,
      O => N128
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_3_1 : LUT6
    generic map(
      INIT => X"80000080A20000A2"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_signal_detect_int(0),
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069,
      I5 => N128,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o1 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(9),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(8),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(7),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we_1106,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o1_1442
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(5),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(6),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(4),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(15),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o2_1443
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o3 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(13),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(14),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(12),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(11),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(10),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o3_1444
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o4 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o3_1444,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o2_1443,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o1_1442,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(7),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(14),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(9),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(13),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(15),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(11),
      O => N132
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(6),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(5),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(8),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(12),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(10),
      I5 => N132,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_n0185_15_1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(7),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(6),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(9),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(8),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(11),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(10),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_0(15)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_n0185_15_2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(13),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(12),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(15),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(14),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(5),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(4),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_15_1_1448
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_n0185_15_3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_0(15),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_15_1_1448,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_n0185
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_3_1_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(2),
      O => N134
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_3_1 : LUT6
    generic map(
      INIT => X"0F0F00009FAF99AA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I3 => N134,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_3_11,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_load_en,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count3
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In2 : LUT6
    generic map(
      INIT => X"4040404000000040"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In3_1451
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In1_1452
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In2_1453
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In3 : LUT6
    generic map(
      INIT => X"FFFFF800FFFF8800"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In2_1453,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In1_1452,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In2_1147,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_In
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In1 : LUT5
    generic map(
      INIT => X"00041014"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In1_1454
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In2 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In3_1455
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In3 : LUT6
    generic map(
      INIT => X"EEE6EE66EEE2EE62"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In3_1455,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In1_1454,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In2_1147,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_prtad_4_shift_reg_8_equal_48_o5_SW0 : LUT6
    generic map(
      INIT => X"7FBFDFEFF7FBFDFE"
    )
    port map (
      I0 => prtad(2),
      I1 => prtad(1),
      I2 => prtad(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(6),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(5),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(4),
      O => N138
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_prtad_4_shift_reg_8_equal_48_o5 : LUT5
    generic map(
      INIT => X"00008421"
    )
    port map (
      I0 => prtad(4),
      I1 => prtad(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(8),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(7),
      I4 => N138,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_prtad_4_shift_reg_8_equal_48_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1 : LUT6
    generic map(
      INIT => X"00BB10FB00BB10BB"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      I5 => N140,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_load_en
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o1 : LUT5
    generic map(
      INIT => X"00000100"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o1_1458
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT16 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT12_1460
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT17 : LUT6
    generic map(
      INIT => X"0155015501110110"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I4 => NlwRenamedSig_OI_U0_mgt_loopback_keep,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT12_1460,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT13_1461
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT18 : LUT6
    generic map(
      INIT => X"0000001010000010"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I5 => U0_xaui_inst_type_sel_reg(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT14_1462
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT110 : LUT6
    generic map(
      INIT => X"F2F0FFF0F2F0F0F0"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT13_1461,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT1,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT101,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT15_1463,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_0_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT2_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_rx_local_fault_reg_1090,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      O => N142
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT34 : LUT6
    generic map(
      INIT => X"ECFCECECCCFCCCCC"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_mgt_powerdown_keep,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT3,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT101,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT32,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_data_rd(13),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_11_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT4_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_aligned_reg_1089,
      O => N144
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT6_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U0_xaui_inst_type_sel_reg(1),
      I1 => NlwRenamedSig_OI_U0_mgt_loopback_keep,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      O => N146
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT73 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I1 => NlwRenamedSig_OI_U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT72
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT83 : LUT6
    generic map(
      INIT => X"A080A28220002202"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg(1),
      I4 => U0_xaui_inst_type_sel_reg(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT82
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT93 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT92
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT95 : LUT6
    generic map(
      INIT => X"0000008400000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11_1758,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT94
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT96 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT95_1473
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT113 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT113_1475
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT12_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xaui_inst_type_sel_reg(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => U0_xaui_inst_type_sel_reg(0),
      O => N148
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT14_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_tx_local_fault_reg_1091,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_rx_local_fault_reg_1090,
      O => N150
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(9),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(8),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(7),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(6),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(5),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(4),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(15),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(14),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3 : LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(12),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(13),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(11),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(10),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(9),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(8),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(7),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(6),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(5),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(15),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(14),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3 : LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(12),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(13),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(11),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(10),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_211_o_SW0 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      O => N152
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_211_o : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(3),
      I4 => N152,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(2),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdc_rising_bit_count_4_AND_211_o_1262
    );
  U0_xaui_inst_aligned_sticky : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_aligned_sticky_glue_set_1485,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_aligned_sticky_350
    );
  U0_xaui_inst_rx_local_fault : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_rx_local_fault_glue_set_1486,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_rx_local_fault_351
    );
  U0_xaui_inst_tx_local_fault : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_tx_local_fault_glue_set_1487,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_tx_local_fault_352
    );
  U0_xaui_inst_type_sel_reg_done : FDR
    port map (
      C => usrclk,
      D => N0,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_type_sel_reg_done_353
    );
  U0_xaui_inst_transmitter_recoder_txc_out_7 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_txc_out_7_glue_set_1488,
      R => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      Q => U0_xaui_inst_transmitter_recoder_txc_out(7)
    );
  U0_xaui_inst_transmitter_recoder_txc_out_6 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_txc_out_6_glue_set_1489,
      R => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      Q => U0_xaui_inst_transmitter_recoder_txc_out(6)
    );
  U0_xaui_inst_transmitter_recoder_txc_out_5 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_txc_out_5_glue_set_1490,
      R => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      Q => U0_xaui_inst_transmitter_recoder_txc_out(5)
    );
  U0_xaui_inst_transmitter_recoder_txc_out_4 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_txc_out_4_glue_set_1491,
      R => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      Q => U0_xaui_inst_transmitter_recoder_txc_out(4)
    );
  U0_xaui_inst_transmitter_recoder_txc_out_3 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_txc_out_3_glue_set_1492,
      R => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      Q => U0_xaui_inst_transmitter_recoder_txc_out(3)
    );
  U0_xaui_inst_transmitter_recoder_txc_out_2 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_txc_out_2_glue_set_1493,
      R => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      Q => U0_xaui_inst_transmitter_recoder_txc_out(2)
    );
  U0_xaui_inst_transmitter_recoder_txc_out_1 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_txc_out_1_glue_set_1494,
      R => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      Q => U0_xaui_inst_transmitter_recoder_txc_out(1)
    );
  U0_xaui_inst_transmitter_recoder_txc_out_0 : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_recoder_txc_out_0_glue_set_1495,
      R => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      Q => U0_xaui_inst_transmitter_recoder_txc_out(0)
    );
  U0_xaui_inst_transmitter_align_extra_a : FDR
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_align_extra_a_glue_set_1496,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_align_extra_a_675
    );
  U0_xaui_inst_transmitter_state_machine_next_ifg_is_a : FDS
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_glue_rst_1497,
      S => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_702
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg_glue_set_1498,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => NlwRenamedSig_OI_U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_loopback_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_loopback_reg_rstpot_1499,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => NlwRenamedSig_OI_U0_mgt_loopback_keep
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_powerdown_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_powerdown_reg_rstpot_1500,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => NlwRenamedSig_OI_U0_mgt_powerdown_keep
    );
  U0_xaui_inst_clear_aligned_edge : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_clear_aligned_edge_rstpot_1501,
      Q => U0_xaui_inst_clear_aligned_edge_356
    );
  U0_xaui_inst_clear_local_fault_edge : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_clear_local_fault_edge_rstpot_1502,
      Q => U0_xaui_inst_clear_local_fault_edge_358
    );
  U0_xaui_inst_usrclk_reset : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_usrclk_reset_rstpot_1503,
      Q => U0_xaui_inst_usrclk_reset_354
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_rstpot_1504,
      Q => U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_339
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_q_det : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_rstpot_1505,
      Q => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_464
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_0_11_SW0 : LUT6
    generic map(
      INIT => X"AAAA2230AABA2230"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => N154
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_0_11_SW1 : LUT6
    generic map(
      INIT => X"AAAA0030AABA0030"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => N155
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_0_11_SW2 : LUT6
    generic map(
      INIT => X"AAAA2320ABAA3320"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => N156
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_0_11 : LUT6
    generic map(
      INIT => X"227700FF27270F0F"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => N155,
      I2 => N154,
      I3 => N156,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In2_1147,
      I5 => N140,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_n0218_inv1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(15),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o3_1444,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o2_1443,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o1_1442,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_n0218_inv
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(4),
      I5 => U0_xaui_inst_type_sel_reg(1),
      O => N160
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11_SW1 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      I2 => U0_xaui_inst_type_sel_reg(1),
      O => N161
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW0_SW0 : LUT5
    generic map(
      INIT => X"EFEFE76F"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(2),
      I1 => U0_xaui_inst_type_sel_reg(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(0),
      I3 => U0_xaui_inst_type_sel_reg(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(1),
      O => N163
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW0_SW1 : LUT5
    generic map(
      INIT => X"EFDFF0FF"
    )
    port map (
      I0 => U0_xaui_inst_type_sel_reg(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      I4 => U0_xaui_inst_type_sel_reg(1),
      O => N164
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW0 : LUT6
    generic map(
      INIT => X"00000A0000002200"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => N163,
      I2 => N164,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_prtad_4_shift_reg_8_equal_48_o,
      I4 => N130,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      O => N140
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o1_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1_1757,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1_1759,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      O => N166
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_devad_match1_SW0 : LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEFFF0"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_devad_reg(4),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(3),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2),
      I4 => N166,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In111_1756,
      O => N130
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In1_SW0 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      O => N171
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In1_SW1 : LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      O => N172
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In3 : LUT6
    generic map(
      INIT => X"2222FF220A0AFF0A"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I1 => N172,
      I2 => N171,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In3_1451,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In1,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_n0204_inv1_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I1 => NlwRenamedSig_OI_U0_mgt_powerdown_keep,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(11),
      O => N176
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_powerdown_reg_rstpot : LUT6
    generic map(
      INIT => X"F0F0F0F0AAE2AAAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_mgt_powerdown_keep,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we_1106,
      I2 => N176,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_8_o,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_powerdown_reg_rstpot_1500
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_n0027_SW0_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txc_pipe(7),
      I1 => U0_xaui_inst_transmitter_txd_pipe(58),
      I2 => U0_xaui_inst_transmitter_txd_pipe(57),
      I3 => U0_xaui_inst_transmitter_txd_pipe(56),
      I4 => U0_xaui_inst_transmitter_txd_pipe(59),
      O => N178
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_n0027_SW0_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(50),
      I1 => U0_xaui_inst_transmitter_txd_pipe(49),
      I2 => U0_xaui_inst_transmitter_txd_pipe(48),
      I3 => U0_xaui_inst_transmitter_txc_pipe(6),
      I4 => U0_xaui_inst_transmitter_txd_pipe(51),
      O => N180
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_n0027_SW0_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txc_pipe(5),
      I1 => U0_xaui_inst_transmitter_txd_pipe(42),
      I2 => U0_xaui_inst_transmitter_txd_pipe(41),
      I3 => U0_xaui_inst_transmitter_txd_pipe(40),
      I4 => U0_xaui_inst_transmitter_txd_pipe(43),
      O => N182
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_n0027_SW0_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txc_pipe(4),
      I1 => U0_xaui_inst_transmitter_txd_pipe(34),
      I2 => U0_xaui_inst_transmitter_txd_pipe(33),
      I3 => U0_xaui_inst_transmitter_txd_pipe(32),
      I4 => U0_xaui_inst_transmitter_txd_pipe(35),
      O => N184
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_n0027_SW0_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txc_pipe(3),
      I1 => U0_xaui_inst_transmitter_txd_pipe(26),
      I2 => U0_xaui_inst_transmitter_txd_pipe(25),
      I3 => U0_xaui_inst_transmitter_txd_pipe(24),
      I4 => U0_xaui_inst_transmitter_txd_pipe(27),
      O => N186
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_n0027_SW0_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(18),
      I1 => U0_xaui_inst_transmitter_txd_pipe(17),
      I2 => U0_xaui_inst_transmitter_txd_pipe(16),
      I3 => U0_xaui_inst_transmitter_txc_pipe(2),
      I4 => U0_xaui_inst_transmitter_txd_pipe(19),
      O => N188
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_n0027_SW0_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txc_pipe(1),
      I1 => U0_xaui_inst_transmitter_txd_pipe(9),
      I2 => U0_xaui_inst_transmitter_txd_pipe(8),
      I3 => U0_xaui_inst_transmitter_txd_pipe(10),
      I4 => U0_xaui_inst_transmitter_txd_pipe(11),
      O => N190
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_n0027_SW0_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txc_pipe(0),
      I1 => U0_xaui_inst_transmitter_txd_pipe(2),
      I2 => U0_xaui_inst_transmitter_txd_pipe(1),
      I3 => U0_xaui_inst_transmitter_txd_pipe(0),
      I4 => U0_xaui_inst_transmitter_txd_pipe(3),
      O => N192
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_7_rstpot_1526,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_7_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_6_rstpot_1527,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_6_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_5 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_5_rstpot_1528,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_5_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_4_rstpot_1529,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_4_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_3_rstpot_1530,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_3_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_2_rstpot_1531,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_2_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_1_rstpot_1532,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_1_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_0_rstpot_1533,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_0_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_7_rstpot_1534,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_7_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_6_rstpot_1535,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_6_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_5 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_5_rstpot_1536,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_5_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_4_rstpot_1537,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_4_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_3_rstpot_1538,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_3_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_2_rstpot_1539,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_2_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_1_rstpot_1540,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_1_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_0_rstpot_1541,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_0_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_7_rstpot_1542,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_7_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_6_rstpot_1543,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_6_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_5 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_5_rstpot_1544,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_5_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_4_rstpot_1545,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_4_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_3_rstpot_1546,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_3_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_2_rstpot_1547,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_2_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_1_rstpot_1548,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_1_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_0_rstpot_1549,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_0_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7_rstpot_1550,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_6_rstpot_1551,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_6_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_5 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_5_rstpot_1552,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_5_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_4_rstpot_1553,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_4_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_3_rstpot_1554,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_3_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_2_rstpot_1555,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_2_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_1_rstpot_1556,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_1_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_0_rstpot_1557,
      Q => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_0_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_7_rstpot_1558,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_7_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_6_rstpot_1559,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_6_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_5 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_5_rstpot_1560,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_5_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_4_rstpot_1561,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_4_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_3_rstpot_1562,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_3_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_2_rstpot_1563,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_2_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_1_rstpot_1564,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_1_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_0_rstpot_1565,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_0_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_7_rstpot_1566,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_7_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_6_rstpot_1567,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_6_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_5 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_5_rstpot_1568,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_5_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_4_rstpot_1569,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_4_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_3_rstpot_1570,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_3_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_2_rstpot_1571,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_2_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_1_rstpot_1572,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_1_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_0_rstpot_1573,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_0_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_7_rstpot_1574,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_7_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_6_rstpot_1575,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_6_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_5 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_5_rstpot_1576,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_5_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_4_rstpot_1577,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_4_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_3_rstpot_1578,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_3_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_2_rstpot_1579,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_2_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_1_rstpot_1580,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_1_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_0_rstpot_1581,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_0_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7_rstpot_1582,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_6_rstpot_1583,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_6_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_5 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_5_rstpot_1584,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_5_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_4_rstpot_1585,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_4_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_3_rstpot_1586,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_3_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_2 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_2_rstpot_1587,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_2_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_1_rstpot_1588,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_1_Q
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_0_rstpot_1589,
      Q => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_0_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o1_SW1 : LUT6
    generic map(
      INIT => X"00000000FE000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      O => N196
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o1_SW2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      O => N197
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o1_SW3 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1_1757,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      O => N198
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11 : LUT6
    generic map(
      INIT => X"0F0F0F0F02520757"
    )
    port map (
      I0 => N161,
      I1 => N198,
      I2 => N160,
      I3 => N197,
      I4 => N196,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT75 : LUT6
    generic map(
      INIT => X"FAF0EAC0FAF0AA00"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(14),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT72,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT101,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT17_1145,
      I4 => N200,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd101,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_15_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT115 : LUT6
    generic map(
      INIT => X"FAF0EAC0FAF0AA00"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT113_1475,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT101,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT17_1145,
      I4 => N204,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd101,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_4_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26_SW0 : LUT6
    generic map(
      INIT => X"3F3F7F7F0C3F337F"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_0_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      O => N206
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26_SW1 : LUT6
    generic map(
      INIT => X"60667177F9F6F9F7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_0_Q,
      O => N207
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26 : LUT5
    generic map(
      INIT => X"00400141"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_0_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003,
      I2 => U0_xaui_inst_signal_detect_int(3),
      I3 => N207,
      I4 => N206,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26_SW0 : LUT6
    generic map(
      INIT => X"3A2F3AAF3F3F3FFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q,
      O => N209
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26_SW1 : LUT6
    generic map(
      INIT => X"60667177F9F6F9F7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_3_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_2_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_0_Q,
      O => N210
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26 : LUT5
    generic map(
      INIT => X"00400141"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_0_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025,
      I2 => U0_xaui_inst_signal_detect_int(2),
      I3 => N210,
      I4 => N209,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26_SW0 : LUT6
    generic map(
      INIT => X"3A2F3AAF3F3F3FFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q,
      O => N212
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26_SW1 : LUT6
    generic map(
      INIT => X"60667177F9F6F9F7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_3_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_2_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_0_Q,
      O => N213
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26 : LUT5
    generic map(
      INIT => X"00400141"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_0_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047,
      I2 => U0_xaui_inst_signal_detect_int(1),
      I3 => N213,
      I4 => N212,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26_SW0 : LUT6
    generic map(
      INIT => X"3A2F3AAF3F3F3FFF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q,
      O => N215
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26_SW1 : LUT6
    generic map(
      INIT => X"60667177F9F6F9F7"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_3_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_2_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_0_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_0_Q,
      O => N216
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_26 : LUT5
    generic map(
      INIT => X"00400141"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_0_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069,
      I2 => U0_xaui_inst_signal_detect_int(0),
      I3 => N216,
      I4 => N215,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_p_state_comb_state_temp_0_23
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_n01881_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(15),
      O => N218
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg_glue_set : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAAAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we_1106,
      I2 => N218,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_8_o,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_n0218_inv,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg_glue_set_1498
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o3 : LUT6
    generic map(
      INIT => X"0000005000001111"
    )
    port map (
      I0 => U0_xaui_inst_type_sel_reg(1),
      I1 => N160,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o1_1458,
      I3 => N164,
      I4 => N130,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW1 : LUT4
    generic map(
      INIT => X"AFA2"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      O => N222
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW2 : LUT4
    generic map(
      INIT => X"FD10"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1_1759,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      O => N223
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_2 : FD
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_2_rstpot_1639,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_2_rstpot : LUT5
    generic map(
      INIT => X"FFAAA9AA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0185_inv,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_load_en,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count_2_rstpot_1639
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(1)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(2)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(3)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(4)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(4),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(4)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(4),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(5),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(5)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(4),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(5),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(5)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_n0198_inv1_SW0 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_mgt_loopback_keep,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we_1106,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(14),
      O => N225
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_n0198_inv1_SW1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I1 => NlwRenamedSig_OI_U0_mgt_loopback_keep,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      O => N226
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_loopback_reg_rstpot : LUT6
    generic map(
      INIT => X"F3C0BB88E2E2AAAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_mgt_loopback_keep,
      I1 => U0_xaui_inst_type_sel_reg(1),
      I2 => N225,
      I3 => N226,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_8_o,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_mdio_we_AND_259_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_loopback_reg_rstpot_1499
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT31_SW0 : LUT4
    generic map(
      INIT => X"BB60"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N240
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT31_SW1 : LUT5
    generic map(
      INIT => X"F3F30C7F"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N241
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT32 : LUT5
    generic map(
      INIT => X"02002220"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_0_Q,
      I3 => N240,
      I4 => N241,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT31_SW0 : LUT4
    generic map(
      INIT => X"AF48"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N243
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT31_SW1 : LUT5
    generic map(
      INIT => X"FF3307CF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N244
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT32 : LUT5
    generic map(
      INIT => X"02002220"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_0_Q,
      I3 => N243,
      I4 => N244,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT31_SW0 : LUT4
    generic map(
      INIT => X"AF48"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N246
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT31_SW1 : LUT5
    generic map(
      INIT => X"FF3307CF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N247
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT32 : LUT5
    generic map(
      INIT => X"02002220"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_0_Q,
      I3 => N246,
      I4 => N247,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT31_SW0 : LUT4
    generic map(
      INIT => X"AF48"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N249
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT31_SW1 : LUT5
    generic map(
      INIT => X"FF3307CF"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N250
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT32 : LUT5
    generic map(
      INIT => X"02002220"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_0_Q,
      I3 => N249,
      I4 => N250,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_2_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT85_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      O => N264
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT103_SW0 : LUT6
    generic map(
      INIT => X"FFFFFF7FFAFFFF7F"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I5 => U0_xaui_inst_type_sel_reg(1),
      O => N266
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT75_SW0_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      O => N268
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT75_SW0 : LUT6
    generic map(
      INIT => X"00000000000E0000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I3 => N268,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11_1758,
      O => N200
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd10411_SW0 : LUT4
    generic map(
      INIT => X"FF27"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_sync_reg(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      O => N270
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT19 : LUT6
    generic map(
      INIT => X"FFFF004000000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I3 => N270,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT14_1462,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT15_1463
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In21_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(4),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(3),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      O => N272
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In21 : LUT6
    generic map(
      INIT => X"0000030000001100"
    )
    port map (
      I0 => N163,
      I1 => N272,
      I2 => N164,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_prtad_4_shift_reg_8_equal_48_o,
      I4 => N130,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In2_1147
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In11_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7BDE"
    )
    port map (
      I0 => prtad(4),
      I1 => prtad(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(8),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(7),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I5 => N138,
      O => N274
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In11 : LUT6
    generic map(
      INIT => X"F0F0F0F3F0F0F0F5"
    )
    port map (
      I0 => N163,
      I1 => N164,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      I3 => N274,
      I4 => N130,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In1
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd11211_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      O => N276
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT33 : LUT6
    generic map(
      INIT => X"00000C0800000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_tx_local_fault_reg_1091,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I4 => N276,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT32
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_13_o_15_1_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      O => N278
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT115_SW0 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => U0_xaui_inst_type_sel_reg(0),
      I1 => U0_xaui_inst_type_sel_reg(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I3 => N278,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11_1758,
      O => N204
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In21_SW0_SW0 : LUT6
    generic map(
      INIT => X"FFFF7BDEFFFFFFFF"
    )
    port map (
      I0 => prtad(4),
      I1 => prtad(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(8),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(7),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      O => N280
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In21_SW0 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I4 => N138,
      I5 => N280,
      O => N174
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT51 : LUT6
    generic map(
      INIT => X"2AEAEAEA2AEA2A2A"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(12),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I3 => N282,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_8_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_13_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT131 : LUT6
    generic map(
      INIT => X"2AEAEAEA2AEA2A2A"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(5),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I3 => N282,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_8_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_6_Q
    );
  U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_0_1_SW0 : LUT4
    generic map(
      INIT => X"A8FC"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(7),
      I1 => U0_xaui_inst_transmitter_tx_is_idle(1),
      I2 => U0_xaui_inst_transmitter_tx_is_q(1),
      I3 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(2),
      O => N286
    );
  U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_0_1_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_is_q(1),
      I1 => U0_xaui_inst_transmitter_tx_is_idle(1),
      O => N287
    );
  U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_0_1_SW2 : LUT5
    generic map(
      INIT => X"00A8000C"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(7),
      I1 => U0_xaui_inst_transmitter_tx_is_idle(1),
      I2 => U0_xaui_inst_transmitter_tx_is_q(1),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_464,
      I4 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(2),
      O => N288
    );
  U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_0_2 : LUT6
    generic map(
      INIT => X"00FF0F0F44774477"
    )
    port map (
      I0 => N287,
      I1 => U0_xaui_inst_transmitter_a_due(1),
      I2 => N288,
      I3 => N286,
      I4 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(0),
      I5 => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(1),
      O => U0_xaui_inst_transmitter_state_machine_state_1_2_PWR_15_o_wide_mux_20_OUT_0_1
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW3 : LUT5
    generic map(
      INIT => X"55105530"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => N290
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW4 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      O => N291
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW5 : LUT5
    generic map(
      INIT => X"5555044C"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      O => N292
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_4_1 : LUT5
    generic map(
      INIT => X"44774747"
    )
    port map (
      I0 => N291,
      I1 => N136,
      I2 => N290,
      I3 => N292,
      I4 => N140,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count4
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW0_SW3 : LUT6
    generic map(
      INIT => X"AAAAAAAA00AA082A"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => N223,
      I3 => N222,
      I4 => N163,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => N295
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW0_SW4 : LUT6
    generic map(
      INIT => X"AAAAAAAA00AA082A"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => N223,
      I3 => N222,
      I4 => N164,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => N296
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0185_inv1 : LUT6
    generic map(
      INIT => X"CECECEC4C4CEC4C4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_prtad_4_shift_reg_8_equal_48_o,
      I1 => N294,
      I2 => N130,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I4 => N295,
      I5 => N296,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0185_inv
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_n0027_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(38),
      I1 => U0_xaui_inst_transmitter_txd_pipe(37),
      I2 => U0_xaui_inst_transmitter_txd_pipe(36),
      O => N298
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(39),
      I1 => U0_xaui_inst_transmitter_txc_pipe(4),
      I2 => N298,
      I3 => N184,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7_rstpot_1550
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_n0027_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(39),
      I1 => U0_xaui_inst_transmitter_txd_pipe(37),
      I2 => U0_xaui_inst_transmitter_txd_pipe(36),
      O => N300
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_6_rstpot : LUT6
    generic map(
      INIT => X"EEEAAAAAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(38),
      I1 => U0_xaui_inst_transmitter_txc_pipe(4),
      I2 => N300,
      I3 => N184,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_6_rstpot_1551
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_n0027_SW2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(39),
      I1 => U0_xaui_inst_transmitter_txd_pipe(38),
      I2 => U0_xaui_inst_transmitter_txd_pipe(36),
      O => N302
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_5_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(37),
      I1 => U0_xaui_inst_transmitter_txc_pipe(4),
      I2 => N302,
      I3 => N184,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_5_rstpot_1552
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_n0027_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(36),
      I1 => U0_xaui_inst_transmitter_txc_pipe(4),
      O => N304
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_4_rstpot : LUT6
    generic map(
      INIT => X"FF00FF01FF00FF00"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(37),
      I1 => U0_xaui_inst_transmitter_txd_pipe(38),
      I2 => U0_xaui_inst_transmitter_txd_pipe(39),
      I3 => N304,
      I4 => N184,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_4_rstpot_1553
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_n0027_SW4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(39),
      I1 => U0_xaui_inst_transmitter_txd_pipe(38),
      I2 => U0_xaui_inst_transmitter_txd_pipe(37),
      I3 => U0_xaui_inst_transmitter_txd_pipe(36),
      O => N306
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_3_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(35),
      I1 => U0_xaui_inst_transmitter_txc_pipe(4),
      I2 => N306,
      I3 => N184,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_3_rstpot_1554
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_2_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(34),
      I1 => U0_xaui_inst_transmitter_txc_pipe(4),
      I2 => N306,
      I3 => N184,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_2_rstpot_1555
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_n0027_SW6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(39),
      I1 => U0_xaui_inst_transmitter_txd_pipe(38),
      I2 => U0_xaui_inst_transmitter_txd_pipe(37),
      I3 => U0_xaui_inst_transmitter_txd_pipe(36),
      O => N310
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_1_rstpot : LUT6
    generic map(
      INIT => X"EEE0AAA0EEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(33),
      I1 => U0_xaui_inst_transmitter_txc_pipe(4),
      I2 => N310,
      I3 => N184,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_1_rstpot_1556
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_0_rstpot : LUT6
    generic map(
      INIT => X"2220AAA02222AAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(32),
      I1 => U0_xaui_inst_transmitter_txc_pipe(4),
      I2 => N310,
      I3 => N184,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_0_rstpot_1557
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_n0027_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(46),
      I1 => U0_xaui_inst_transmitter_txd_pipe(45),
      I2 => U0_xaui_inst_transmitter_txd_pipe(44),
      O => N314
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_7_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(47),
      I1 => U0_xaui_inst_transmitter_txc_pipe(5),
      I2 => N314,
      I3 => N182,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_7_rstpot_1542
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_n0027_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(47),
      I1 => U0_xaui_inst_transmitter_txd_pipe(45),
      I2 => U0_xaui_inst_transmitter_txd_pipe(44),
      O => N316
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_6_rstpot : LUT6
    generic map(
      INIT => X"EEEAAAAAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(46),
      I1 => U0_xaui_inst_transmitter_txc_pipe(5),
      I2 => N316,
      I3 => N182,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_6_rstpot_1543
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_n0027_SW2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(47),
      I1 => U0_xaui_inst_transmitter_txd_pipe(46),
      I2 => U0_xaui_inst_transmitter_txd_pipe(44),
      O => N318
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_5_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(45),
      I1 => U0_xaui_inst_transmitter_txc_pipe(5),
      I2 => N318,
      I3 => N182,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_5_rstpot_1544
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_n0027_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(44),
      I1 => U0_xaui_inst_transmitter_txc_pipe(5),
      O => N320
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_4_rstpot : LUT6
    generic map(
      INIT => X"FF00FF01FF00FF00"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(45),
      I1 => U0_xaui_inst_transmitter_txd_pipe(46),
      I2 => U0_xaui_inst_transmitter_txd_pipe(47),
      I3 => N320,
      I4 => N182,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_4_rstpot_1545
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_n0027_SW4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(47),
      I1 => U0_xaui_inst_transmitter_txd_pipe(46),
      I2 => U0_xaui_inst_transmitter_txd_pipe(45),
      I3 => U0_xaui_inst_transmitter_txd_pipe(44),
      O => N322
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_3_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(43),
      I1 => U0_xaui_inst_transmitter_txc_pipe(5),
      I2 => N322,
      I3 => N182,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_3_rstpot_1546
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_2_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(42),
      I1 => U0_xaui_inst_transmitter_txc_pipe(5),
      I2 => N322,
      I3 => N182,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_2_rstpot_1547
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_n0027_SW6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(47),
      I1 => U0_xaui_inst_transmitter_txd_pipe(46),
      I2 => U0_xaui_inst_transmitter_txd_pipe(45),
      I3 => U0_xaui_inst_transmitter_txd_pipe(44),
      O => N326
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_1_rstpot : LUT6
    generic map(
      INIT => X"EEE0AAA0EEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(41),
      I1 => U0_xaui_inst_transmitter_txc_pipe(5),
      I2 => N326,
      I3 => N182,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_1_rstpot_1548
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_0_rstpot : LUT6
    generic map(
      INIT => X"2220AAA02222AAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(40),
      I1 => U0_xaui_inst_transmitter_txc_pipe(5),
      I2 => N326,
      I3 => N182,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_0_rstpot_1549
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_n0027_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(54),
      I1 => U0_xaui_inst_transmitter_txd_pipe(53),
      I2 => U0_xaui_inst_transmitter_txd_pipe(52),
      O => N330
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_7_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(55),
      I1 => U0_xaui_inst_transmitter_txc_pipe(6),
      I2 => N330,
      I3 => N180,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_7_rstpot_1534
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_n0027_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(55),
      I1 => U0_xaui_inst_transmitter_txd_pipe(53),
      I2 => U0_xaui_inst_transmitter_txd_pipe(52),
      O => N332
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_6_rstpot : LUT6
    generic map(
      INIT => X"EEEAAAAAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(54),
      I1 => U0_xaui_inst_transmitter_txc_pipe(6),
      I2 => N332,
      I3 => N180,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_6_rstpot_1535
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_n0027_SW2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(55),
      I1 => U0_xaui_inst_transmitter_txd_pipe(54),
      I2 => U0_xaui_inst_transmitter_txd_pipe(52),
      O => N334
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_5_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(53),
      I1 => U0_xaui_inst_transmitter_txc_pipe(6),
      I2 => N334,
      I3 => N180,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_5_rstpot_1536
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_n0027_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(52),
      I1 => U0_xaui_inst_transmitter_txc_pipe(6),
      O => N336
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_4_rstpot : LUT6
    generic map(
      INIT => X"FF00FF01FF00FF00"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(53),
      I1 => U0_xaui_inst_transmitter_txd_pipe(54),
      I2 => U0_xaui_inst_transmitter_txd_pipe(55),
      I3 => N336,
      I4 => N180,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_4_rstpot_1537
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_n0027_SW4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(55),
      I1 => U0_xaui_inst_transmitter_txd_pipe(54),
      I2 => U0_xaui_inst_transmitter_txd_pipe(53),
      I3 => U0_xaui_inst_transmitter_txd_pipe(52),
      O => N338
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_3_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(51),
      I1 => U0_xaui_inst_transmitter_txc_pipe(6),
      I2 => N338,
      I3 => N180,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_3_rstpot_1538
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_2_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(50),
      I1 => U0_xaui_inst_transmitter_txc_pipe(6),
      I2 => N338,
      I3 => N180,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_2_rstpot_1539
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_n0027_SW6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(55),
      I1 => U0_xaui_inst_transmitter_txd_pipe(54),
      I2 => U0_xaui_inst_transmitter_txd_pipe(53),
      I3 => U0_xaui_inst_transmitter_txd_pipe(52),
      O => N342
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_1_rstpot : LUT6
    generic map(
      INIT => X"EEE0AAA0EEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(49),
      I1 => U0_xaui_inst_transmitter_txc_pipe(6),
      I2 => N342,
      I3 => N180,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_1_rstpot_1540
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_0_rstpot : LUT6
    generic map(
      INIT => X"2220AAA02222AAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(48),
      I1 => U0_xaui_inst_transmitter_txc_pipe(6),
      I2 => N342,
      I3 => N180,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_0_rstpot_1541
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_n0027_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(62),
      I1 => U0_xaui_inst_transmitter_txd_pipe(61),
      I2 => U0_xaui_inst_transmitter_txd_pipe(60),
      O => N346
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_7_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(63),
      I1 => U0_xaui_inst_transmitter_txc_pipe(7),
      I2 => N346,
      I3 => N178,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_7_rstpot_1526
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_n0027_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(63),
      I1 => U0_xaui_inst_transmitter_txd_pipe(61),
      I2 => U0_xaui_inst_transmitter_txd_pipe(60),
      O => N348
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_6_rstpot : LUT6
    generic map(
      INIT => X"EEEAAAAAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(62),
      I1 => U0_xaui_inst_transmitter_txc_pipe(7),
      I2 => N348,
      I3 => N178,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_6_rstpot_1527
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_n0027_SW2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(63),
      I1 => U0_xaui_inst_transmitter_txd_pipe(62),
      I2 => U0_xaui_inst_transmitter_txd_pipe(60),
      O => N350
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_5_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(61),
      I1 => U0_xaui_inst_transmitter_txc_pipe(7),
      I2 => N350,
      I3 => N178,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_5_rstpot_1528
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_n0027_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(60),
      I1 => U0_xaui_inst_transmitter_txc_pipe(7),
      O => N352
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_4_rstpot : LUT6
    generic map(
      INIT => X"FF00FF01FF00FF00"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(61),
      I1 => U0_xaui_inst_transmitter_txd_pipe(62),
      I2 => U0_xaui_inst_transmitter_txd_pipe(63),
      I3 => N352,
      I4 => N178,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_4_rstpot_1529
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_n0027_SW4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(63),
      I1 => U0_xaui_inst_transmitter_txd_pipe(62),
      I2 => U0_xaui_inst_transmitter_txd_pipe(61),
      I3 => U0_xaui_inst_transmitter_txd_pipe(60),
      O => N354
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_3_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(59),
      I1 => U0_xaui_inst_transmitter_txc_pipe(7),
      I2 => N354,
      I3 => N178,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_3_rstpot_1530
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_2_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(58),
      I1 => U0_xaui_inst_transmitter_txc_pipe(7),
      I2 => N354,
      I3 => N178,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_2_rstpot_1531
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_n0027_SW6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(63),
      I1 => U0_xaui_inst_transmitter_txd_pipe(62),
      I2 => U0_xaui_inst_transmitter_txd_pipe(61),
      I3 => U0_xaui_inst_transmitter_txd_pipe(60),
      O => N358
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_1_rstpot : LUT6
    generic map(
      INIT => X"EEE0AAA0EEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(57),
      I1 => U0_xaui_inst_transmitter_txc_pipe(7),
      I2 => N358,
      I3 => N178,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_1_rstpot_1532
    );
  U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_0_rstpot : LUT6
    generic map(
      INIT => X"2220AAA02222AAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(56),
      I1 => U0_xaui_inst_transmitter_txc_pipe(7),
      I2 => N358,
      I3 => N178,
      I4 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(1),
      O => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_0_rstpot_1533
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_n0027_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(6),
      I1 => U0_xaui_inst_transmitter_txd_pipe(5),
      I2 => U0_xaui_inst_transmitter_txd_pipe(4),
      O => N362
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(7),
      I1 => U0_xaui_inst_transmitter_txc_pipe(0),
      I2 => N362,
      I3 => N192,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7_rstpot_1582
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_n0027_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(7),
      I1 => U0_xaui_inst_transmitter_txd_pipe(5),
      I2 => U0_xaui_inst_transmitter_txd_pipe(4),
      O => N364
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_6_rstpot : LUT6
    generic map(
      INIT => X"EEEAAAAAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(6),
      I1 => U0_xaui_inst_transmitter_txc_pipe(0),
      I2 => N364,
      I3 => N192,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_6_rstpot_1583
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_n0027_SW2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(7),
      I1 => U0_xaui_inst_transmitter_txd_pipe(6),
      I2 => U0_xaui_inst_transmitter_txd_pipe(4),
      O => N366
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_5_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(5),
      I1 => U0_xaui_inst_transmitter_txc_pipe(0),
      I2 => N366,
      I3 => N192,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_5_rstpot_1584
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_n0027_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(4),
      I1 => U0_xaui_inst_transmitter_txc_pipe(0),
      O => N368
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_4_rstpot : LUT6
    generic map(
      INIT => X"FF00FF01FF00FF00"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(5),
      I1 => U0_xaui_inst_transmitter_txd_pipe(6),
      I2 => U0_xaui_inst_transmitter_txd_pipe(7),
      I3 => N368,
      I4 => N192,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_4_rstpot_1585
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_n0027_SW4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(7),
      I1 => U0_xaui_inst_transmitter_txd_pipe(6),
      I2 => U0_xaui_inst_transmitter_txd_pipe(5),
      I3 => U0_xaui_inst_transmitter_txd_pipe(4),
      O => N370
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_3_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(3),
      I1 => U0_xaui_inst_transmitter_txc_pipe(0),
      I2 => N370,
      I3 => N192,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_3_rstpot_1586
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_2_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(2),
      I1 => U0_xaui_inst_transmitter_txc_pipe(0),
      I2 => N370,
      I3 => N192,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_2_rstpot_1587
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_n0027_SW6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(7),
      I1 => U0_xaui_inst_transmitter_txd_pipe(6),
      I2 => U0_xaui_inst_transmitter_txd_pipe(5),
      I3 => U0_xaui_inst_transmitter_txd_pipe(4),
      O => N374
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_1_rstpot : LUT6
    generic map(
      INIT => X"EEE0AAA0EEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(1),
      I1 => U0_xaui_inst_transmitter_txc_pipe(0),
      I2 => N374,
      I3 => N192,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_1_rstpot_1588
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_0_rstpot : LUT6
    generic map(
      INIT => X"2220AAA02222AAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(0),
      I1 => U0_xaui_inst_transmitter_txc_pipe(0),
      I2 => N374,
      I3 => N192,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_0_rstpot_1589
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_n0027_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(14),
      I1 => U0_xaui_inst_transmitter_txd_pipe(13),
      I2 => U0_xaui_inst_transmitter_txd_pipe(12),
      O => N378
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_7_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(15),
      I1 => U0_xaui_inst_transmitter_txc_pipe(1),
      I2 => N378,
      I3 => N190,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_7_rstpot_1574
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_n0027_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(15),
      I1 => U0_xaui_inst_transmitter_txd_pipe(13),
      I2 => U0_xaui_inst_transmitter_txd_pipe(12),
      O => N380
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_6_rstpot : LUT6
    generic map(
      INIT => X"EEEAAAAAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(14),
      I1 => U0_xaui_inst_transmitter_txc_pipe(1),
      I2 => N380,
      I3 => N190,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_6_rstpot_1575
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_n0027_SW2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(15),
      I1 => U0_xaui_inst_transmitter_txd_pipe(14),
      I2 => U0_xaui_inst_transmitter_txd_pipe(12),
      O => N382
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_5_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(13),
      I1 => U0_xaui_inst_transmitter_txc_pipe(1),
      I2 => N382,
      I3 => N190,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_5_rstpot_1576
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_n0027_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(12),
      I1 => U0_xaui_inst_transmitter_txc_pipe(1),
      O => N384
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_4_rstpot : LUT6
    generic map(
      INIT => X"FF00FF01FF00FF00"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(13),
      I1 => U0_xaui_inst_transmitter_txd_pipe(14),
      I2 => U0_xaui_inst_transmitter_txd_pipe(15),
      I3 => N384,
      I4 => N190,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_4_rstpot_1577
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_n0027_SW4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(15),
      I1 => U0_xaui_inst_transmitter_txd_pipe(14),
      I2 => U0_xaui_inst_transmitter_txd_pipe(13),
      I3 => U0_xaui_inst_transmitter_txd_pipe(12),
      O => N386
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_3_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(11),
      I1 => U0_xaui_inst_transmitter_txc_pipe(1),
      I2 => N386,
      I3 => N190,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_3_rstpot_1578
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_2_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(10),
      I1 => U0_xaui_inst_transmitter_txc_pipe(1),
      I2 => N386,
      I3 => N190,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_2_rstpot_1579
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_n0027_SW6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(15),
      I1 => U0_xaui_inst_transmitter_txd_pipe(14),
      I2 => U0_xaui_inst_transmitter_txd_pipe(13),
      I3 => U0_xaui_inst_transmitter_txd_pipe(12),
      O => N390
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_1_rstpot : LUT6
    generic map(
      INIT => X"EEE0AAA0EEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(9),
      I1 => U0_xaui_inst_transmitter_txc_pipe(1),
      I2 => N390,
      I3 => N190,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_1_rstpot_1580
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_0_rstpot : LUT6
    generic map(
      INIT => X"2220AAA02222AAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(8),
      I1 => U0_xaui_inst_transmitter_txc_pipe(1),
      I2 => N390,
      I3 => N190,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_0_rstpot_1581
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_n0027_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(22),
      I1 => U0_xaui_inst_transmitter_txd_pipe(21),
      I2 => U0_xaui_inst_transmitter_txd_pipe(20),
      O => N394
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_7_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(23),
      I1 => U0_xaui_inst_transmitter_txc_pipe(2),
      I2 => N394,
      I3 => N188,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_7_rstpot_1566
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_n0027_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(23),
      I1 => U0_xaui_inst_transmitter_txd_pipe(21),
      I2 => U0_xaui_inst_transmitter_txd_pipe(20),
      O => N396
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_6_rstpot : LUT6
    generic map(
      INIT => X"EEEAAAAAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(22),
      I1 => U0_xaui_inst_transmitter_txc_pipe(2),
      I2 => N396,
      I3 => N188,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_6_rstpot_1567
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_n0027_SW2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(23),
      I1 => U0_xaui_inst_transmitter_txd_pipe(22),
      I2 => U0_xaui_inst_transmitter_txd_pipe(20),
      O => N398
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_5_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(21),
      I1 => U0_xaui_inst_transmitter_txc_pipe(2),
      I2 => N398,
      I3 => N188,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_5_rstpot_1568
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_n0027_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(20),
      I1 => U0_xaui_inst_transmitter_txc_pipe(2),
      O => N400
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_4_rstpot : LUT6
    generic map(
      INIT => X"FF00FF01FF00FF00"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(21),
      I1 => U0_xaui_inst_transmitter_txd_pipe(22),
      I2 => U0_xaui_inst_transmitter_txd_pipe(23),
      I3 => N400,
      I4 => N188,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_4_rstpot_1569
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_n0027_SW4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(23),
      I1 => U0_xaui_inst_transmitter_txd_pipe(22),
      I2 => U0_xaui_inst_transmitter_txd_pipe(21),
      I3 => U0_xaui_inst_transmitter_txd_pipe(20),
      O => N402
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_3_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(19),
      I1 => U0_xaui_inst_transmitter_txc_pipe(2),
      I2 => N402,
      I3 => N188,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_3_rstpot_1570
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_2_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(18),
      I1 => U0_xaui_inst_transmitter_txc_pipe(2),
      I2 => N402,
      I3 => N188,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_2_rstpot_1571
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_n0027_SW6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(23),
      I1 => U0_xaui_inst_transmitter_txd_pipe(22),
      I2 => U0_xaui_inst_transmitter_txd_pipe(21),
      I3 => U0_xaui_inst_transmitter_txd_pipe(20),
      O => N406
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_1_rstpot : LUT6
    generic map(
      INIT => X"EEE0AAA0EEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(17),
      I1 => U0_xaui_inst_transmitter_txc_pipe(2),
      I2 => N406,
      I3 => N188,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_1_rstpot_1572
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_0_rstpot : LUT6
    generic map(
      INIT => X"2220AAA02222AAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(16),
      I1 => U0_xaui_inst_transmitter_txc_pipe(2),
      I2 => N406,
      I3 => N188,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_0_rstpot_1573
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_n0027_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(30),
      I1 => U0_xaui_inst_transmitter_txd_pipe(29),
      I2 => U0_xaui_inst_transmitter_txd_pipe(28),
      O => N410
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_7_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(31),
      I1 => U0_xaui_inst_transmitter_txc_pipe(3),
      I2 => N410,
      I3 => N186,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_7_rstpot_1558
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_n0027_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(31),
      I1 => U0_xaui_inst_transmitter_txd_pipe(29),
      I2 => U0_xaui_inst_transmitter_txd_pipe(28),
      O => N412
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_6_rstpot : LUT6
    generic map(
      INIT => X"EEEAAAAAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(30),
      I1 => U0_xaui_inst_transmitter_txc_pipe(3),
      I2 => N412,
      I3 => N186,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_6_rstpot_1559
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_n0027_SW2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(31),
      I1 => U0_xaui_inst_transmitter_txd_pipe(30),
      I2 => U0_xaui_inst_transmitter_txd_pipe(28),
      O => N414
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_5_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(29),
      I1 => U0_xaui_inst_transmitter_txc_pipe(3),
      I2 => N414,
      I3 => N186,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_5_rstpot_1560
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_n0027_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(28),
      I1 => U0_xaui_inst_transmitter_txc_pipe(3),
      O => N416
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_4_rstpot : LUT6
    generic map(
      INIT => X"FF00FF01FF00FF00"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(29),
      I1 => U0_xaui_inst_transmitter_txd_pipe(30),
      I2 => U0_xaui_inst_transmitter_txd_pipe(31),
      I3 => N416,
      I4 => N186,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_4_rstpot_1561
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_n0027_SW4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(31),
      I1 => U0_xaui_inst_transmitter_txd_pipe(30),
      I2 => U0_xaui_inst_transmitter_txd_pipe(29),
      I3 => U0_xaui_inst_transmitter_txd_pipe(28),
      O => N418
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_3_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(27),
      I1 => U0_xaui_inst_transmitter_txc_pipe(3),
      I2 => N418,
      I3 => N186,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_3_rstpot_1562
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_2_rstpot : LUT6
    generic map(
      INIT => X"EEFEAAFAEEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(26),
      I1 => U0_xaui_inst_transmitter_txc_pipe(3),
      I2 => N418,
      I3 => N186,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_2_rstpot_1563
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_n0027_SW6 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(31),
      I1 => U0_xaui_inst_transmitter_txd_pipe(30),
      I2 => U0_xaui_inst_transmitter_txd_pipe(29),
      I3 => U0_xaui_inst_transmitter_txd_pipe(28),
      O => N422
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_1_rstpot : LUT6
    generic map(
      INIT => X"EEE0AAA0EEEEAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(25),
      I1 => U0_xaui_inst_transmitter_txc_pipe(3),
      I2 => N422,
      I3 => N186,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_1_rstpot_1564
    );
  U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_0_rstpot : LUT6
    generic map(
      INIT => X"2220AAA02222AAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_txd_pipe(24),
      I1 => U0_xaui_inst_transmitter_txc_pipe(3),
      I2 => N422,
      I3 => N186,
      I4 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_GND_15_o_reduce_nor_14_o,
      I5 => U0_xaui_inst_transmitter_is_terminate(0),
      O => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_0_rstpot_1565
    );
  U0_xaui_inst_transmitter_align_Mmux_a_cnt1_SW2 : LUT4
    generic map(
      INIT => X"444F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(8),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I2 => U0_xaui_inst_transmitter_tx_is_q(0),
      I3 => U0_xaui_inst_transmitter_tx_is_idle(0),
      O => N427
    );
  U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp22 : LUT6
    generic map(
      INIT => X"FFFFFF01FFFFFE00"
    )
    port map (
      I0 => N16,
      I1 => U0_xaui_inst_transmitter_tx_code_a(1),
      I2 => U0_xaui_inst_transmitter_tx_code_a(0),
      I3 => N427,
      I4 => U0_xaui_inst_transmitter_state_machine_Mmux_p_state_comb_state_temp2,
      I5 => N426,
      O => U0_xaui_inst_transmitter_state_machine_p_state_comb_state_temp(0)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_15_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(15),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int15,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_15_dpot_1618
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_15_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(15),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int15,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_15_dpot_1635
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_14_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(14),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int14,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_14_dpot_1617
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_14_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(14),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int14,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_14_dpot_1634
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_13_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(13),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int13,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_13_dpot_1616
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_13_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(13),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int13,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_13_dpot_1633
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_12_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(12),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int12,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_12_dpot_1615
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_12_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(12),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int12,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_12_dpot_1632
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_11_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(11),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int11,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_11_dpot_1614
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_11_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(11),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int11,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_11_dpot_1631
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_10_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(10),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int10,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_10_dpot_1613
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_10_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(10),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int10,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_10_dpot_1630
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_data_rd_13_1_SW2 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      O => N429
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_data_rd_13_1 : LUT6
    generic map(
      INIT => X"0101010100FF0000"
    )
    port map (
      I0 => N430,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_15_1_1448,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_0(15),
      I3 => N429,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_data_rd(13)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_devad_match1_SW4 : LUT4
    generic map(
      INIT => X"FF54"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      O => N432
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_devad_match1_SW5 : LUT5
    generic map(
      INIT => X"FF543F14"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => N163,
      O => N433
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_devad_match1_SW6 : LUT5
    generic map(
      INIT => X"FF543F14"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => N164,
      O => N434
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_3_111 : LUT6
    generic map(
      INIT => X"555511DD55551D1D"
    )
    port map (
      I0 => N432,
      I1 => N174,
      I2 => N433,
      I3 => N434,
      I4 => N130,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_3_11
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot : LUT6
    generic map(
      INIT => X"FFFFFFAFFFFFEEEE"
    )
    port map (
      I0 => U0_xaui_inst_type_sel_reg(1),
      I1 => N160,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_type_sel_1_devad_match_AND_219_o1_1458,
      I3 => N164,
      I4 => N130,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4_cepot_1619
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(10),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(12),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      O => N438
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_9_o_15_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(5),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(6),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(8),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I4 => N132,
      I5 => N438,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_9_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_SW2 : LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(10),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(12),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      O => N440
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd10411 : LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(5),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(6),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(8),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I4 => N132,
      I5 => N440,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1041
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW6 : LUT4
    generic map(
      INIT => X"2002"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      O => N442
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW7 : LUT6
    generic map(
      INIT => X"9999999999999099"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => N443
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW8 : LUT6
    generic map(
      INIT => X"0909000000090000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => N444
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_1_11 : LUT6
    generic map(
      INIT => X"FF55FF55FA50EE44"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I1 => N442,
      I2 => N444,
      I3 => N443,
      I4 => N140,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_3_11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count1
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14_SW0 : LUT6
    generic map(
      INIT => X"CCFFFF33FF3388A0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_signal_detect_int(3),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N446
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14_SW1 : LUT4
    generic map(
      INIT => X"FCCB"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N447
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14 : LUT6
    generic map(
      INIT => X"808A8A8A80808A80"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_0_Q,
      I4 => N447,
      I5 => N446,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14_SW0 : LUT6
    generic map(
      INIT => X"CCFFFF33FF8833A0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_signal_detect_int(2),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N449
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14_SW1 : LUT4
    generic map(
      INIT => X"FCCB"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N450
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14 : LUT6
    generic map(
      INIT => X"808A8A8A80808A80"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_0_Q,
      I4 => N450,
      I5 => N449,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14_SW0 : LUT6
    generic map(
      INIT => X"CCFFFF33FF8833A0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_signal_detect_int(1),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N452
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14_SW1 : LUT4
    generic map(
      INIT => X"FCCB"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N453
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14 : LUT6
    generic map(
      INIT => X"808A8A8A80808A80"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_0_Q,
      I4 => N453,
      I5 => N452,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14_SW0 : LUT6
    generic map(
      INIT => X"CCFFFF33FF8833A0"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_signal_detect_int(0),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N455
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14_SW1 : LUT4
    generic map(
      INIT => X"FCCB"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_comma_pipe_1_Q,
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N456
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT14 : LUT6
    generic map(
      INIT => X"808A8A8A80808A80"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_0_Q,
      I4 => N456,
      I5 => N455,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_0_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT106_SW0 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I1 => N266,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      O => N458
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT106 : LUT6
    generic map(
      INIT => X"2A2A2AEAEA2AEAEA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I4 => N458,
      I5 => N459,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_3_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT88 : LUT6
    generic map(
      INIT => X"2AEA2A2AEAEAEA2A"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I4 => N461,
      I5 => N462,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_1_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT14 : LUT6
    generic map(
      INIT => X"2222AAAAF222AAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(6),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => N150,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_9_o,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_7_Q
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_8_GND_19_o_MUX_231_o11 : LUT5
    generic map(
      INIT => X"01010100"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_delay_1_899,
      I1 => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q,
      I3 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_763,
      I4 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(8),
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_8_GND_19_o_MUX_231_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_10_PWR_20_o_MUX_229_o11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_delay_1_899,
      I1 => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q,
      I3 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(10),
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_10_PWR_20_o_MUX_229_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxc_half_pipe_1_PWR_20_o_MUX_233_o11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_code_error_delay_1_899,
      I1 => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q,
      I3 => U0_xaui_inst_receiver_recoder_rxc_half_pipe(1),
      O => U0_xaui_inst_receiver_recoder_rxc_half_pipe_1_PWR_20_o_MUX_233_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_9_PWR_20_o_MUX_230_o11 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(9),
      I1 => U0_xaui_inst_receiver_recoder_code_error_delay_1_899,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q,
      I3 => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387,
      I4 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_763,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_9_PWR_20_o_MUX_230_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_11_PWR_20_o_MUX_228_o11 : LUT5
    generic map(
      INIT => X"FFFFFCFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(11),
      I1 => U0_xaui_inst_receiver_recoder_code_error_delay_1_899,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q,
      I3 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_763,
      I4 => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_11_PWR_20_o_MUX_228_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_12_PWR_20_o_MUX_227_o11 : LUT5
    generic map(
      INIT => X"FFFFFCFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(12),
      I1 => U0_xaui_inst_receiver_recoder_code_error_delay_1_899,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q,
      I3 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_763,
      I4 => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_12_PWR_20_o_MUX_227_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_13_PWR_20_o_MUX_226_o11 : LUT5
    generic map(
      INIT => X"FFFFFCFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(13),
      I1 => U0_xaui_inst_receiver_recoder_code_error_delay_1_899,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q,
      I3 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_763,
      I4 => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_13_PWR_20_o_MUX_226_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_14_PWR_20_o_MUX_225_o11 : LUT5
    generic map(
      INIT => X"FFFFFCFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(14),
      I1 => U0_xaui_inst_receiver_recoder_code_error_delay_1_899,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q,
      I3 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_763,
      I4 => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_14_PWR_20_o_MUX_225_o
    );
  U0_xaui_inst_receiver_recoder_Mmux_rxd_half_pipe_15_PWR_20_o_MUX_224_o11 : LUT5
    generic map(
      INIT => X"FFFFFCFE"
    )
    port map (
      I0 => U0_xaui_inst_receiver_recoder_rxd_half_pipe(15),
      I1 => U0_xaui_inst_receiver_recoder_code_error_delay_1_899,
      I2 => U0_xaui_inst_receiver_recoder_error_lane_1_1_Q,
      I3 => U0_xaui_inst_receiver_recoder_GND_19_o_GND_19_o_OR_104_o_763,
      I4 => U0_xaui_inst_receiver_recoder_error_lane_1_1_2_1387,
      O => U0_xaui_inst_receiver_recoder_rxd_half_pipe_15_PWR_20_o_MUX_224_o
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_0_dpot : LUT6
    generic map(
      INIT => X"CCCCCCCAAAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_0_dpot_1603
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_0_dpot : LUT6
    generic map(
      INIT => X"CCCCCCCAAAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_0_dpot_1620
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT13 : LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_mdio_in_reg_1267,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT1
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT31 : LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(10),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT3
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_data_rd_13_1_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_0(15),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_15_1_1448,
      O => N282
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(5),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(6),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(6)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(5),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(6),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(6)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(6),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(7),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(7)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(6),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(7),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(7)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(7),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(8),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(8)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(7),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(8),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(8)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_9_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(8),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(9),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(9)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_9_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(8),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(9),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(9)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_10_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(9),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(10),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(10)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_10_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(9),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(10),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(10)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_11_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(10),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(11),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(11)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_11_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(10),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(11),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(11)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_12_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(11),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(12),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(12)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_12_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(11),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(12),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(12)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_13_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(12),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(13),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(13)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_13_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(12),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(13),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(13)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_14_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(13),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(14),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(14)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_14_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(13),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(14),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(14)
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT29111 : LUT6
    generic map(
      INIT => X"22F22222FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      I5 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1311 : LUT6
    generic map(
      INIT => X"22F22222FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      I5 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_data_rd_13_1_SW3 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      O => N430
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_1_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int1,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_1_dpot_1604
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_1_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int1,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_1_dpot_1621
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_2_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int2,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_2_dpot_1605
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_2_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int2,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_2_dpot_1622
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_3_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int3,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_3_dpot_1606
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_3_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int3,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_3_dpot_1623
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_4_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int4,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_4_dpot_1607
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_4_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int4,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_4_dpot_1624
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_5_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(5),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int5,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_5_dpot_1608
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_5_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(5),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int5,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_5_dpot_1625
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_6_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(6),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int6,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_6_dpot_1609
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_6_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(6),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int6,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_6_dpot_1626
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_9_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(9),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int9,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_9_dpot_1612
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_9_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(9),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int9,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_9_dpot_1629
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_8_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(8),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int8,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_8_dpot_1611
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_8_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(8),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int8,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_8_dpot_1628
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_7_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(7),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv3_1480,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv2_1479,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0225_inv1_1478,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int7,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int_7_dpot_1610
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_7_dpot : LUT6
    generic map(
      INIT => X"FFFE0002AAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(7),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv4,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv3_1482,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv1_1481,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int7,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_n0208_inv2_1146,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int_7_dpot_1627
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT2 : LUT6
    generic map(
      INIT => X"22AA2FAA22AA22AA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(9),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => N142,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1121,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_10_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT4 : LUT6
    generic map(
      INIT => X"22AAF2AA22AA22AA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(11),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => N144,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1121,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_12_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT6 : LUT6
    generic map(
      INIT => X"22AAF2AA22AA22AA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(13),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => N146,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_8_o,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_14_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT5_SW0 : LUT6
    generic map(
      INIT => X"FFFFF7FDFFFFFFFF"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_signal_detect_last_1003,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_signal_detect_int(3),
      I4 => N88,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_1_Q,
      O => N90
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT5_SW0 : LUT6
    generic map(
      INIT => X"FFFFF7FDFFFFFFFF"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_signal_detect_last_1025,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_signal_detect_int(2),
      I4 => N100,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_1_Q,
      O => N102
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT5_SW0 : LUT6
    generic map(
      INIT => X"FFFFF7FDFFFFFFFF"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_signal_detect_last_1047,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_signal_detect_int(1),
      I4 => N112,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_1_Q,
      O => N114
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT5_SW0 : LUT6
    generic map(
      INIT => X"FFFFF7FDFFFFFFFF"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_signal_detect_last_1069,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_Q,
      I3 => U0_xaui_inst_signal_detect_int(0),
      I4 => N124,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_1_Q,
      O => N126
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_bit_count_load_en1_SW0_SW2 : LUT6
    generic map(
      INIT => X"AAAAAAAA220022A2"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd1_1266,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In111_1756,
      O => N294
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT106_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFDFDBFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(2),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185,
      O => N459
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT88_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFDFDBDFD"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(3),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_signal_detect_reg(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185,
      O => N462
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT88_SW0 : LUT6
    generic map(
      INIT => X"115F005F00000000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I2 => U0_xaui_inst_type_sel_reg(1),
      I3 => N264,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT82,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      O => N461
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_13_o_15_1_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(2),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(4),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(3),
      I3 => N148,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      O => N466
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT12 : LUT6
    generic map(
      INIT => X"2222AAAA2F22AAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I2 => N466,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_reset_reg_select_21_OUT_15_2_1077,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_GND_21_o_bit_count_4_AND_215_o,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_5_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT171 : LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT17_1145
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT15 : LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT101
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1011 : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_15_1_1448,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_n0185_0(15),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11_1758,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd101
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT97 : LUT6
    generic map(
      INIT => X"FCFCFCFCFCFCAC0C"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT95_1473,
      I1 => N468,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT101,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd101,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT94,
      I5 => N469,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_2_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT97_SW0_SW0 : LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => N468
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT97_SW0_SW1 : LUT6
    generic map(
      INIT => X"F0F0F0F0FEFAFCF0"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_aligned_sticky_reg_1088,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT92,
      I2 => N468,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_data_rd1041,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_GND_20_o_addr_15_equal_9_o,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => N469
    );
  U0_xaui_inst_transmitter_align_Mmux_a_cnt1_SW1 : MUXF7
    port map (
      I0 => N473,
      I1 => N474,
      S => U0_xaui_inst_transmitter_tx_is_q(0),
      O => N426
    );
  U0_xaui_inst_transmitter_align_Mmux_a_cnt1_SW1_F : LUT6
    generic map(
      INIT => X"02000000FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_align_count(0),
      I1 => U0_xaui_inst_transmitter_align_extra_a_675,
      I2 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(8),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I4 => U0_xaui_inst_transmitter_align_count(1),
      I5 => U0_xaui_inst_transmitter_tx_is_idle(0),
      O => N473
    );
  U0_xaui_inst_transmitter_align_Mmux_a_cnt1_SW1_G : LUT5
    generic map(
      INIT => X"04000000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_k_r_prbs_i_prbs(8),
      I1 => U0_xaui_inst_transmitter_align_count(0),
      I2 => U0_xaui_inst_transmitter_align_extra_a_675,
      I3 => U0_xaui_inst_transmitter_align_count(1),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      O => N474
    );
  U0_xaui_inst_tx_local_fault_glue_set : LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEFE"
    )
    port map (
      I0 => mgt_tx_reset(2),
      I1 => mgt_tx_reset(3),
      I2 => mgt_tx_reset(1),
      I3 => U0_xaui_inst_clear_local_fault_edge_358,
      I4 => U0_xaui_inst_tx_local_fault_352,
      I5 => mgt_tx_reset(0),
      O => U0_xaui_inst_tx_local_fault_glue_set_1487
    );
  U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_glue_rst_SW0 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      O => N475
    );
  U0_xaui_inst_rx_local_fault_glue_set_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => mgt_rx_reset(2),
      I1 => mgt_rx_reset(3),
      O => N477
    );
  U0_xaui_inst_rx_local_fault_glue_set : LUT6
    generic map(
      INIT => X"FEFFFEFEFFFFFFFF"
    )
    port map (
      I0 => mgt_rx_reset(1),
      I1 => N477,
      I2 => mgt_rx_reset(0),
      I3 => U0_xaui_inst_clear_local_fault_edge_358,
      I4 => U0_xaui_inst_rx_local_fault_351,
      I5 => NlwRenamedSig_OI_U0_xaui_inst_align_status_int,
      O => U0_xaui_inst_rx_local_fault_glue_set_1486
    );
  U0_xaui_inst_clear_aligned_edge_rstpot : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => U0_xaui_inst_p_clear_aligned_edge_last_value_355,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_clear_aligned_362,
      I2 => U0_xaui_inst_usrclk_reset_354,
      O => U0_xaui_inst_clear_aligned_edge_rstpot_1501
    );
  U0_xaui_inst_clear_local_fault_edge_rstpot : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => U0_xaui_inst_p_clear_local_fault_edge_last_value_357,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_clear_local_fault_363,
      I2 => U0_xaui_inst_usrclk_reset_354,
      O => U0_xaui_inst_clear_local_fault_edge_rstpot_1502
    );
  U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_rstpot : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(0),
      I2 => U0_xaui_inst_receiver_G_SYNC_deskew_state_state_1(2),
      I3 => U0_xaui_inst_receiver_sync_status_726,
      O => U0_xaui_inst_receiver_G_SYNC_deskew_state_enchansync_rstpot_1504
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o2_1341,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o1_1340,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_n0024_inv
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1_SW1 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I2 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_0_Q,
      O => N479
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1231 : LUT5
    generic map(
      INIT => X"8088A0AA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT123
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2611 : LUT6
    generic map(
      INIT => X"80888888A0AAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      I5 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT3021 : LUT5
    generic map(
      INIT => X"2FFF2F2F"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT302
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT15111 : LUT5
    generic map(
      INIT => X"FF0F2202"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I4 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1511
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1611 : LUT5
    generic map(
      INIT => X"4141FF41"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT161
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT5111 : LUT5
    generic map(
      INIT => X"6565FF65"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT511
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT3311 : LUT5
    generic map(
      INIT => X"4141FF41"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT331
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT3111 : LUT5
    generic map(
      INIT => X"6565FF65"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT311
    );
  U0_xaui_inst_transmitter_align_n0020_inv1 : LUT4
    generic map(
      INIT => X"22F2"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      O => U0_xaui_inst_transmitter_align_n0020_inv
    );
  U0_xaui_inst_transmitter_align_mux1111 : LUT6
    generic map(
      INIT => X"77F755F544045505"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_align_count(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I5 => U0_xaui_inst_transmitter_align_prbs(2),
      O => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_1_Q
    );
  U0_xaui_inst_transmitter_align_mux111 : LUT6
    generic map(
      INIT => X"FFFF4F44B0BB0000"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I4 => U0_xaui_inst_transmitter_align_count(0),
      I5 => U0_xaui_inst_transmitter_align_prbs(1),
      O => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_0_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut_15_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(14),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(15),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_int_lut(15)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut_15_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(14),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_pma_int(15),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_addr_pma_int_lut(15)
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mcount_bit_count_xor_4_1_SW0 : LUT5
    generic map(
      INIT => X"55555556"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(2),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(3),
      O => N136
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT28 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_2_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_2_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_10_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT33 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_3_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_3_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_11_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT41 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_4_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_12_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT51 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_5_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_5_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_13_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT61 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_6_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_6_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_14_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT71 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_7_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_7_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_15_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT81 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_0_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_0_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_16_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT91 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_1_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_1_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_17_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT101 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_2_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_2_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_18_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT111 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_3_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_3_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_19_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT131 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_4_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_20_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT141 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_5_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_5_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_21_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT151 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_6_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_6_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_22_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT161 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_7_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_7_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_23_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT171 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_0_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_0_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_24_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT181 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_1_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_1_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_25_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT191 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_2_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_2_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_26_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT201 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_3_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_3_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_27_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT211 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_4_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_28_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT221 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_5_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_5_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_29_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT241 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_6_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_6_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_30_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT251 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_7_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_7_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_31_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT301 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_7_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_7_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_7_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT311 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_0_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_0_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_8_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_Mmux_last_qmsg_31_txd_in_63_mux_5_OUT321 : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_1_Q,
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_1_Q,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg_31_txd_in_63_mux_5_OUT_9_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT63_SW0 : LUT6
    generic map(
      INIT => X"15D5FFFF15D515D5"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_0_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(8),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      O => N10
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT151 : LUT6
    generic map(
      INIT => X"AAAAAA2AAAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(7),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_8_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_Mmux_shift_reg_14_data_in_15_mux_39_OUT161 : LUT6
    generic map(
      INIT => X"AAAAAA2AAAAAAAAA"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(8),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1264,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1265,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_1263,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_opcode(1),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg_14_data_in_15_mux_39_OUT_9_Q
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_glue_rst_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      O => N464
    );
  U0_xaui_inst_usrclk_reset_rstpot : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xaui_inst_usrclk_reset_pipe_359,
      I1 => reset,
      I2 => NlwRenamedSig_OI_U0_xaui_inst_G_HAS_MDIO_management_1_reset_reg,
      O => U0_xaui_inst_usrclk_reset_rstpot_1503
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261 : LUT5
    generic map(
      INIT => X"FFFF0888"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_0_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_32_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT351 : LUT6
    generic map(
      INIT => X"FFFFFFFFA8880888"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_0_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(8),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_40_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT431 : LUT6
    generic map(
      INIT => X"FFFFFFFFA8880888"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_0_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(16),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_48_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT521 : LUT6
    generic map(
      INIT => X"FFFFFFFFA8880888"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_0_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(24),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_56_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT91 : LUT5
    generic map(
      INIT => X"A8880888"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT123,
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_1_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(17),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_17_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT181 : LUT5
    generic map(
      INIT => X"A8880888"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT123,
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_1_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(25),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_25_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT531 : LUT6
    generic map(
      INIT => X"2220202000202020"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568,
      I1 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I2 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_1_Q,
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(25),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_57_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT441 : LUT6
    generic map(
      INIT => X"2220202000202020"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568,
      I1 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I2 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_1_Q,
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(17),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_49_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT361 : LUT6
    generic map(
      INIT => X"2220202000202020"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568,
      I1 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I2 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_1_Q,
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(9),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_41_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT271 : LUT6
    generic map(
      INIT => X"2020202020200020"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_1_Q,
      I1 => U0_xaui_inst_transmitter_tx_code_q(1),
      I2 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT261_568,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_33_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT571 : LUT5
    generic map(
      INIT => X"FFFFEA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(28),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT302,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_60_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT541 : LUT5
    generic map(
      INIT => X"FFFFEA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_2_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(26),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT302,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_58_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT481 : LUT5
    generic map(
      INIT => X"FFFFEA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(20),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT302,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_52_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT461 : LUT5
    generic map(
      INIT => X"FFFFEA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_2_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(18),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT302,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_50_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT391 : LUT5
    generic map(
      INIT => X"FFFFEA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(12),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT302,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_44_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT371 : LUT5
    generic map(
      INIT => X"FFFFEA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_2_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(10),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT302,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_42_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT301 : LUT5
    generic map(
      INIT => X"FFFFEA2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(7),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT302,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_36_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT8_SW0 : LUT6
    generic map(
      INIT => X"15D5FFFF15D515D5"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_0_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(16),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      O => N4
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT17_SW0 : LUT6
    generic map(
      INIT => X"15D5FFFF15D515D5"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_0_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(24),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT631,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      O => N6
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT210 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_2_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(10),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_10_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT410 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(12),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_12_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT231 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_2_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(7),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_2_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT191 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_2_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(26),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_26_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT451 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(7),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_4_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT211 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(28),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_28_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT132 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_4_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(20),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_20_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT291 : LUT6
    generic map(
      INIT => X"5555544455550444"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_3_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(7),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_35_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT381 : LUT6
    generic map(
      INIT => X"5555544455550444"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_3_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(11),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_43_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT551 : LUT6
    generic map(
      INIT => X"5555544455550444"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_3_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(27),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_59_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT471 : LUT6
    generic map(
      INIT => X"5555544455550444"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I1 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_3_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(19),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_51_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT31 : LUT6
    generic map(
      INIT => X"5555544455550444"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_3_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(11),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_11_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT111 : LUT6
    generic map(
      INIT => X"5555544455550444"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_3_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(19),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_19_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT201 : LUT6
    generic map(
      INIT => X"5555544455550444"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_3_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(27),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_27_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT341 : LUT6
    generic map(
      INIT => X"5555544455550444"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_3_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(7),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_3_Q
    );
  U0_xaui_inst_transmitter_align_mux211 : LUT6
    generic map(
      INIT => X"FFBABAFF45000045"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_a(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_align_count(1),
      I4 => U0_xaui_inst_transmitter_align_count(2),
      I5 => U0_xaui_inst_transmitter_align_prbs(3),
      O => U0_xaui_inst_transmitter_align_count_4_PWR_11_o_mux_9_OUT_2_Q
    );
  U0_xaui_inst_receiver_sync_status_int_3_1 : LUT6
    generic map(
      INIT => X"8080808080808000"
    )
    port map (
      I0 => U0_xaui_inst_receiver_sync_ok_int(2),
      I1 => U0_xaui_inst_receiver_sync_ok_int(1),
      I2 => U0_xaui_inst_receiver_sync_ok_int(0),
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_2_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_3_Q,
      O => U0_xaui_inst_receiver_sync_status_int
    );
  U0_xaui_inst_transmitter_recoder_txc_out_7_glue_set : LUT5
    generic map(
      INIT => X"FFFFFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txc_out_382,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911,
      I4 => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      O => U0_xaui_inst_transmitter_recoder_txc_out_7_glue_set_1488
    );
  U0_xaui_inst_transmitter_recoder_txc_out_6_glue_set : LUT5
    generic map(
      INIT => X"FFFFFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txc_out_391,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911,
      I4 => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      O => U0_xaui_inst_transmitter_recoder_txc_out_6_glue_set_1489
    );
  U0_xaui_inst_transmitter_recoder_txc_out_5_glue_set : LUT5
    generic map(
      INIT => X"FFFFFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txc_out_400,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911,
      I4 => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      O => U0_xaui_inst_transmitter_recoder_txc_out_5_glue_set_1490
    );
  U0_xaui_inst_transmitter_recoder_txc_out_4_glue_set : LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txc_out_409,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT2911,
      I4 => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      O => U0_xaui_inst_transmitter_recoder_txc_out_4_glue_set_1491
    );
  U0_xaui_inst_transmitter_recoder_txc_out_3_glue_set : LUT5
    generic map(
      INIT => X"FFFFFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txc_out_418,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      I4 => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      O => U0_xaui_inst_transmitter_recoder_txc_out_3_glue_set_1492
    );
  U0_xaui_inst_transmitter_recoder_txc_out_2_glue_set : LUT5
    generic map(
      INIT => X"FFFFFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txc_out_427,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      I4 => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      O => U0_xaui_inst_transmitter_recoder_txc_out_2_glue_set_1493
    );
  U0_xaui_inst_transmitter_recoder_txc_out_1_glue_set : LUT5
    generic map(
      INIT => X"FFFFFF2A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txc_out_436,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      I4 => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      O => U0_xaui_inst_transmitter_recoder_txc_out_1_glue_set_1494
    );
  U0_xaui_inst_transmitter_recoder_txc_out_0_glue_set : LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txc_out_445,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT131,
      I4 => U0_xaui_inst_transmitter_recoder_test_pattern_en_GND_10_o_AND_7_o,
      O => U0_xaui_inst_transmitter_recoder_txc_out_0_glue_set_1495
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_7_AND_204_o_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => mgt_codevalid(7),
      I1 => mgt_rxcharisk(7),
      I2 => mgt_rxdata(58),
      I3 => mgt_rxdata(56),
      I4 => U0_xaui_inst_receiver_code_error_7_2_1358,
      I5 => mgt_rxdata(57),
      O => N66
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_6_AND_202_o_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => mgt_codevalid(5),
      I1 => mgt_rxcharisk(5),
      I2 => mgt_rxdata(42),
      I3 => mgt_rxdata(40),
      I4 => U0_xaui_inst_receiver_code_error_6_2_1360,
      I5 => mgt_rxdata(41),
      O => N68
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_5_AND_200_o_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => mgt_codevalid(3),
      I1 => mgt_rxcharisk(3),
      I2 => mgt_rxdata(26),
      I3 => mgt_rxdata(24),
      I4 => U0_xaui_inst_receiver_code_error_5_2_1362,
      I5 => mgt_rxdata(25),
      O => N70
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_4_AND_198_o_SW0 : LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
    port map (
      I0 => mgt_rxdata(12),
      I1 => mgt_rxdata(11),
      I2 => mgt_rxdata(10),
      I3 => mgt_rxcharisk(1),
      I4 => U0_xaui_inst_receiver_code_error_4_2_1364,
      I5 => mgt_codevalid(1),
      O => N72
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_3_AND_196_o_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => mgt_codevalid(6),
      I1 => mgt_rxcharisk(6),
      I2 => mgt_rxdata(50),
      I3 => mgt_rxdata(48),
      I4 => U0_xaui_inst_receiver_code_error_3_2_1366,
      I5 => mgt_rxdata(49),
      O => N74
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_2_AND_194_o_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => mgt_codevalid(4),
      I1 => mgt_rxcharisk(4),
      I2 => mgt_rxdata(34),
      I3 => mgt_rxdata(32),
      I4 => U0_xaui_inst_receiver_code_error_2_2_1368,
      I5 => mgt_rxdata(33),
      O => N76
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_1_AND_192_o_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => mgt_codevalid(2),
      I1 => mgt_rxcharisk(2),
      I2 => mgt_rxdata(18),
      I3 => mgt_rxdata(16),
      I4 => U0_xaui_inst_receiver_code_error_1_2_1370,
      I5 => mgt_rxdata(17),
      O => N78
    );
  U0_xaui_inst_receiver_recoder_PWR_20_o_code_error_0_AND_190_o_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => mgt_codevalid(0),
      I1 => mgt_rxcharisk(0),
      I2 => mgt_rxdata(2),
      I3 => mgt_rxdata(0),
      I4 => U0_xaui_inst_receiver_code_error_0_2_1372,
      I5 => mgt_rxdata(1),
      O => N80
    );
  U0_xaui_inst_transmitter_align_Mmux_a_cnt2 : LUT6
    generic map(
      INIT => X"00000000000F020F"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_align_extra_a_675,
      I1 => U0_xaui_inst_transmitter_align_count(0),
      I2 => U0_xaui_inst_transmitter_align_count(3),
      I3 => U0_xaui_inst_transmitter_align_count(2),
      I4 => U0_xaui_inst_transmitter_align_count(1),
      I5 => N481,
      O => U0_xaui_inst_transmitter_a_due(1)
    );
  U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_rstpot : LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_464,
      I1 => N464,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o1_1340,
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_6_o2_1341,
      I4 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o2_1343,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_PWR_9_o_GND_9_o_AND_5_o1_1342,
      O => U0_xaui_inst_transmitter_tqmsg_capture_1_q_det_rstpot_1505
    );
  U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_glue_rst_SW1 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I3 => U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_702,
      O => N483
    );
  U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_glue_rst : LUT6
    generic map(
      INIT => X"CCCCCCCF8880888A"
    )
    port map (
      I0 => N475,
      I1 => N483,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I5 => U0_xaui_inst_usrclk_reset_354,
      O => U0_xaui_inst_transmitter_state_machine_next_ifg_is_a_glue_rst_1497
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT10_SW1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      O => N485
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT10 : LUT6
    generic map(
      INIT => X"FFFFFE54FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_2_Q,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I3 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(18),
      I4 => N485,
      I5 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_18_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT32111 : LUT5
    generic map(
      INIT => X"FF0F2202"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      O => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT3211
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT1 : LUT5
    generic map(
      INIT => X"220222F2"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I1 => N479,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_0_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT221 : LUT6
    generic map(
      INIT => X"FFFFEE8AFFFF228A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_3_filter_txd_out_5_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT511,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(29),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_29_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT141 : LUT6
    generic map(
      INIT => X"FFFFEE8AFFFF228A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_2_filter_txd_out_5_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT511,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(21),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_21_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT56 : LUT6
    generic map(
      INIT => X"FFFFEE8AFFFF228A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_5_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT511,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(13),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_13_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT401 : LUT6
    generic map(
      INIT => X"FFFFEE8AFFFF228A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_5_filter_txd_out_5_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT311,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(13),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_45_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT491 : LUT6
    generic map(
      INIT => X"FFFFEE8AFFFF228A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_6_filter_txd_out_5_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT311,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(21),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_53_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT581 : LUT6
    generic map(
      INIT => X"FFFFEE8AFFFF228A"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_G_FILTER_HIGH_7_filter_txd_out_5_Q,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT311,
      I5 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(29),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_61_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT121 : LUT6
    generic map(
      INIT => X"0400040000000400"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I3 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_1_Q,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_1_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT17 : LUT6
    generic map(
      INIT => X"FFFFFFFF10100110"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_r(0),
      I1 => N6,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I4 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_24_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT63 : LUT6
    generic map(
      INIT => X"FFFFFFFF10100110"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_tx_code_r(0),
      I1 => N10,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I4 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I5 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_8_Q
    );
  U0_xaui_inst_aligned_sticky_glue_set : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_xaui_inst_align_status_int,
      I1 => U0_xaui_inst_aligned_sticky_350,
      I2 => U0_xaui_inst_clear_aligned_edge_356,
      O => U0_xaui_inst_aligned_sticky_glue_set_1485
    );
  U0_xaui_inst_transmitter_align_Mmux_a_cnt2_SW1 : LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_align_count(4),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      O => N481
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT561 : LUT6
    generic map(
      INIT => X"5B4B5B4BFFFF5B4B"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_5_Q,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_5_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT312 : LUT6
    generic map(
      INIT => X"5B4B5B4BFFFF5B4B"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_5_Q,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_37_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT8 : LUT5
    generic map(
      INIT => X"FFFF2022"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I1 => N4,
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I4 => U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT635,
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_16_Q
    );
  U0_xaui_inst_transmitter_align_extra_a_glue_set : LUT5
    generic map(
      INIT => X"FF0F2202"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I4 => U0_xaui_inst_transmitter_align_extra_a_675,
      O => U0_xaui_inst_transmitter_align_extra_a_glue_set_1496
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT611 : LUT6
    generic map(
      INIT => X"0C0C3C0C04041404"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I1 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I3 => U0_xaui_inst_transmitter_G_FILTER_LOW_0_filter_txd_out_6_Q,
      I4 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_6_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT321 : LUT6
    generic map(
      INIT => X"0C0C3C0C04041404"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I1 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I2 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      I3 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_6_Q,
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_38_Q
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_dpot : LUT6
    generic map(
      INIT => X"FF00FF00DF80FF00"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we_1106,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(2),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_dpot_1753
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_0_dpot : LUT6
    generic map(
      INIT => X"FF00FF00DF80FF00"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we_1106,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_0_dpot_1754
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_1_dpot : LUT6
    generic map(
      INIT => X"F0F0F0F0D8F0F0F0"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_we_1106,
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_shift_reg(1),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_addr_int(0),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdc_rising_1094,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_is_pma_devad,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg_1_dpot_1755
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In111_1 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(4),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(0),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(1),
      I3 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(2),
      I4 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_bit_count(3),
      O => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In111_1756
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_In,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd3_1_1757
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11_1 : LUT6
    generic map(
      INIT => X"0F0F0F0F02520757"
    )
    port map (
      I0 => N161,
      I1 => N198,
      I2 => N160,
      I3 => N197,
      I4 => N196,
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd4_In11,
      O => U0_xaui_inst_G_HAS_MDIO_management_1_Mmux_is_pma_devad11_1758
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => usrclk,
      D => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_In,
      R => U0_xaui_inst_usrclk_reset_354,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_interface_1_state_FSM_FFd2_1_1759
    );
  U0_xaui_inst_align_status_int_inv1_INV_0 : INV
    port map (
      I => NlwRenamedSig_OI_U0_xaui_inst_align_status_int,
      O => U0_xaui_inst_align_status_int_inv
    );
  U0_xaui_inst_type_sel_reg_done_inv1_INV_0 : INV
    port map (
      I => U0_xaui_inst_type_sel_reg_done_353,
      O => U0_xaui_inst_type_sel_reg_done_inv
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT64 : MUXF7
    port map (
      I0 => N487,
      I1 => N488,
      S => U0_xaui_inst_transmitter_tx_code_q(0),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_9_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT64_F : LUT6
    generic map(
      INIT => X"8080008088880088"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I1 => U0_xaui_inst_transmitter_G_FILTER_LOW_1_filter_txd_out_1_Q,
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I4 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      O => N487
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT64_G : LUT6
    generic map(
      INIT => X"8080008088880088"
    )
    port map (
      I0 => U0_xaui_inst_transmitter_state_machine_state_0(0),
      I1 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(9),
      I2 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I3 => U0_xaui_inst_transmitter_state_machine_state_0(2),
      I4 => U0_xaui_inst_transmitter_state_machine_state_0(1),
      I5 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      O => N488
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT28 : MUXF7
    port map (
      I0 => N489,
      I1 => N490,
      S => U0_xaui_inst_transmitter_tx_code_q(1),
      O => U0_xaui_inst_transmitter_recoder_code_sel_9_PWR_10_o_mux_78_OUT_34_Q
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT28_F : LUT6
    generic map(
      INIT => X"F4FFF4F4FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I2 => U0_xaui_inst_transmitter_G_FILTER_HIGH_4_filter_txd_out_2_Q,
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I5 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      O => N489
    );
  U0_xaui_inst_transmitter_recoder_Mmux_code_sel_9_PWR_10_o_mux_78_OUT28_G : LUT6
    generic map(
      INIT => X"F4FFF4F4FFFFFFFF"
    )
    port map (
      I0 => U0_xaui_inst_G_HAS_MDIO_management_1_test_sel_reg(0),
      I1 => U0_xaui_inst_G_HAS_MDIO_management_1_test_en_reg_361,
      I2 => U0_xaui_inst_transmitter_tqmsg_capture_1_last_qmsg(7),
      I3 => U0_xaui_inst_transmitter_state_machine_state_1(1),
      I4 => U0_xaui_inst_transmitter_state_machine_state_1(2),
      I5 => U0_xaui_inst_transmitter_state_machine_state_1(0),
      O => N490
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42 : MUXF7
    port map (
      I0 => N491,
      I1 => N492,
      S => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42_F : LUT6
    generic map(
      INIT => X"A8880220A8882020"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N491
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42_G : LUT6
    generic map(
      INIT => X"8AA80220A8A80220"
    )
    port map (
      I0 => mgt_rxlock(3),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_code_valid_pipe_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_3_pcs_sync_state_p_state_comb_state_temp_1_Q,
      O => N492
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42 : MUXF7
    port map (
      I0 => N493,
      I1 => N494,
      S => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42_F : LUT6
    generic map(
      INIT => X"A8880220A8882020"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N493
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42_G : LUT6
    generic map(
      INIT => X"8AA80220A8A80220"
    )
    port map (
      I0 => mgt_rxlock(2),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_code_valid_pipe_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_2_pcs_sync_state_p_state_comb_state_temp_1_Q,
      O => N494
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42 : MUXF7
    port map (
      I0 => N495,
      I1 => N496,
      S => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42_F : LUT6
    generic map(
      INIT => X"A8880220A8882020"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N495
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42_G : LUT6
    generic map(
      INIT => X"8AA80220A8A80220"
    )
    port map (
      I0 => mgt_rxlock(1),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_code_valid_pipe_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_1_pcs_sync_state_p_state_comb_state_temp_1_Q,
      O => N496
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42 : MUXF7
    port map (
      I0 => N497,
      I1 => N498,
      S => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_0_Q,
      O => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_state_1_4_GND_17_o_mux_46_OUT_3_Q
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42_F : LUT6
    generic map(
      INIT => X"A8880220A8882020"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_1_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_2_Q,
      O => N497
    );
  U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_Mmux_state_1_4_GND_17_o_mux_46_OUT42_G : LUT6
    generic map(
      INIT => X"8AA80220A8A80220"
    )
    port map (
      I0 => mgt_rxlock(0),
      I1 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_4_Q,
      I2 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_3_Q,
      I3 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_2_Q,
      I4 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_code_valid_pipe_1_Q,
      I5 => U0_xaui_inst_receiver_G_SYNC_G_PCS_SYNC_STATE_0_pcs_sync_state_p_state_comb_state_temp_1_Q,
      O => N498
    );
  U0_xaui_inst_G_HAS_MDIO_management_1_Mshreg_mdio_in_reg3 : SRLC16E
    generic map(
      INIT => X"0007"
    )
    port map (
      A0 => N1,
      A1 => N0,
      A2 => N1,
      A3 => N1,
      CE => N0,
      CLK => usrclk,
      D => mdio_in,
      Q => U0_xaui_inst_G_HAS_MDIO_management_1_mdio_in_reg3,
      Q15 => NLW_U0_xaui_inst_G_HAS_MDIO_management_1_Mshreg_mdio_in_reg3_Q15_UNCONNECTED
    );

end STRUCTURE;

-- synthesis translate_on
