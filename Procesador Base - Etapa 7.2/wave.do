onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_sisa/SoC/proc0/cu0/boot
add wave -noupdate /test_sisa/SoC/proc0/cu0/clk
add wave -noupdate -radix hexadecimal /test_sisa/SoC/proc0/cu0/ir_actual
add wave -noupdate /test_sisa/SoC/proc0/cu0/op
add wave -noupdate /test_sisa/SoC/proc0/d0/alu0/op
add wave -noupdate /test_sisa/SoC/proc0/d0/alu0/x
add wave -noupdate /test_sisa/SoC/proc0/d0/alu0/y
add wave -noupdate /test_sisa/SoC/proc0/d0/alu0/div_zero
add wave -noupdate /test_sisa/SoC/controladosIO/prio_int_controller/intr
add wave -noupdate /test_sisa/SoC/proc0/e0/excep_UP
add wave -noupdate /test_sisa/SoC/proc0/e0/exception_id
add wave -noupdate /test_sisa/SoC/proc0/d0/reg0/registro_sistema(2)
add wave -noupdate /test_sisa/SoC/proc0/cu0/to_systemTO
add wave -noupdate /test_sisa/SoC/proc0/cu0/ge/to_system
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {906271 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 315
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {3360 ns}
