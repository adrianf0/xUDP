files = [ "xUDP_top.vhd",
          __import__('os').path.relpath( __import__('os').environ.get('XILINX') ) + "/verilog/src/glbl.v" ]

modules = { "local" : [ "../../../rtl/vhdl/ipcores/xilinx/xaui"]}
#                        "../../../rtl/verilog/ipcores/xge_mac" ]}
                        
