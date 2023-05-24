; en la direccion: 0x1000 empieza el vector donde se suma uno cada vez que salta una excepcion
; 1: 3  4: 2    11: 3   13:2    14: 4   15 > 1

.org 0x3000
movi r5, 0          ;movemos 0 a r1
movi r0, 0xFE       ;cargamos el valor que pondremos en el display
div r6, r0, r5      ;divison por 0, deberia sacar excepcion
movi r5, 1
div r6, r0, r5
calls r5
movi r5, 0
div r6, r0, r5
wrs s1, r5
getiid r6
calls r5
movi r6, 0
movhi r6, 0xe0
st 0(r6), r6
movhi r6, 0xe3
st 0(r6), r6
st 0(r6), r6
movi r6,  01
st 0(r6), r6
st 2(r6), r6
movi r6, 5
st 0(r6), r6
calls r5
calls r5
_loop:movi r5, 0
bz r5, _loop
;aqui se hace saltar una excepcion de instruccion no valida hay qu epone run valor manual
;out 10, r0
;movi r0, 15
;out 9, r0
halt



.org 0xc000
movi r1, 0
movhi r1, 0x10      ;guardamos en r1 la direccion del vector
movi r0, 0
movhi r0, 0x30      ;movemos 0x3000 
wrs s1, r0          ;ponemos que cuando hagamos reti vaya a la 0x3000 
movi r0, 0b00000010  ;activamos modo usuario y las interrupciones
wrs s0, r0
movi r0, 00
movhi r0, 0xd0
wrs s5, r0
reti                ;reti



.org 0xd000
rds r2, s2          ;cargamos en r2, el valor de la excepcion
;movi r2, 0xFE
out 10, r2          ;sacamos por los displays el codigo de la excepcion
movi r4, 15         ;encendemos todos los displays
out 9, r4           
movi r4, 1
shl r2, r2, r4
add r2, r2, r1
ld r3, 0(r2)
addi r3, r3, 1
st 0(r2), r3
reti


