#ifndef POSITION_H
#define POSITION_H
#include <stdint.h>

typedef struct Position{
	uint8_t x;
	uint8_t y;
} Position;

void setx(uint8_t);
void sety(uint8_t);
//void set_position(uint8_t, uint8_t);
void set_position(Position*, uint8_t, uint8_t);
void set_position_on_screen(Position*);
//void inc_x_by_3(Position*);
//void dec_x_by_3(Position*);
void inc_x_by_3(Position*);
void dec_x_by_3(Position*);
#endif