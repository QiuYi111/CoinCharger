onerror {quit -f}
vlib work
vlog -work work Translate.vo
vlog -work work Translate.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Translate_vlg_vec_tst
vcd file -direction Translate.msim.vcd
vcd add -internal Translate_vlg_vec_tst/*
vcd add -internal Translate_vlg_vec_tst/i1/*
add wave /*
run -all
