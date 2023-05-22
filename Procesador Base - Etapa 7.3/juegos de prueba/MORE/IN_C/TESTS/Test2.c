#include "lib_sisa.h"
#include <stdio.h>
#include <stdlib.h>
int MUL() {
	short v[32] = {1, 9, 49, 225, 961, 3969, 16129, -511, -1023, -2047, -4095, -8191, -16383, -32767, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,};
	unsigned short v2[32] = {1, 9, 49, 225, 961, 3969, 16129, 65025, 64513, 63489, 61441, 57345, 49153, 32769, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
	short v3[32] = {-1, -6, -21, -60, -155, -378, -889, -2040, -4599, -10230, -22517, 16396, 24589, -32754, -32753, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31};
	short error= 0;
	int num = 0;
	int i;
	for (i = 0; i < 32 ; i++) { //MUL signed
		printf("%hX <-> %hX", num*num, v[i]);
		if (num*num != v[i]) {error = i; break;}
		num = (num<<1)+1;
		
	}
	num = 0;
	for (i = 0; i < 32 ; i++) { //MUL unsigned
		if ((unsigned)num*(unsigned)num != v2[i]) {error = i+32; break;}
		num = (num<<1)+1;
		printf("%hX, ", v2[i]);
	}
	num = 0;
	for (i= -1; i > -32; i--){ //MUL negative
		if (num*i != v3[i]) {error = i+64; break;}
		printf("%hX, ", v3[i]);
		num = (num<<1)+1;
	}
	return error;
}	

int DIV() {
	
	short error = 0;
	short i;
	short v[32] = {32767, 16383, 10922, 8191, 6553, 5461, 4681, 4095, 3640, 3276, 2978, 2730, 2520, 2340, 2184, 2047, 1927, 1820, 1724, 1638, 1560, 1489, 1424, 1365, 1310, 1260, 1213, 1170, 1129, 1092, 1057, 1023};
	short inv[32] = {1, -32767, -21845, -16383, -13107, -10922, -9362, -8191, -7281, -6553, -5957, -5461, -5041, -4681, -4369, -4095, -3855, -3640, -3449, -3276, -3120, -2978, -2849, -2730, -2621, -2520, -2427, -2340, -2259, -2184, -2114};
	short uns[32] = {65535, 32767, 21845, 16383, 13107, 10922, 9362, 8191, 7281, 6553, 5957, 5461, 5041, 4681, 4369, 4095, 3855, 3640, 3449, 3276, 3120, 2978, 2849, 2730, 2621, 2520, 2427, 2340, 2259, 2184, 2114};
	for (i= 1; i <= 32; i++){ //signed positive
		if (0x7FFF/i != v[i]) {error = i; break;}
	}
	for (i= -1; i > -32; i--){ //negative
		if (0xFFFF/i != inv[i]) {error = i; break;}
	}
	for(i = 1; i < 32; i++) if (0xFFFF/(unsigned)i != uns[i]) {error = i; break;}

	
	return error;
	
}

int main() {
	char str[8];
	printf("JJJ: %d \n",DIV());
	printf("KKK: %d \n",MUL());
	/*itoa(MUL(), str,10);
	write(0, 0, str, 8, 0);
	itoa(DIV(), str,10);
	write(1, 0, str, 8, 0);*/
	return 0;
}
