.org 0xc000
movi r0, 0
movhi r0, 0xd0
wrs s5, r0
movi r0, 00
movhi r0, 0x90
ei
jmp r0
halt


.org 0xd000
rds r2, s2
out 10, r2
movi r2, 0x01
out 9, r2
reti
