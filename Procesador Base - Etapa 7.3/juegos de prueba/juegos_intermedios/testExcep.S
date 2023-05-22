movi r0, 5,
movi r1, 0
movi r5, 28
movhi r5, 192
movi r4, 255
wrs s5, r5
ei
div r2, r0, r1
movi r3, 1
st 0(r3), r4
movi r5, 37
movhi r5, 192
jmp r5
halt
rds r7, s2
addi r1, r1, 2
st 0(r1), r7
reti
a: st 2(r1), r4
