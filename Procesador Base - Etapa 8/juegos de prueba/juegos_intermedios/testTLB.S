movi r0, 0	; registro con direccion de memoria donde escribimos
movi r1, 240
st 0(r0), r1
movi r0, 0
movhi r0, 128	; 8000
st 2(r0), r1
movi r0, 0
movhi r0, 144	; 9000
st 2(r0), r1
halt

