
#include "lib_sisa.h"

int ADD_SUB_ADDI() {
	short error = 0;
	if ( (short)(0x7FFF+1) != (short)0x8000) error = 1;
	if ( (short)(0xFFFF+1) != (short)0) error = 2;
	if ( (short)(0x7FFF-1) != (short)0x7FFE) error = 3;
	if ( (short)(0xFFFF-1) != (short)0xFFFE) error = 4;
	short a = 1, b = 2, c = -3;
	if ( (short)(a+b) != (short)0x3) error = 5;
	if ( (short)(a+c) != (short)0xFFFE) error = 6;
	if ( (short)(a-c) != (short)0x4) error = 7;
	if ( (short)(c-a) != (short)0xFFFC) error = 8;
	if ( (short)(b-a) != (short)0x1) error = 9;
	if ( (short)(a-b) != (short)0xFFFF) error = 10;
	return error;
}

int LOGICAL() {
	short error = 0;
	short a = 0, b = 1, c = 2, d = -1;
	if ( (short)(d&a) != (short)0x0) error = 1;
	if ( (short)(a&a) != (short)0x0) error = 2;
	if ( (short)(d&d) != (short)0xFFFF) error = 3;
	if ( (short)(b&b) != (short)0x1) error = 4;
	
	if ( (short)(~d) != (short)0x0) error = 5;
	if ( (short)(~a) != (short)0xFFFF) error = 6;
	if ( (short)(~b) != (short)0xFFFE) error = 7;
	if ( (short)(~c) != (short)0xFFFD) error = 8;
	
	if ( (short)(a|a) != (short)0x0) error = 9;
	if ( (short)(d|d) != (short)0xFFFF) error = 10;
	if ( (short)(b|c) != (short)0x3) error = 11;
	if ( (short)(b|a) != (short)0x1) error = 12;
	if ( (short)(c|a) != (short)0x2) error = 13;

	if ( (short)(a^a) != (short)0x0) error = 14;
	if ( (short)(d^d) != (short)0x0) error = 15;
	if ( (short)(b^c) != (short)0x3) error = 16;
	if ( (short)(d^a) != (short)0xFFFF) error = 17;
	return error;
}

int SHIFTS() {
	short error = 0;
	short a = 0, b = 1, c = 2, d = -1, e = -2;
	if ( (short)(a<<c) != (short)0x0) error = 1;
	if ( (short)(d<<c) != (short)0xfffc) error = 2;
	if ( (short)(d<<c) != (short)0xfffc) error = 3;
	if ( (short)(a<<e) != (short)0x0) error = 4;
	if ( (short)(d<<c) != (short)0xfffc) error = 5;
	if ( (short)(d>>2) != (short)0xffff) error = 6;
	if ( (short)(b<<c) != (short)0x4) error = 7;
	if ( (short)(b<<e) != (short)0x0) error = 8;
	if ( (short)(d<<c) != (short)0xfffc) error = 9;
	if ( (unsigned short)(0xFFFF>>0x2) != (unsigned short)0x3fff) error = 10;
	if ( (unsigned short)(d<<b) != (unsigned short)0xfffe) error = 11;
	return error;
}

int CMP() {
	short error = 0;
	short r0 = 0, r1 = 1, r2 = 2, r3 = -1, r5 = -1;

	if (!(r0 < r1)) error = 1;
	if ((r0 < r3)) error = 2;
	if (!(r1 < r2)) error = 3;
	if ((r2 < r1)) error = 4;
	if ((r1 < r1)) error = 5;
	
	if (!(r0 <= r0)) error = 6;
	if (!(r3 <= r3)) error = 7;
	if (!(r3 <= r1)) error = 8;
	if ((r1 <= r3)) error = 9;
	if (!(r1 <= r2)) error = 10;
	if ((r2 <= r1)) error = 11;
	
	if ((r2 == r3)) error = 12;
	if (!(r3 == r3)) error = 13;
	if (!(r1 == r1)) error = 14;
	if (!(r3 == r5)) error = 15;
	if ((r3 == r2)) error = 16;
	
	return error;
}
int main() {
	char str[8];
	itoa(ADD_SUB_ADDI(), str,10);
	write(0, 0, str, 8, 0);
	
	itoa(LOGICAL(), str,10);
	write(1, 0, str, 8, 0);
	
	itoa(SHIFTS(), str,10);
	write(2, 0, str, 8, 0);
	
	itoa(CMP(), str,10);
	write(3, 0, str, 8, 0);
	return 0;
}
