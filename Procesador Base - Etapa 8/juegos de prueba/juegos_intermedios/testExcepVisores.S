movi r7, 0	; registro con direccion de memoria donde escribimos
movi r1, 22	; direccion LOW de la funcion de RSG 
movhi r1, 192	; direccion HIGH de la funcion de RSG
wrs s5, r1
movi r1, 0
wrs s7, r1
ei
calls r1	; llamamos la call con el valor de los visores
halt
rds r1, s2	; leemos que excepcion es
addi r0, r0, 2
st 0(r0), r1	; guardamos en memoria el valor
out 10, r1	; ponemos en los visores el num de excepcion
movi r1, 15
out 9, r1
reti


