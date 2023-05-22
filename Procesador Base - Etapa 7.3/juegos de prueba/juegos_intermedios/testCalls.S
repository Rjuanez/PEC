movi r0, 0	; registro con direccion de memoria donde escribimos
movi r1, 171	; valor para que salga AB por el display
movi r5, 18	; direccion LOW de la funcion de RSG 
movhi r5, 192	; direccion HIGH de la funcion de RSG
movi r4, 255	; no se usa para nada
wrs s5, r5
ei
calls r1	; llamamos la call con el valor de los visores
halt
rds r7, s2	; leemos que excepcion es
addi r0, r0, 2
st 0(r0), r7	; guardamos en memoria el valor
rds r2, s3	; cargamos en r2 el valor que deberia haber guardado la call
movi r1, 14
cmpeq r3, r1, r7	;si la excepcion es una sys_call
bnz r3, _sys_call	;saltamos a la rutina de servicio
_vuelta:
reti


_sys_call:
out 10, r2
movi r2, 15
out 9, r2
bnz r1, _vuelta

