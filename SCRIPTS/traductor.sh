#!/bin/bash
sisa-as $1.S -o $1.o
sisa-objdump -d $1.o | awk -F"\t" '{print $2}' | tail -n+7 > $1.hex
rm *.o
