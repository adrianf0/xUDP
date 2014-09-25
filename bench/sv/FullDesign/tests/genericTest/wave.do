onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group xaui /top/xaui/iclk_0
add wave -noupdate -expand -group xaui /top/xaui/iclk_1
add wave -noupdate -expand -group xaui /top/xaui/ian_clk_0
add wave -noupdate -expand -group xaui /top/xaui/ian_clk_1
add wave -noupdate -expand -group xaui /top/xaui/iMDC
add wave -noupdate -expand -group xaui /top/xaui/ireset
add wave -noupdate -expand -group xaui /top/xaui/clk_0
add wave -noupdate -expand -group xaui /top/xaui/clk_1
add wave -noupdate -expand -group xaui /top/xaui/an_clk_0
add wave -noupdate -expand -group xaui /top/xaui/an_clk_1
add wave -noupdate -expand -group xaui /top/xaui/MDC
add wave -noupdate -expand -group xaui /top/xaui/reset
add wave -noupdate -expand -group xaui /top/xaui/XD
add wave -noupdate -expand -group xaui /top/xaui/XC
add wave -noupdate -expand -group xaui -subitemconfig {{/top/xaui/lane_bit[0]} -expand {/top/xaui/lane_bit[1]} -expand} /top/xaui/lane_bit
add wave -noupdate -expand -group xaui /top/xaui/lane_bit_n
add wave -noupdate -expand -group xaui /top/xaui/L_10b
add wave -noupdate -expand -group xaui /top/xaui/XSBI_DATA_PARALLEL
add wave -noupdate -expand -group xaui /top/xaui/pcs_baser_66b
add wave -noupdate -expand -group xaui /top/xaui/MDIO_OUT
add wave -noupdate -expand -group xaui /top/xaui/MDIO_IN
add wave -noupdate -expand -group xaui /top/xaui/config_enable_clock_recovery
add wave -noupdate -expand -group xaui /top/xaui/config_enable_differential_signaling
add wave -noupdate -expand -group xaui /top/xaui/config_magic_packet_enable
add wave -noupdate -expand -group xaui /top/xaui/config_enable_vlan_double_tagged_frame
add wave -noupdate -expand -group xaui /top/xaui/config_pfc_enable
add wave -noupdate -expand -group xaui /top/xaui/config_priority_pfc_enable
add wave -noupdate -expand -group xaui /top/xaui/config_enable_xgmii_sdr_64
add wave -noupdate -expand -group xaui /top/xaui/config_mac_pause_transmission
add wave -noupdate -expand -group xaui /top/xaui/config_ignore_differential_signaling_cdr
add wave -noupdate -expand -group xaui /top/xaui/config_mac_set_min_tagged_frame_size_68
add wave -noupdate -expand -group xaui /top/xaui/config_mac_fault_state_machine_enable
add wave -noupdate -expand -group xaui /top/xaui/config_mac_jumbo_frame_octet_receive_limit
add wave -noupdate -expand -group xaui /top/xaui/config_mac_data_frame_octet_receive_limit
add wave -noupdate -expand -group xaui /top/xaui/config_mac_type_frame_octet_receive_limit
add wave -noupdate -expand -group xaui /top/xaui/config_mac_ifs_stretch_ratio
add wave -noupdate -expand -group xaui /top/xaui/config_mac_ifs_stretch_mode_enabled
add wave -noupdate -expand -group xaui /top/xaui/config_mask_trace_log
add wave -noupdate -expand -group xaui /top/xaui/config_enable_status_reg_cov
add wave -noupdate -expand -group xaui /top/xaui/config_skip_xmit
add wave -noupdate -expand -group xaui /top/xaui/config_interface_type
add wave -noupdate -expand -group xaui /top/xaui/config_pma_lane_count
add wave -noupdate -expand -group xaui /top/xaui/config_pma_lane_width
add wave -noupdate -expand -group xaui /top/xaui/config_include_fec_layer
add wave -noupdate -expand -group xaui /top/xaui/config_include_rs_fec_layer
add wave -noupdate -expand -group xaui /top/xaui/config_fec_lane_width
add wave -noupdate -expand -group xaui /top/xaui/config_enable_all_assertions
add wave -noupdate -expand -group xaui /top/xaui/config_enable_assertion
add wave -noupdate -expand -group xaui /top/xaui/config_basex_bypass_rx_synchronization
add wave -noupdate -expand -group xaui /top/xaui/config_basex_disparity_error_on_lane
add wave -noupdate -expand -group xaui /top/xaui/config_basex_invalid_symbol_on_lane
add wave -noupdate -expand -group xaui /top/xaui/config_basex_invalid_symbol_after_terminate_os
add wave -noupdate -expand -group xaui /top/xaui/config_basex_invalid_symbol_on_lane_during_frame
add wave -noupdate -expand -group xaui /top/xaui/config_basex_only_R_on_lane_during_idle
add wave -noupdate -expand -group xaui /top/xaui/config_basex_A_on_lane_when_expected_K
add wave -noupdate -expand -group xaui /top/xaui/config_basex_K_on_lane_when_expected_A
add wave -noupdate -expand -group xaui /top/xaui/config_basex_valid_data_on_lane_when_expected_K
add wave -noupdate -expand -group xaui /top/xaui/config_basex_valid_data_on_lane_when_expected_A
add wave -noupdate -expand -group xaui /top/xaui/config_basex_valid_cg_on_lane_when_expected_Q
add wave -noupdate -expand -group xaui /top/xaui/config_basex_valid_cg_on_lane_when_expected_R
add wave -noupdate -expand -group xaui /top/xaui/config_rxaui_aa_error_count
add wave -noupdate -expand -group xaui /top/xaui/config_baser_bypass_scrambler
add wave -noupdate -expand -group xaui /top/xaui/config_baser_invalid_sync_header
add wave -noupdate -expand -group xaui /top/xaui/config_baser_invalid_control_code
add wave -noupdate -expand -group xaui /top/xaui/config_baser_invalid_null_field
add wave -noupdate -expand -group xaui /top/xaui/config_baser_invalid_o_code
add wave -noupdate -expand -group xaui /top/xaui/config_baser_invalid_block_type_field
add wave -noupdate -expand -group xaui /top/xaui/config_baser_invalid_symbol_val
add wave -noupdate -expand -group xaui /top/xaui/config_baser_am_lock_true_on_first_am
add wave -noupdate -expand -group xaui /top/xaui/config_rs_fec_lock_on_first_amp
add wave -noupdate -expand -group xaui /top/xaui/config_baser_corrupt_am
add wave -noupdate -expand -group xaui /top/xaui/config_rs_fec_corrupt_amp
add wave -noupdate -expand -group xaui /top/xaui/config_rs_fec_corrupt_amp_pad
add wave -noupdate -expand -group xaui /top/xaui/config_baser_invalid_66bit_data
add wave -noupdate -expand -group xaui /top/xaui/config_baser_invalid_lane_ptr
add wave -noupdate -expand -group xaui /top/xaui/config_40_100g_baser_invalid_66bit_data
add wave -noupdate -expand -group xaui /top/xaui/config_40_100g_baser_invalid_16bit_bip
add wave -noupdate -expand -group xaui /top/xaui/config_fec_bypass_scrambler
add wave -noupdate -expand -group xaui /top/xaui/config_error_fec_invalid_parity
add wave -noupdate -expand -group xaui /top/xaui/config_rs_fec_invalid_parity
add wave -noupdate -expand -group xaui /top/xaui/config_fec_good_parity_count_n
add wave -noupdate -expand -group xaui /top/xaui/config_fec_invalid_parity_count_m
add wave -noupdate -expand -group xaui /top/xaui/config_wis_G1_octet
add wave -noupdate -expand -group xaui /top/xaui/config_wis_K2_octet
add wave -noupdate -expand -group xaui /top/xaui/config_wis_M1_octet
add wave -noupdate -expand -group xaui /top/xaui/config_wis_bypass_scrambler
add wave -noupdate -expand -group xaui /top/xaui/config_mac_allow_user_preamble
add wave -noupdate -expand -group xaui /top/xaui/config_mac_insert_user_fcs
add wave -noupdate -expand -group xaui /top/xaui/config_mac_include_user_preamble_in_fcs
add wave -noupdate -expand -group xaui /top/xaui/config_mac_pad_octet
add wave -noupdate -expand -group xaui /top/xaui/config_enable_unicast_addr_detection_for_pause_frames
add wave -noupdate -expand -group xaui /top/xaui/config_mmd_default_read_data
add wave -noupdate -expand -group xaui /top/xaui/config_mac_corrupted_fcs_error
add wave -noupdate -expand -group xaui /top/xaui/config_mac_frame_too_long_error
add wave -noupdate -expand -group xaui /top/xaui/config_mac_no_sfd
add wave -noupdate -expand -group xaui /top/xaui/config_mac_skip_fcs_field_error
add wave -noupdate -expand -group xaui /top/xaui/config_mac_undersize_frame_error
add wave -noupdate -expand -group xaui /top/xaui/config_mac_invalid_tcc_error
add wave -noupdate -expand -group xaui /top/xaui/config_mac_invalid_column_error
add wave -noupdate -expand -group xaui /top/xaui/config_mac_column_control_val
add wave -noupdate -expand -group xaui /top/xaui/config_mac_corrupted_len_field_error
add wave -noupdate -expand -group xaui /top/xaui/config_mac_enable_control_len_type_error
add wave -noupdate -expand -group xaui /top/xaui/config_allow_multiple_errors_in_frame
add wave -noupdate -expand -group xaui /top/xaui/config_eee_enable
add wave -noupdate -expand -group xaui /top/xaui/config_wake_up_time
add wave -noupdate -expand -group xaui /top/xaui/config_lpi_clk_stop_enable
add wave -noupdate -expand -group xaui /top/xaui/config_lpi_clk_resume
add wave -noupdate -expand -group xaui /top/xaui/config_no_of_clk_before_stop
add wave -noupdate -expand -group xaui /top/xaui/config_no_of_clk_before_stop_device1
add wave -noupdate -expand -group xaui /top/xaui/config_no_of_clk_before_exit_lpi
add wave -noupdate -expand -group xaui /top/xaui/config_reset_high_clocks
add wave -noupdate -expand -group xaui /top/xaui/config_reset_hold_time
add wave -noupdate -expand -group xaui /top/xaui/config_tx_clk_init_value
add wave -noupdate -expand -group xaui /top/xaui/config_rx_clk_init_value
add wave -noupdate -expand -group xaui /top/xaui/config_tx_clk_phase_shift
add wave -noupdate -expand -group xaui /top/xaui/config_rx_clk_phase_shift
add wave -noupdate -expand -group xaui /top/xaui/config_mdio_clk_init_value
add wave -noupdate -expand -group xaui /top/xaui/config_mdio_clk_phase_shift
add wave -noupdate -expand -group xaui /top/xaui/config_mdio_setup_time
add wave -noupdate -expand -group xaui /top/xaui/config_mdio_hold_time
add wave -noupdate -expand -group xaui /top/xaui/config_autoneg_enable
add wave -noupdate -expand -group xaui /top/xaui/config_an_tx_clk_init_value
add wave -noupdate -expand -group xaui /top/xaui/config_an_rx_clk_init_value
add wave -noupdate -expand -group xaui /top/xaui/config_an_tx_clk_phase_shift
add wave -noupdate -expand -group xaui /top/xaui/config_an_rx_clk_phase_shift
add wave -noupdate -expand -group xaui /top/xaui/config_delimiter_transitions_min
add wave -noupdate -expand -group xaui /top/xaui/config_delimiter_transitions
add wave -noupdate -expand -group xaui /top/xaui/config_delimiter_transitions_max
add wave -noupdate -expand -group xaui /top/xaui/config_clock_transitions_min
add wave -noupdate -expand -group xaui /top/xaui/config_clock_transitions
add wave -noupdate -expand -group xaui /top/xaui/config_clock_transitions_max
add wave -noupdate -expand -group xaui /top/xaui/config_data_transitions_min
add wave -noupdate -expand -group xaui /top/xaui/config_data_transitions
add wave -noupdate -expand -group xaui /top/xaui/config_data_transitions_max
add wave -noupdate -expand -group xaui /top/xaui/config_page_max_timer
add wave -noupdate -expand -group xaui /top/xaui/config_an_selector_field
add wave -noupdate -expand -group xaui /top/xaui/config_an_pause_capability
add wave -noupdate -expand -group xaui /top/xaui/config_an_ability
add wave -noupdate -expand -group xaui /top/xaui/config_an_fec
add wave -noupdate -expand -group xaui /top/xaui/config_mr_adv_ability
add wave -noupdate -expand -group xaui /top/xaui/config_break_link_timer
add wave -noupdate -expand -group xaui /top/xaui/config_np_tx
add wave -noupdate -expand -group xaui /top/xaui/config_number_np
add wave -noupdate -expand -group xaui /top/xaui/config_an_allow_user_page
add wave -noupdate -expand -group xaui /top/xaui/config_an_user_transmitted_nonce
add wave -noupdate -expand -group xaui /top/xaui/config_an_user_page
add wave -noupdate -expand -group xaui /top/xaui/config_restart_autoneg
add wave -noupdate -expand -group xaui /top/xaui/config_enable_higig2
add wave -noupdate -expand -group xaui /top/xaui/config_higig_inter_msg_octets_gap
add wave -noupdate -expand -group xaui /top/xaui/config_enable_higig_preemptive_transmission
add wave -noupdate -expand -group xaui /top/xaui/status_mac_error_in_preamble
add wave -noupdate -expand -group xaui /top/xaui/status_mac_error_in_frame
add wave -noupdate -expand -group xaui /top/xaui/status_mac_frame_too_long
add wave -noupdate -expand -group xaui /top/xaui/status_mac_undersize_frame
add wave -noupdate -expand -group xaui /top/xaui/status_mac_frame_length_mismatch
add wave -noupdate -expand -group xaui /top/xaui/status_mac_frame_fcs_error
add wave -noupdate -expand -group xaui /top/xaui/status_mac_fcs_value
add wave -noupdate -expand -group xaui /top/xaui/status_higig_msg_fcs_value
add wave -noupdate -expand -group xaui /top/xaui/status_mac_invalid_frame_terminated
add wave -noupdate -expand -group xaui /top/xaui/status_start_of_frame
add wave -noupdate -expand -group xaui /top/xaui/status_mac_frame_with_less_ifg
add wave -noupdate -expand -group xaui /top/xaui/status_eee_clk_stopped
add wave -noupdate -expand -group xaui /top/xaui/status_magic_packet_detected
add wave -noupdate -expand -group xaui /top/xaui/status_mdio_port_address
add wave -noupdate -expand -group xaui /top/xaui/status_mdio_device_address
add wave -noupdate -expand -group xaui /top/xaui/status_mdio_ext_reg_address
add wave -noupdate -expand -group xaui /top/xaui/status_configure_mmd_read_data
add wave -noupdate -expand -group xaui /top/xaui/status_10g_baser_block_lock
add wave -noupdate -expand -group xaui /top/xaui/status_10g_baser_slip_done
add wave -noupdate -expand -group xaui /top/xaui/status_initialization_done
add wave -noupdate -expand -group xaui /top/xaui/status_baser_block_lock
add wave -noupdate -expand -group xaui /top/xaui/status_baser_am_lock
add wave -noupdate -expand -group xaui /top/xaui/m_clk_factor_ps
add wave -noupdate -expand -group xaui /top/xaui/config_baser_end_wlm_connected
add wave -noupdate -expand -group xaui /top/xaui/config_basex_bypass_rx_alignement
add wave -noupdate -expand -group xaui /top/xaui/config_higig_number_of_messsage_allowed
add wave -noupdate -expand -group xaui /top/xaui/initial_config_done
add wave -noupdate -expand -group xaui /top/xaui/ethernet_device_end
add wave -noupdate -expand -group xaui /top/xaui/ethernet_clk_contr_end
add wave -noupdate -expand -group xaui /top/xaui/ethernet_rst_contr_end
add wave -noupdate -expand -group xaui /top/xaui/ethernet_mdio_clk_contr_end
add wave -noupdate -expand -group xaui /top/xaui/ethernet_sta_end
add wave -noupdate -expand -group xaui /top/xaui/ethernet_mmd_end
add wave -noupdate -expand -group xaui /top/xaui/ethernet_an_clk_contr_end
add wave -noupdate -expand -group xaui /top/xaui/ethernet__monitor_end
add wave -noupdate -expand -group xaui /top/xaui/_interface_ref
add wave -noupdate -expand -group xaui /top/xaui/m_clk_0
add wave -noupdate -expand -group xaui /top/xaui/m_clk_1
add wave -noupdate -expand -group xaui /top/xaui/m_an_clk_0
add wave -noupdate -expand -group xaui /top/xaui/m_an_clk_1
add wave -noupdate -expand -group xaui /top/xaui/m_MDC
add wave -noupdate -expand -group xaui /top/xaui/m_reset
add wave -noupdate -expand -group xaui /top/xaui/m_MDIO_OUT
add wave -noupdate -expand -group xaui /top/xaui/m_MDIO_IN
add wave -noupdate /top/xudp/BRD_RESET_SW
add wave -noupdate /top/xudp/BRD_CLK_P
add wave -noupdate /top/xudp/BRD_CLK_N
add wave -noupdate /top/xudp/FPGA_LED
add wave -noupdate /top/xudp/FPGA_PROG_B
add wave -noupdate /top/xudp/DIP_GPIO
add wave -noupdate /top/xudp/MDIO_PAD
add wave -noupdate /top/xudp/MDC
add wave -noupdate /top/xudp/PHY_RSTN
add wave -noupdate /top/xudp/PHY_LASI
add wave -noupdate /top/xudp/PHY_INTA
add wave -noupdate /top/xudp/PHY10G_RCK_P
add wave -noupdate /top/xudp/PHY10G_RCK_N
add wave -noupdate /top/xudp/FXTX_P
add wave -noupdate /top/xudp/FXTX_N
add wave -noupdate /top/xudp/FXRX_P
add wave -noupdate /top/xudp/FXRX_N
add wave -noupdate /top/xudp/reset
add wave -noupdate /top/xudp/clk100
add wave -noupdate /top/xudp/clk156
add wave -noupdate /top/xudp/mdio_i
add wave -noupdate /top/xudp/mdio_o
add wave -noupdate /top/xudp/mdio_t
add wave -noupdate /top/xudp/configuration_vector
add wave -noupdate /top/xudp/status_vector
add wave -noupdate /top/xudp/mgt_tx_ready
add wave -noupdate /top/xudp/dclk
add wave -noupdate /top/xudp/xgmii_txd
add wave -noupdate /top/xudp/xgmii_txc
add wave -noupdate /top/xudp/xgmii_rxd
add wave -noupdate /top/xudp/xgmii_rxc
add wave -noupdate /top/xudp/pkt_rx_ren
add wave -noupdate /top/xudp/pkt_rx_val
add wave -noupdate /top/xudp/pkt_rx_sop
add wave -noupdate /top/xudp/pkt_rx_mod
add wave -noupdate /top/xudp/pkt_rx_err
add wave -noupdate /top/xudp/pkt_rx_eop
add wave -noupdate /top/xudp/pkt_rx_data
add wave -noupdate /top/xudp/pkt_rx_avail
add wave -noupdate /top/xudp/pkt_tx_full
add wave -noupdate /top/xudp/pkt_tx_val
add wave -noupdate /top/xudp/pkt_tx_sop
add wave -noupdate /top/xudp/pkt_tx_mod
add wave -noupdate /top/xudp/pkt_tx_eop
add wave -noupdate /top/xudp/pkt_tx_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {977 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 271
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {19413 ps}
