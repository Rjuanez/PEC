onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group State /test_sisa/SoC/proc0/cu0/boot
add wave -noupdate -expand -group State /test_sisa/SoC/proc0/cu0/clk
add wave -noupdate -expand -group State /test_sisa/SoC/proc0/cu0/pc
add wave -noupdate -expand -group State -radix hexadecimal /test_sisa/SoC/proc0/cu0/ir_actual
add wave -noupdate -expand -group State /test_sisa/SoC/proc0/cu0/ge/estat
add wave -noupdate -expand -group State /test_sisa/SoC/proc0/cu0/op
add wave -noupdate -expand -group TLB_DAT /test_sisa/SoC/proc0/d0/tlb_dat/addr_in
add wave -noupdate -expand -group TLB_DAT /test_sisa/SoC/proc0/d0/tlb_dat/addr_out
add wave -noupdate -expand -group TLB_DAT /test_sisa/SoC/proc0/d0/tlb_dat/entrada
add wave -noupdate -expand -group TLB_DAT /test_sisa/SoC/proc0/d0/tlb_dat/invalid_page
add wave -noupdate -expand -group TLB_DAT /test_sisa/SoC/proc0/d0/tlb_dat/read_only_page
add wave -noupdate -expand -group TLB_DAT -expand /test_sisa/SoC/proc0/d0/tlb_dat/registro_tlb
add wave -noupdate -expand -group ALu /test_sisa/SoC/proc0/d0/alu0/op
add wave -noupdate -expand -group ALu /test_sisa/SoC/proc0/d0/alu0/x
add wave -noupdate -expand -group ALu /test_sisa/SoC/proc0/d0/alu0/y
add wave -noupdate -expand -group ALu /test_sisa/SoC/proc0/d0/alu0/z
add wave -noupdate /test_sisa/SoC/proc0/cu0/tknbrS
add wave -noupdate /test_sisa/SoC/proc0/cu0/inm_pc
add wave -noupdate /test_sisa/SoC/proc0/d0/alu0/div_zero
add wave -noupdate /test_sisa/SoC/controladosIO/prio_int_controller/intr
add wave -noupdate -expand -group Exception /test_sisa/SoC/proc0/e0/excep_UP_F
add wave -noupdate -expand -group Exception /test_sisa/SoC/proc0/e0/excep_UP
add wave -noupdate -expand -group Exception /test_sisa/SoC/proc0/e0/exception_idS
add wave -noupdate -expand -group Exception /test_sisa/SoC/proc0/e0/exception_id
add wave -noupdate -expand -group Exception /test_sisa/SoC/proc0/e0/miss_tlb_D
add wave -noupdate -expand -group Exception /test_sisa/SoC/proc0/e0/invalid_page_D
add wave -noupdate -expand -group Exception /test_sisa/SoC/proc0/e0/read_only_page_D
add wave -noupdate -expand -group Exception /test_sisa/SoC/proc0/e0/data_memory_acces
add wave -noupdate -expand -group Exception /test_sisa/SoC/proc0/e0/write_dir_s3
add wave -noupdate -expand -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro_sistema(2)
add wave -noupdate -expand -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro_sistema(3)
add wave -noupdate -expand -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro_sistema(7)
add wave -noupdate -expand -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro(1)
add wave -noupdate -expand -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro(2)
add wave -noupdate -expand -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro(3)
add wave -noupdate -expand -group Regfile /test_sisa/SoC/proc0/d0/reg0/registro(7)
add wave -noupdate -expand -group Regfile /test_sisa/SoC/proc0/d0/reg0/reg_op
add wave -noupdate /test_sisa/SoC/controladosIO/registro_io(10)
add wave -noupdate /test_sisa/SoC/controladosIO/registro_io(9)
add wave -noupdate /test_sisa/SoC/proc0/cu0/ge/to_system
add wave -noupdate -expand -group Memory /test_sisa/SoC/memory0/we
add wave -noupdate -expand -group Memory /test_sisa/SoC/memory0/wr_data
add wave -noupdate -expand -group Memory -radix hexadecimal /test_sisa/SoC/memory0/rd_data
add wave -noupdate -expand -group Memory -radix hexadecimal /test_sisa/SoC/memory0/addr
add wave -noupdate /test_sisa/SoC/proc0/d0/reg0/write_dir_s3
add wave -noupdate -expand -group Datapath /test_sisa/SoC/proc0/d0/wrd
add wave -noupdate -expand -group Datapath /test_sisa/SoC/proc0/d0/addr_d
add wave -noupdate -expand -group Datapath /test_sisa/SoC/proc0/d0/addr_a
add wave -noupdate -expand -group Datapath /test_sisa/SoC/proc0/d0/aTOx
add wave -noupdate -expand -group Datapath -radix hexadecimal /test_sisa/SoC/proc0/d0/addr_b
add wave -noupdate -expand -group Datapath /test_sisa/SoC/proc0/d0/bTO
add wave -noupdate -expand -group Datapath /test_sisa/SoC/proc0/d0/addr_d
add wave -noupdate -expand -group Datapath /test_sisa/SoC/proc0/d0/TOd
add wave -noupdate /test_sisa/SoC/proc0/d0/reg0/registro(2)
add wave -noupdate /test_sisa/SoC/proc0/e0/stop_execution
add wave -noupdate /test_sisa/SoC/proc0/cu0/ldpcTOmulti
add wave -noupdate /test_sisa/SoC/proc0/cu0/temp_pc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Ins desalineada} {115574 ps} 0} {{Div ins error} {1029444 ps} 0} {{St desalineado} {4559690 ps} 0} {{Cursor 4} {5190201 ps} 0} {AQUII {2946546 ps} 0}
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
WaveRestoreZoom {0 ps} {2625536 ps}
