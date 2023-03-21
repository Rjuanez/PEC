transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/unidad_control.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/regfile.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/proc.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/multi.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/datapath.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/control_l.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/alu.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/MemoryController.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/sisa.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/ficheros/SRAMController.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/driverSegmentos.vhd}
vcom -93 -work work {C:/Users/pec01/Desktop/PEC/Procesador Base - Etapa 2.2/driver7Segmentos.vhd}

