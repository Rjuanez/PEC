movi r0, 5,
movi r1, 0
movi r5, 18
movhi r5, 192
movi r4, 255
wrs s5, r5
ei
div r2, r0, r1
halt
rds r7, s2
movi r2, 255
movhi r2,255
out 10, r2
movi r2, 15
out 9, r2
addi r1, r1, 2
st 0(r1), r7
reti

