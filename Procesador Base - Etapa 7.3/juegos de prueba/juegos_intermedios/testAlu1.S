movi r0, 5,
movi r1, 0
movi r5, 18
movhi r5, 192
wrs s5, r5
ei
div r2, r0, r1
store 0(r1), r2
halt
rds r7, s2
store 2(r1), r7
reti

