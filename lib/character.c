#include <character.h>
#include <lcd.h>

void init_tamagotchi(Tamagotchi *tama){
	tama->version = get_random_between(1,3);
	if(tama->version==2){
		tama->bytes = alien2;
	}
	else{
		tama->bytes = alien1;
		tama->version = 1;
	}
	Position p = {0,0};
	tama->pos = &p;
	set_emotion(tama,1);
	tama->last_interaction = get_hour();
}

void move(Tamagotchi *tama){
	static uint8_t moved = 0;
	if(moved == 0){
		inc_x_by_3(tama->pos);
		moved = 1;
	}
	else{
		dec_x_by_3(tama->pos);
		moved = 0;
	}
}

void set_emotion(Tamagotchi *tama, uint8_t emotion){
	tama->emotion = emotion;
	clear_led();
	if (emotion == 0)
		green();
	else if(emotion == 2)
		red();
	else if(emotion == 1)
		blue();
	else if(emotion == 3){
		red();
		green();
	}else if(emotion == 4){
		clear_led();
	}
}

uint8_t get_emotion(Tamagotchi *tama){
	return tama->emotion;
}

void food_animation(Tamagotchi *tama){
	uint8_t cur_emotion = tama->emotion;
	set_emotion(tama, 0);
	draw_tamagotchi(tama);
	draw(falling_candy,74,0,8);
	delay(500);
	clear_screen();
	draw_tamagotchi(tama);
	draw(falling_candy,74,1,8);
	delay(500);
	clear_screen();
	set_emotion(tama, 3);
	draw_tamagotchi(tama);
	delay(500);
	set_emotion(tama, cur_emotion);
	clear_screen();
}

void wash_animation(void){
	clear_screen();
	for(int i = 0; i < 8; i++){
		draw(drop,i*10,0,5);
	}
	delay(500);
	for(int i = 7; i >= 0; i--){
		for(int j = 0; j < 5; j++){
			clear_drop(i,j);
			draw(drop,i*10,j+1,5);
			delay(50);
		}
	}
	clear_screen();
}

void clear_drop(uint8_t idx,uint8_t row){
	sety(row);
	setx(idx*10);
	for(int i = 0; i < 5; i++)
		nokiaoutbyted(0x00);
}

void happier(Tamagotchi *tama){
	if(tama->emotion > 0)
		set_emotion(tama,tama->emotion-1);
}

void sadder(Tamagotchi *tama){
	if(tama->emotion < 2)
		set_emotion(tama,tama->emotion+1);
}