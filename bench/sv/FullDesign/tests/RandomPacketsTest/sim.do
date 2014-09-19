quit -sim
make
#-solvefaildebug
vsim  -voptargs="+acc" -classdebug -uvmcontrol=all -msgmode both -t ps -L unisims_ver -L xilinxcorelib_ver -L secureip -novopt work.top work.glbl +UVM_TESTNAME=RandomPacketsTest

#Jumbo frames
set SolveArrayResizeMax 9000

do wave.do
quietly set NumericStdNoWarnings 1;
quietly set StdArithNoWarnings 1;
quietly set IgnoreNote 1;

run 1
quietly set NumericStdNoWarnings 0;
quietly set StdArithNoWarnings 0;
run -all
