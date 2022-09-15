#include <games.h>

//Returns 0 when lost, 1 when won
uint8_t move_game(Tamagotchi *tama){
	int x;
	uint8_t win;
	uint8_t tamagotchi_score = 0;
	uint8_t player_score = 0;
	uint8_t usr_choice = 0;
	uint8_t prev_emotion = tama->emotion;
	clear_screen();
	draw_tamagotchi(tama);
	while(tamagotchi_score < 3 && player_score < 3){
		x = rand() % 7 + 3;
		set_emotion(tama,1);
		draw_tamagotchi(tama);
		while(usr_choice==0){
			if(check_button_pressed(LEFT)){
				usr_choice = 1;
			}
			if(check_button_pressed(RIGHT)){
				usr_choice = 2;
			}
		}
		for(int i = 0; i < x; i++){
			move(tama);
			draw_tamagotchi(tama);
			if(usr_choice == 1)
				draw(arrow_left,3,0,11);
			if(usr_choice == 2)
				draw(arrow_right,72,0,11);
			delay(250);
		}
		if((tama->pos->x == 3 && usr_choice == 2) || (tama->pos->x == 0 && usr_choice == 1)){
			set_emotion(tama, 0);
			draw_tamagotchi(tama);
			delay(1000);
			player_score += 1;
		}else{
			set_emotion(tama, 2);
			draw_tamagotchi(tama);
			delay(1000);
			tamagotchi_score += 1;
		}
		usr_choice = 0;
	}
	clear_screen();
	setx(20);
	sety(3);
	if(tamagotchi_score == 3){
		nokiaoutmsga("You lost");
		win = 0;
	}else{
		nokiaoutmsga("You won!");
		win = 1;
	}
	delay(1000);
	set_emotion(tama, prev_emotion);
	clear_screen();
	return win;
}