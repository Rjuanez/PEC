transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/regfile.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/proc.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/multi.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/datapath.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/MemoryController.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/sisa.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/SRAMController.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/driverSegmentos.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/driver7Segmentos.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/func_ayuda_control_pkg.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/const_alu.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/unidad_control.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/control_l.vhd}
vcom -93 -work work {C:/Users/victo/Desktop/PEC-FIB/Procesador Base - Etapa 4/ficheros/alu.vhd}

