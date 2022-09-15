#include <lcd.h>
#include <xc888_lib.h>
#include <xc888.h>


//status 0 = happy; status 1 = neutral; status 2 = sad, 3 = love, 4 = sleeping
void draw_tamagotchi(Tamagotchi *tama){
	setx(tama->pos->x);
	sety(tama->pos->y);
	if(get_emotion(tama) == 0 || get_emotion(tama) == 5){
		for(int i = 0; i < 504; i++){
			nokiaoutbyted(tama->bytes[i]);
		}
	}else if(tama->emotion == 1){
		if(tama->version == 1)
			draw_with_differences(tama->bytes, alien1_neutral, 16, 504);
		else if(tama->version == 2){
			draw_with_differences(tama->bytes, alien2_neutral, 12, 504);
		}
	}else if(tama->emotion == 2){
		if(tama->version == 1){
			draw_with_differences(tama->bytes, alien_sad, 12, 504);
		}else if(tama->version == 2){
			draw_with_differences(tama->bytes, alien2_sad, 28, 504);
		}
	}else if(tama->emotion == 3){
		draw_with_differences(tama->bytes, alien1_love, 22, 504);
		
	}else if(tama->emotion == 4){
		if(tama->version == 1){
			draw_with_differences(tama->bytes, alien1_sleeping, 49, 504);
		}else if(tama->version == 2){
			draw_with_differences(tama->bytes, alien2_sleeping, 38, 504);
		}
	}
	
}

void draw_with_differences(const uint8_t array[], Pair p[], uint8_t size_diffs, int size_arr){
	for(int i = 0; i < size_arr; i++){
		uint8_t curr_byte = array[i];
		for(int j = 0; j < size_diffs; j++){
			if(i==p[j].idx){
				curr_byte = p[j].new_byte;
			}
		}
		nokiaoutbyted(curr_byte);
	}
}

void write_string(char str[], uint8_t x, uint8_t y){
	setx(x);
	sety(y);
	for(int i = 0; i < strlen(str); i++)
	{
		nokiaoutchar((char)str[i]);
	}
}

void initdisp(void){
	__asm
	mov	_p5_dir,#0xf8
	mov _port_page,#0x0
	push b
	push acc
	push 0x07
	push psw
	mov b,#0x00
	setb b.3 ;setb cs
	mov _p5_data,b
	nop
	nop
	nop
	setb b.4; setb reset
	mov _p5_data,b
	__endasm;
	nokiaoutbytec(0x21);
	nokiaoutbytec(0x04);
	nokiaoutbytec(0x14);
	nokiaoutbytec(0xc0);
	nokiaoutbytec(0x20);
	nokiaoutbytec(0x0c);
	nokiaoutchar(0xff);
	__asm
	pop psw
	pop 0x07
	pop acc
	pop b
	ret
	__endasm;
}

void nokiaoutbytec(uint8_t x){
	__asm
	push acc
	push b
	push psw
	push 0x07
	mov a,dpl
	mov b,#0x00
	clr b.3; clr cs
	setb b.4; setb rst
	clr b.5; clr dc
	clr b.7; clr sclk
	mov _p5_data, b
	mov r7,#0x08 ; 0x8
00125$:
	rlc a
	mov b.6, c; sdin <- c
	mov _p5_data, b
	setb b.7; setb sclk
	mov _p5_data, b
	clr b.7
	mov _p5_data, b
	djnz r7,00125$
	setb b.3
	mov _p5_data, b
	pop 0x07
	pop psw
	pop b
	pop acc
	ret
	__endasm;
}

void nokiaoutbyted(uint8_t x){
	__asm
	push acc
	push b
	push psw
	push 0x07
	mov a,dpl
	mov b,#0x00
	clr b.3
	setb b.4
	setb b.5
	clr b.7
	mov _p5_data, b
	mov r7,#0x08
00126$:
	rlc a
	mov b.6, c
	mov _p5_data, b
	setb b.7
	mov _p5_data, b
	clr b.7
	mov _p5_data, b
	djnz r7,00126$
	setb b.3
	mov _p5_data, b
	pop 0x07
	pop psw
	pop b
	pop acc
	ret
	__endasm;
}

