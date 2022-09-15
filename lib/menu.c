#include <menu.h>

uint8_t prev_emotion;

void init_main_menu(Menu *m){
	Menu_Item care = {0, "Care", {10,0}};	
	m->items[0] = care;
	Menu_Item games = {1, "Play game", {10,1}};
	m->items[1] = games;
	Menu_Item multiplayer = {2, "Multiplayer", {10,2}}; 
	m->items[2] = multiplayer;
	m->choice_idx = 0;
}

void draw_menu(Menu *menu, uint8_t emotion, rtc_t *time){
	for(int i = 0; i < 3; i++){
		draw(triangle,0,menu->choice_idx,3);
		set_position_on_screen(&menu->items[i].item_pos);
		nokiaoutmsga(menu->items[i].item_name);
		draw_tamagotchi_emotion(emotion);
		draw_time(time);
	}
}

void draw_tamagotchi_emotion(uint8_t emotion){
	setx(5);
	sety(3);
	nokiaoutmsga("~~~Status~~~");
	setx(4);
	sety(4);
	if(emotion == 4){
		emotion = prev_emotion;
	}
	if(emotion == 0){
		for(int i = 0; i < (sizeof(full_health)/sizeof(full_health[0])); i++){
			nokiaoutbyted(full_health[i]);
		}	
	}else if(emotion == 1){
		draw_with_differences(full_health, neutral_health, 20, 84);
	}else if(emotion == 2){
		draw_with_differences(full_health, sad_health, 40, 84);
	}
}

void draw_time(rtc_t *now){
	setx(15);
	sety(5);
	nokiaoutbyte(now->hour);
	nokiaoutchar(':');
	nokiaoutbyte(now->min);
	nokiaoutchar(':');
	nokiaoutbyte(now->sec);
}

void clear_choice(uint8_t prev_choice){
	setx(0);
	sety(prev_choice);
	for(int x = 0; x < 3; x++){
		nokiaoutbyted(0x0);
	}
}

void increment_choice(Menu *menu,uint8_t max_choice){
	clear_choice(menu->choice_idx);
	menu->choice_idx+=1;
	if(menu->choice_idx == max_choice)
		menu->choice_idx = 0;
}

void decrement_choice(Menu *menu,uint8_t max_choice){
	clear_choice(menu->choice_idx);
	if(menu->choice_idx == 0)
		menu->choice_idx = max_choice+1;
	menu->choice_idx-=1;
}

void init_time_menu(Time_Menu *tm){
	Time_Menu_Item hour = {0, 0, {15,2}};	
	tm->items[0] = hour;
	Time_Menu_Item minutes = {1, 0, {18,2}};
	tm->items[1] = minutes;
	Time_Menu_Item seconds = {2, 0, {21,2}}; 
	tm->items[2] = seconds;
	tm->choice_idx = 0;
}

void draw_time_menu(Time_Menu *tm){
	setx(14);
	sety(2);
	nokiaoutmsga("Set time:");
	setx(15);
	sety(3);
	nokiaoutbyte(hex2bcd(tm->items[0].time_element));
	nokiaoutchar(':');
	nokiaoutbyte(hex2bcd(tm->items[1].time_element));
	nokiaoutchar(':');
	nokiaoutbyte(hex2bcd(tm->items[2].time_element));
	draw_time_choice(tm->choice_idx);
	setx(15);
	sety(4);
	nokiaoutmsga("hh:mm:ss");
}

void draw_time_choice(uint8_t idx){
	uint8_t x = 0;
	if(idx==0)
		x = 18;
	if (idx==1)
		x = 36;
	if(idx==2)
		x = 54;
	draw(arrow, x, 5, 5);
}

void clear_time_choice(uint8_t prev_choice){
	sety(5);
	if(prev_choice==0)
		setx(18);
	else if(prev_choice==1)
		setx(36);
	else if(prev_choice==2)
		setx(54);
	for(int i = 0; i < 5; i++)
		nokiaoutbyted(0x00);
}

void init_care_menu(Menu *cm){
	Menu_Item feed = {0, "Feed", {10,0}};	
	cm->items[0] = feed;
	Menu_Item wash = {1, "Wash", {10,1}};
	cm->items[1] = wash;
	cm->choice_idx = 0;
}

void draw_care_menu(Menu *cm){
	for(int i = 0; i < 2; i++){
		draw(triangle,0,cm->choice_idx,3);
		set_position_on_screen(&cm->items[i].item_pos);
		nokiaoutmsga(cm->items[i].item_name);
	}
	draw(candy,40,0,12);
	draw(drop2,43,1,5);
}

void init_game_menu(Menu *game){
	Menu_Item game1 = {0, "Guess game", {10,0}};
	game->items[0] = game1;
	game->choice_idx = 0;
}

void draw_game_menu(Menu *game){
	draw(triangle, 0, game->choice_idx,3);
	set_position_on_screen(&game->items[0].item_pos);
	nokiaoutmsga(game->items[0].item_name);
}