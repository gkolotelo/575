transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/ES575A/Lab1/Lab1e/mux5to1_3bits.vhd}
vcom -93 -work work {F:/ES575A/Lab1/Lab1e/mux2to1.vhd}
vcom -93 -work work {F:/ES575A/Lab1/Lab1e/decoder_7segment.vhd}
vcom -93 -work work {F:/ES575A/Lab1/Lab1e/Exp1e.vhd}

