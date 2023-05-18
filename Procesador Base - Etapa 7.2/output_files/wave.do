onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_sisa/SoC/CLOCK_50
add wave -noupdate /test_sisa/SoC/proc0/clk
add wave -noupdate /test_sisa/SoC/proc0/cu0/ge/estat
add wave -noupdate /test_sisa/SoC/memory0/sram_controller/estat
add wave -noupdate /test_sisa/SoC/memory0/sram_controller/address
add wave -noupdate /test_sisa/SoC/memory0/sram_controller/dataReaded
add wave -noupdate /test_sisa/SoC/memory0/sram_controller/dataToWrite
add wave -noupdate /test_sisa/SoC/memory0/sram_controller/WR
add wave -noupdate /test_sisa/SoC/proc0/d0/addr_a
add wave -noupdate /test_sisa/SoC/proc0/d0/addr_b
add wave -noupdate /test_sisa/SoC/proc0/d0/addr_d
add wave -noupdate /test_sisa/SoC/proc0/d0/Z
add wave -noupdate /test_sisa/SoC/proc0/d0/pc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 274
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {813 ps}
