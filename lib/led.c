#include <led.h>
#include <xc888_lib.h>
#include <xc888.h>

void clear_led(void){
	p4_data = 0x0;
}

void red(void){
	__asm
	push b
	mov b,_p4_data
	setb b.2
	mov _p4_data,b
	pop b
	ret
	__endasm;
}

void green(void){
	__asm
	push b
	mov b,_p4_data
	setb b.1
	mov _p4_data,b
	pop b
	ret
	__endasm;
}

void blue(void){
	__asm
	push b
	mov b,_p4_data
	setb b.0
	mov _p4_data,b
	pop b
	ret
	__endasm;
}

void clear_red(void){
	__asm
	push b
	mov b,_p4_data
	clr b.2
	mov _p4_data,b
	pop b
	ret
	__endasm;
}

void clear_green(void){
	__asm
	push b
	mov b,_p4_data
	clr b.1
	mov _p4_data,b
	pop b
	ret
	__endasm;
}

void clear_blue(void){
	__asm
	push b
	mov b,_p4_data
	clr b.0
	mov _p4_data,b
	pop b
	ret
	__endasm;
}

void setcolor(uint8_t r, uint8_t g, uint8_t b){
	if(r > 0){
		for(int i = 0; i < 255; i++){
			if(i > r){
				red();
			}
			else{
				clear_red();
			}
		}
	}
	if(g > 0){
		for(int i = 0; i < 255; i++){
			if(i > g){
				green();
			}
			else{
				clear_green();
			}
		}
	}
	if(b > 0){
		for(int i = 0; i < 255; i++){
			if(i > b){
				blue();
			}
			else{
				clear_blue();
			}
		}
	}
}
