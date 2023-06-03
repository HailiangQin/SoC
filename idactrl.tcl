ida_database -open
ida_probe -log
ida_probe -wave -wave_probe_args="soc_top_tb -depth all"
ida_probe -wave -wave_probe_args="utils_top_tb -depth all"
ida_probe -wave -wave_probe_args="$uvm:{uvm_test_top} -depth all"

run
