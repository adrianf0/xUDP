action = "simulation"

include_dirs = ["./include"]

#vlog_opt = '+incdir+' + \
#"../../../../../rtl/verilog/ipcores/xge_mac/include"
#__import__('os').path.dirname(__import__('os').path.abspath(__import__('inspect').getfile(__import__('inspect').currentframe())))
#os.path.abspath(__import__('inspect').getfile(inspect.currentframe())))


files = [ "./include/utils.v",
          "./include/CRC32_D64.v",
          "./include/CRC32_D8.v",   
          "./verilog/tx_dequeue.v",
          "./verilog/sync_clk_core.v",
          "./verilog/generic_fifo.v",
          "./verilog/stats.v",
          "./verilog/rx_hold_fifo.v",
          "./verilog/tx_enqueue.v",
          "./verilog/rx_dequeue.v",
          "./verilog/sync_clk_wb.v",
          "./verilog/tx_data_fifo.v",
          "./verilog/fault_sm.v",
          "./verilog/generic_mem_small.v",
          "./verilog/wishbone_if.v",
          "./verilog/generic_mem_medium.v",
          "./verilog/meta_sync_single.v",
          "./verilog/stats_sm.v",
          "./verilog/rx_stats_fifo.v",
          "./verilog/tx_hold_fifo.v",
          "./verilog/rx_data_fifo.v",
          "./verilog/xge_mac.v",
          "./verilog/rx_enqueue.v",
          "./verilog/generic_fifo_ctrl.v",
          "./verilog/sync_clk_xgmii_tx.v",
          "./verilog/tx_stats_fifo.v",
          "./verilog/meta_sync.v" ]

