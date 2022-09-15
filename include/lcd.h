#ifndef LCD_H
#define LCD_H
#include <stdint.h>
#include <string.h>
#include <position.h>
#include <chars.h>
#include <character.h>


void draw_tamagotchi(Tamagotchi*);
void draw_with_differences(const uint8_t[], Pair[], uint8_t,int);
void write_string(char[], uint8_t x, uint8_t y);
void initdisp(void);
void nokiaoutbytec(uint8_t);
void nokiaoutbyted(uint8_t);
void setx(uint8_t);
void sety(uint8_t);
void nokiaoutchar(uint8_t);
void nokiaoutnib(uint8_t);
void nokiaoutbyte(uint8_t);
uint8_t batrans(uint8_t);
void nokiaoutmsga(unsigned char[]);
void clear_screen(void);
void draw(const uint8_t[],uint8_t,uint8_t,uint8_t);
#endif