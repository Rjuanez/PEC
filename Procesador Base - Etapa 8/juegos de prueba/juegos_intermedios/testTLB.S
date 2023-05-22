movi r0, 0	; registro con direccion de memoria donde escribimos
movi r1, 240
st 0(r0), r1
movi r0, 0
movhi r0, 128	; 8000
st 2(r0), r1
movi r0, 0
movhi r0, 144	; 9000
movi r2, 3
movi r3, 9
wrvd r2, r3
movi r3, 41
wrpd r2, r3
st 2(r0), r1
halt

