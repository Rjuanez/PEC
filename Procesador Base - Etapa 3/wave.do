onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Basics
add wave -noupdate /test_sisa/proc0/clk
add wave -noupdate /test_sisa/proc0/boot
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9776 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 192
configure wave -valuecolwidth 63
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
WaveRestoreZoom {0 ps} {241948 ps}
