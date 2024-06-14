onerror {quit -f}
vlib work
vlog -work work Scanner.vo
vlog -work work Scanner.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Scanner_vlg_vec_tst
vcd file -direction Scanner.msim.vcd
vcd add -internal Scanner_vlg_vec_tst/*
vcd add -internal Scanner_vlg_vec_tst/i1/*
add wave /*
run -all