// x >= 0 && x <= 83
void setx(uint8_t x){
	__asm
	push dpl
	mov b,dpl
	setb b.7
	mov dpl,b
	lcall _nokiaoutbytec
	pop dpl
	ret
	__endasm;
}

// y >= 0 && y <= 5
void sety(uint8_t y){
	__asm
	push dpl
	mov b,dpl
	setb b.6
	mov dpl,b
	lcall _nokiaoutbytec
	pop dpl
	ret
	__endasm;
}

void nokiaoutchar(uint8_t c){
	__asm
	mov r5, dpl
	push dph
	push dpl
	push b
	push 0x07
	push psw
	push acc
	cjne r5,#0xff,00202$
	mov r7,#0x00
	__endasm;
	
	setx(0);
	sety(0);
	
	__asm
00200$:
	__endasm;

	nokiaoutbyted(0x00);
	
	__asm
	djnz r7, 00200$
	mov r7, #0xf8
00201$:
	__endasm;
	nokiaoutbyted(0x00);
	
	__asm
	djnz r7, 00201$
	__endasm;
	
	setx(0);
	sety(0);
	
	__asm
	ljmp 00204$
00202$:
	mov dptr, #_ascii
	mov b,#0x06
	mov a,r5
	clr c
	subb a,#0x20
	mul ab
	add a,dpl
	mov dpl, a
	mov a,b
	addc a,dph
	mov dph,a
	mov r7,#6
00203$:
	clr a
	movc a,@a+dptr
	mov r2,dpl
	mov r3,dph
	mov dpl,a
	lcall _nokiaoutbyted
	mov dpl, r2
	mov dph, r3
	inc dptr
	djnz r7,00203$
00204$:
	pop acc
	pop psw
	pop 0x07
	pop b
	pop dpl
	pop dph
	ret
	__endasm;
}

void nokiaoutnib(uint8_t nib){
	__asm
	push psw
	push acc
	mov a,dpl
	anl a,#0x0f
	mov dpl,a
	lcall _batrans
	lcall _nokiaoutchar
	pop acc
	pop psw
	ret
	__endasm;
}

void nokiaoutbyte(uint8_t byte){
	__asm
	push psw
	push acc
	mov a,dpl
	mov b,dpl
	swap a
	mov dpl,a
	lcall _nokiaoutnib
	mov dpl,b
	lcall _nokiaoutnib
	pop acc
	pop psw
	ret
	__endasm;
}

uint8_t batrans(uint8_t hex){
	__asm
	push acc
	push psw
	mov a,dpl
	cjne a,#0x0a,00301$
00301$:
	jc 00302$
	add a,#0x07
00302$:
	add a,#0x30
	mov dpl,a
	pop psw
	pop acc
	ret
	__endasm;
}

/*void xram(){
	__asm
	push dph
	push dpl
	push acc
	push psw
	push b
	push 0x07
	mov dpl,#0x00
	lcall _setx
	lcall _sety
	mov b,#0x02
00401$:
	mov r3,#0xfc
00402$:

	movx a,@dptr
	mov r4,dpl
	mov r6,dph
	mov dpl,a
	lcall _nokiaoutbyted
	mov dph, r6
	mov dpl, r4
	inc dptr
	djnz r3,00402$
	djnz b,00401$
	pop 0x07
	pop b
	pop psw
	pop acc
	pop dpl
	pop dph
	ret
	__endasm;
}*/

void nokiaoutmsga(unsigned char c[]){
	__asm
	push b
	push psw
	push acc
	//mov r6, dpl
	push dph
	push dpl
	//mov dptr, r6
00401$:
	clr a
	movc a,@a+dptr
	cjne a,#0x0,00402$
	pop dpl
	pop dph
	pop acc
	pop psw
	pop b
	ret
00402$:
	mov r6,dpl
	mov r7, dph
	mov dpl,a
	lcall _nokiaoutchar
	mov dph,r7
	mov dpl,r6
	inc dptr
	ljmp 00401$
	__endasm;
}

void clear_screen(void){
	__asm
	mov dpl,#0xff
	lcall _nokiaoutchar
	__endasm;
}

void draw(const uint8_t array[],uint8_t x,uint8_t y,uint8_t size){
	setx(x);
	sety(y);
	for(int i = 0; i < size; i++){
		nokiaoutbyted(array[i]);
	}
}