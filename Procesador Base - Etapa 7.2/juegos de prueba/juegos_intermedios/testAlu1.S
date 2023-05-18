movi r0, 5,
movi r1, 0
movi r5, 18
movhi r5, 192
wrs s5, r5
ei
div r2, r0, r1
load r2, (r1)
halt
getiid r7
load r7, 2(r1)
reti

