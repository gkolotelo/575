transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ES575A/Downloads/tmp/Lab10_gkk_asi/aluu.vhd}
vcom -93 -work work {C:/Users/ES575A/Downloads/tmp/Lab10_gkk_asi/decoder_7segment_hex.vhd}
vcom -93 -work work {C:/Users/ES575A/Downloads/tmp/Lab10_gkk_asi/Exp10_part1.vhd}
vcom -93 -work work {C:/Users/ES575A/Downloads/tmp/Lab10_gkk_asi/regn.vhd}
vcom -93 -work work {C:/Users/ES575A/Downloads/tmp/Lab10_gkk_asi/processor.vhd}
vcom -93 -work work {C:/Users/ES575A/Downloads/tmp/Lab10_gkk_asi/mux_16x10.vhd}
vcom -93 -work work {C:/Users/ES575A/Downloads/tmp/Lab10_gkk_asi/dec3to8.vhd}

