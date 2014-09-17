action = "simulation"
#include_dirs = [ __import__('os').environ.get('QUESTA_MVC_HOME') + '/questa_mvc_src/sv',
#                 __import__('os').environ.get('QUESTA_MVC_HOME') + '/questa_mvc_src/sv/mvc_base',
#                 __import__('os').environ.get('QUESTA_MVC_HOME') + '/include',
#                 __import__('os').environ.get('QUESTA_MVC_HOME') + '/examples/ethernet/common',
#                 __import__('os').environ.get('QUESTA_MVC_HOME') + '/questa_mvc_src/sv/ethernet/',
#                 __import__('os').environ.get('MENTOR_ROOTDIR') + 'verilog_src/uvm-1.1d/src/',
#                 "../../environment", "../../sequences/"]

vlog_opt = '+incdir+' + \
__import__('os').environ.get('QUESTA_MVC_HOME') + '/questa_mvc_src/sv +incdir+' + \
__import__('os').environ.get('QUESTA_MVC_HOME') + '/questa_mvc_src/sv/mvc_base +incdir+' + \
__import__('os').environ.get('QUESTA_MVC_HOME') + '/include +incdir+' + \
__import__('os').environ.get('QUESTA_MVC_HOME') + '/examples/ethernet/common +incdir+' + \
__import__('os').environ.get('QUESTA_MVC_HOME') + '/questa_mvc_src/sv/ethernet/ ' + \
'+incdir+../../environment/ ' + \
'+incdir+../../sequences/ '

#top_module = "top"
#sim_tool = "vsim"

files = ["src/genericTest.sv"]

modules = { "local" : [ "../../../../../syn/xilinx/src" ] }
