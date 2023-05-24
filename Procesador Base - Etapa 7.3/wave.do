onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group State /test_sisa/SoC/proc0/cu0/boot
add wave -noupdate -expand -group State /test_sisa/SoC/proc0/cu0/clk
add wave -noupdate -expand -group State -radix hexadecimal /test_sisa/SoC/proc0/cu0/pc
add wave -noupdate -expand -group State -radix hexadecimal /test_sisa/SoC/proc0/cu0/ir_actual
add wave -noupdate -expand -group State /test_sisa/SoC/proc0/cu0/ge/estat
add wave -noupdate -expand -group State /test_sisa/SoC/proc0/cu0/op
add wave -noupdate -expand -group ALu /test_sisa/SoC/proc0/d0/alu0/op
add wave -noupdate -expand -group ALu /test_sisa/SoC/proc0/d0/alu0/x
add wave -noupdate -expand -group ALu /test_sisa/SoC/proc0/d0/alu0/y
add wave -noupdate -expand -group ALu /test_sisa/SoC/proc0/d0/alu0/z
add wave -noupdate /test_sisa/SoC/proc0/cu0/tknbrS
add wave -noupdate /test_sisa/SoC/proc0/cu0/inm_pc
add wave -noupdate /test_sisa/SoC/proc0/d0/alu0/div_zero
add wave -noupdate /test_sisa/SoC/controladosIO/prio_int_controller/intr
add wave -noupdate /test_sisa/SoC/proc0/e0/excep_UP
add wave -noupdate /test_sisa/SoC/proc0/e0/exception_idS
add wave -noupdate /test_sisa/SoC/proc0/e0/exception_id
add wave -noupdate -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro_sistema(2)
add wave -noupdate -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro_sistema(3)
add wave -noupdate -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro_sistema(7)
add wave -noupdate -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro(1)
add wave -noupdate -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro(2)
add wave -noupdate -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro(3)
add wave -noupdate -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro(7)
add wave -noupdate /test_sisa/SoC/controladosIO/registro_io(10)
add wave -noupdate /test_sisa/SoC/controladosIO/registro_io(9)
add wave -noupdate /test_sisa/SoC/proc0/cu0/ge/to_system
add wave -noupdate -group Memory /test_sisa/SoC/memory0/we
add wave -noupdate -group Memory /test_sisa/SoC/memory0/wr_data
add wave -noupdate -group Memory -radix hexadecimal /test_sisa/SoC/memory0/rd_data
add wave -noupdate -group Memory -radix hexadecimal /test_sisa/SoC/memory0/addr
add wave -noupdate -group Datapath /test_sisa/SoC/proc0/d0/wrd
add wave -noupdate -group Datapath /test_sisa/SoC/proc0/d0/addr_d
add wave -noupdate -group Datapath /test_sisa/SoC/proc0/d0/addr_a
add wave -noupdate -group Datapath /test_sisa/SoC/proc0/d0/addr_b
add wave -noupdate -group Datapath /test_sisa/SoC/proc0/d0/addr_d
add wave -noupdate -group Datapath /test_sisa/SoC/proc0/d0/TOd
add wave -noupdate /test_sisa/SoC/proc0/d0/reg0/registro(2)
add wave -noupdate /test_sisa/SoC/proc0/e0/stop_execution
add wave -noupdate /test_sisa/SoC/proc0/cu0/ldpcTOmulti
add wave -noupdate /test_sisa/SoC/proc0/cu0/temp_pc
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/exception_id
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/intr
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/div_zero
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/excep_UP
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/excep_enabled
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/invalid_address
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/isLDorST
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/fetch
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/illegal_inst
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/stop_execution
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/data_memory_acces
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/system_address
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/system_mode
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/system_ins
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/sys_call
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/excep_UP_F
add wave -noupdate -expand -group Exceptions /test_sisa/SoC/proc0/e0/exception_idS
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 6} {20070636 ps} 0}
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
WaveRestoreZoom {19828232 ps} {21140732 ps}
