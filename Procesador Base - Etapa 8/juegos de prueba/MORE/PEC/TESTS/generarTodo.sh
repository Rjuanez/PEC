#!/bin/bash

if [ $# -lt 1 ] ; then
	echo "USAGE: $0 <filename>"
	return 1 2>/dev/null
fi

program1=$1
if [ $1 == "Test1" ]; then
	echo "Picked $1 with system.lds"
	sys="system.lds"
else 
	echo "Picked $1 with system2.lds"
	sys="system2.lds"
fi	

echo "Ensamblando ..."
#compila el ensamblador
sisa-as entrada.s -o entrada.o

echo "Compilando ..."
#compila el c (solo compila)  (para ver el codigo fuente entre el codigo desensamblado hay que compilar con la opcion -O0)
sisa-gcc -gstabs -c -Wall -Wextra lib_sisa.c -o lib_sisa.o
sisa-gcc -gstabs -c -Wall -Wextra -static "${program1}.c" -o "${program1}.o"

echo "Linkando ..."
#Linkamos los ficheros (la opcion -s es para que genere menos comentarios)
sisa-ld -s -T "${sys}" entrada.o lib_sisa.o "${program1}.o" -o "temp_${program1}.o"

#desensamblamos el codigo
sisa-objdump -d -z --section=.sistema "temp_${program1}.o" >"${program1}.code"
sisa-objdump -s -z --section=.sysdata "temp_${program1}.o" >"${program1}.data"

./limpiar.pl codigo "${program1}.code"
./limpiar.pl datos "${program1}.data"

#Linkamos los ficheros (sin la opcion -s es para que genere mas comentarios) y desensamblamos
#(para ver el codigo fuente entre el codigo desensamblado hay que haber compilado con la opcion -O0)
sisa-ld -T system.lds entrada.o lib_sisa.o "${program1}.o" -o "temp_${program1}.o"

sisa-objdump -S -x -w --section=.sistema "temp_${program1}.o" >"${program1}.dis"
sisa-objdump -S -x -w --section=.sysdata "temp_${program1}.o" >>"${program1}.dis"

rm entrada.o lib_sisa.o "temp_${program1}.o" "${program1}.o" "${program1}.code" "${program1}.data"
