onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_sisa/SoC/proc0/clk
add wave -noupdate -radix hexadecimal -childformat {{/test_sisa/SoC/proc0/d0/reg0/registro(7) -radix hexadecimal} {/test_sisa/SoC/proc0/d0/reg0/registro(6) -radix hexadecimal} {/test_sisa/SoC/proc0/d0/reg0/registro(5) -radix hexadecimal} {/test_sisa/SoC/proc0/d0/reg0/registro(4) -radix hexadecimal} {/test_sisa/SoC/proc0/d0/reg0/registro(3) -radix hexadecimal} {/test_sisa/SoC/proc0/d0/reg0/registro(2) -radix hexadecimal} {/test_sisa/SoC/proc0/d0/reg0/registro(1) -radix hexadecimal} {/test_sisa/SoC/proc0/d0/reg0/registro(0) -radix hexadecimal}} -expand -subitemconfig {/test_sisa/SoC/proc0/d0/reg0/registro(7) {-height 18 -radix hexadecimal} /test_sisa/SoC/proc0/d0/reg0/registro(6) {-height 18 -radix hexadecimal} /test_sisa/SoC/proc0/d0/reg0/registro(5) {-height 18 -radix hexadecimal} /test_sisa/SoC/proc0/d0/reg0/registro(4) {-height 18 -radix hexadecimal} /test_sisa/SoC/proc0/d0/reg0/registro(3) {-height 18 -radix hexadecimal} /test_sisa/SoC/proc0/d0/reg0/registro(2) {-height 18 -radix hexadecimal} /test_sisa/SoC/proc0/d0/reg0/registro(1) {-height 18 -radix hexadecimal} /test_sisa/SoC/proc0/d0/reg0/registro(0) {-height 18 -radix hexadecimal}} /test_sisa/SoC/proc0/d0/reg0/registro
add wave -noupdate -divider Basics
add wave -noupdate -expand -group ALU /test_sisa/SoC/proc0/d0/alu0/z
add wave -noupdate -expand -group ALU -radix hexadecimal /test_sisa/SoC/proc0/d0/alu0/x
add wave -noupdate -expand -group ALU -radix hexadecimal /test_sisa/SoC/proc0/d0/alu0/y
add wave -noupdate -expand -group U_CTRL /test_sisa/SoC/proc0/cu0/ldir_aux
add wave -noupdate -expand -group U_CTRL /test_sisa/SoC/proc0/cu0/Z
add wave -noupdate -expand -group U_CTRL /test_sisa/SoC/proc0/cu0/mux_ldpc
add wave -noupdate -expand -group U_CTRL /test_sisa/SoC/proc0/cu0/addr_a
add wave -noupdate -expand -group U_CTRL /test_sisa/SoC/proc0/cu0/addr_b
add wave -noupdate -expand -group U_CTRL /test_sisa/SoC/proc0/cu0/addr_d
add wave -noupdate -expand -group U_CTRL -radix hexadecimal /test_sisa/SoC/proc0/cu0/new_pc
add wave -noupdate -expand -group U_CTRL -radix hexadecimal /test_sisa/SoC/proc0/cu0/ir_actual
add wave -noupdate -expand -group U_CTRL -radix hexadecimal /test_sisa/SoC/proc0/cu0/inm_pc
add wave -noupdate -expand -group Grafo /test_sisa/SoC/proc0/cu0/ge/ldpc
add wave -noupdate -expand -group REG /test_sisa/SoC/proc0/d0/reg0/addr_a
add wave -noupdate -expand -group REG /test_sisa/SoC/proc0/d0/reg0/addr_b
add wave -noupdate -expand -group REG /test_sisa/SoC/proc0/d0/reg0/addr_d
add wave -noupdate -expand -group REG /test_sisa/SoC/proc0/d0/reg0/a
add wave -noupdate -expand -group REG /test_sisa/SoC/proc0/d0/reg0/b
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7365955 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 289
configure wave -valuecolwidth 49
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
WaveRestoreZoom {6129551 ps} {10203708 ps}
