#include <xc888_lib.h>

uint8_t hex2bcd(uint8_t x){
	uint8_t y;
    y = (x / 10) << 4;
    y = y | (x % 10);
    return (y);
}

uint8_t get_random_between(uint8_t low,uint8_t high){
	return rand() % high-1 + low;
}

uint8_t hexbcd8(uint8_t byte){
	__asm
	push psw
	push b
	mov b,#0x0a
	mov a,dpl
	div ab
	swap a
	add a,b
	mov dpl, a
	pop b
	pop psw
	ret
	__endasm;
	return;
}

void delay10us (void){

__asm
	push   acc                  //;8*42ns=330ns
	push   psw                  //;8*42ns=330ns
	mov    acc,#0x1a            //;420ns
0002$:	
	djnz   acc,0002$                //;420ns*aantal keer doorlopen
	pop    psw                  //;8*42ns=330ns
	pop    acc                  //;8*42ns=330ns
__endasm;
	
}

void delay1ms (void){
	uint8_t i;
	for(i=0; i < 100; i++){
		delay10us();
	}	
}	

void delay (uint16_t ms){

	uint16_t i=0;
	
	for(i=0;i < ms;i++){
		delay1ms();
	}
}
	
#define sda		p3_data_2
#define scl     p3_data_3

#define sdaout  0b00000100
#define sdain   0b11111011

void initiic (void)
{
	__asm
	push _syscon0
	mov _syscon0,#0x04
	push _port_page
	mov _port_page,#0x00
	setb _sda
	setb _scl
	mov _port_page,#0x03
	setb _scl
	setb _sda
	mov _port_page,#0x00
	orl _p3_dir,#0b00001000
	anl _p3_dir,#0b01111011
	pop _port_page
	pop _syscon0
	ret
	__endasm;
}

void iicstart (void){
	__asm
	push _syscon0
	mov _syscon0, #0x04
	push _port_page
	mov _port_page,#0x00
	setb _scl
	setb _sda
	orl _p3_dir,#0b00000100
	lcall _delay10us
	clr _sda
	lcall _delay10us
	clr _scl
	lcall _delay10us
	pop _port_page
	pop _syscon0
	ret
	__endasm;
}

void iicstop (void){
	__asm
	push _syscon0
	mov _syscon0, #0x04
	push _port_page
	mov _port_page,#0x00
	orl _p3_dir, #0b00000100
	clr _sda
	lcall _delay10us
	setb _scl
	lcall _delay10us
	setb _sda
	lcall _delay10us
	anl _p3_dir,#0b11111011
	pop _port_page
	pop _syscon0
	ret
	__endasm;
}

uint8_t iicoutbyte (uint8_t databyte){
	__asm
	push acc
	push b
	push _syscon0
	mov _syscon0, #0x04
	push _port_page
	mov _port_page, #0x00
	mov a, dpl
	mov b, #0x08
	orl _p3_dir,#0b00000100
00501$:
	rlc a
	mov _sda,c
	lcall _delay10us
	setb _scl
	lcall _delay10us
	clr _scl
	djnz b,00501$
	anl _p3_dir,#0b11111011
	lcall _delay10us
	setb _scl
	mov c,_sda
	lcall _delay10us
	clr _scl
	mov dpl,c
	mov a,dpl
	pop _port_page
	pop _syscon0
	pop b
	pop acc
	ret
	__endasm;
	return 0;
}
 
uint8_t iicinbyte (uint8_t ack){
	uint8_t i=0;
	uint8_t databyte = 0;
	uint8_t tmpStack[2];
	tmpStack[0] = syscon0;
	tmpStack[1] = port_page;
	
	syscon0 = 0x04;
    port_page = 0x00;
	p3_dir &= sdain;
	
	for(i=0; i < 8; i++){
		delay10us();
		scl = 1;	//klok hoog
		databyte = databyte << 1;
              	databyte |= sda;//pin inlezen
		delay10us();
		scl = 0;	//klok terug laag
	}
        p3_dir |= sdaout;	//pin als output schakelen
        sda = ack;              //ack of nack genereren
        delay10us();
        scl = 1;
        delay10us();
        scl = 0;
        p3_dir &= sdain;	//pin terug als input schakelen
        syscon0 = tmpStack[0];
	port_page = tmpStack[1];
	return databyte;	//ack of niet terug geven
}

void initleds (void){
	uint8_t tmpStack[2];
	tmpStack[0] = syscon0;
	tmpStack[1] = port_page;
	
	syscon0 = 0x04;  //juiste map selecteren	
        port_page = 0x00; //selecteer poort page 0
        p4_dir = 0xff;    //poort 3 als output schakelen

 	syscon0 = tmpStack[0];
	port_page = tmpStack[1];
	p4_data = 0x0;
}

void init_buttons(void){
	__asm
	push _syscon0
	mov _syscon0, #0x04
	push _port_page
	mov _port_page, #0x01
	orl _p2_pudsel, #0x3f
	orl _p2_puden, #0x3f
	mov _port_page, #0x00
	anl _p2_dir, #0x3f
	pop _port_page
	pop _syscon0
	ret
	__endasm;
}
