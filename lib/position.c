#include <position.h>

/*void set_position(uint8_t x, uint8_t y){
	if(x >= 0 && x <= 84)
		setx(x);
	if(y >= 0 && y <= 5)
		sety(y);
}*/

void set_position(Position *pos, uint8_t x, uint8_t y){
	if(x >= 0 && x <= 84)
		pos->x = x;
	if(y >= 0 && y <= 5)
		pos->y = y;
}

void set_position_on_screen(Position *pos){
	setx(pos->x);
	sety(pos->y);
}

void inc_x_by_3(Position *p){
	uint8_t x = p->x + 3;
	set_position(p,x,p->y);
}

void dec_x_by_3(Position *p){
	uint8_t x = p->x - 3;
	set_position(p,x,p->y);
}