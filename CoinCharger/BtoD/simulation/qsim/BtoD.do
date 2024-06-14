onerror {quit -f}
vlib work
vlog -work work BtoD.vo
vlog -work work BtoD.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BtoD_vlg_vec_tst
vcd file -direction BtoD.msim.vcd
vcd add -internal BtoD_vlg_vec_tst/*
vcd add -internal BtoD_vlg_vec_tst/i1/*
add wave /*
run -all
