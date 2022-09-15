#include <xc888_lib.h>
#include <xc888.h>
#include <led.h>
#include <lcd.h>
#include <buttons.h>
#include <position.h>
#include <character.h>
#include <stdbool.h>
#include <menu.h>
#include <rtc.h>
#include <games.h>

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define NUMBER_OF_DIGITS 16

//VIEWS
typedef enum views {TAMA, MENU, TIME_MENU, CARE_MENU, GAME_MENU} View;



//TIME
void inittimer(void);

typedef struct time_t{
        uint8_t millis;
        uint8_t seconds;
        uint8_t minutes;
}time_t;

static rtc_t now;
static uint16_t ticks = 0;
static time_t time = {0,0,0};
static Tamagotchi *tam;
static uint8_t random_hours;
static uint8_t prev_emotion;

void timer0_isr_time (void) __interrupt (TIMER0_INTERRUPT) 
{
	//TIME
	static uint16_t current_count_time = 0;
    if(++current_count_time == 48000){
    	ticks += 1;
        current_count_time = 0;
        time.seconds += 1;
    }	
}

void main (void){

	//Allocating space for menu's & tamagotchi character
	tam = (Tamagotchi*)malloc(sizeof(Tamagotchi));
	Menu *main = (Menu*)malloc(sizeof(Menu));
	Tamagotchi *tam = (Tamagotchi*)malloc(sizeof(Tamagotchi));
	Time_Menu *time_menu = (Time_Menu*)malloc(sizeof(Time_Menu));
	Menu *care = (Menu*)malloc(sizeof(Menu));
	Menu *games = (Menu*)malloc(sizeof(Menu));
	View view = TIME_MENU;
	//cmcon &= ~(1UL << 0); 
	//cmcon |= 1UL << 1;
	//cmcon |= 1UL << 2;
	//cmcon &= ~(1UL << 3); // CLCKREL naar 0110
	//Inits
	initdisp();
	init_buttons();
	inittimer();
	initleds();
	clear_screen();
	init_main_menu(main);
	init_time_menu(time_menu);
	init_care_menu(care);
	init_game_menu(games);

	initiic();
	init_rtc();
	srand((unsigned int)get_second()*100);

	time_t cur_time = {0,0};

	random_hours = get_random_between(1, 3);
	while(1){
		
		//pcon |= 1UL << 0;
		if(time.seconds == 60){
			//pmcon0 |= 1UL << 1;
			//pcon |= 1UL << 0;
	    	time.seconds = 0;
	    	read_rtc(&now);
	    	if(tam->emotion != 4 && (now.hour >= 0x20 || now.hour < 0x9)){
	    		clear_screen();
	        	prev_emotion = tam->emotion;
	        	set_emotion(tam, 4);
	        }
	        if(now.hour == 9 && now.min == 1){
	        	set_emotion(tam,prev_emotion);
	        }
	        if(tam->emotion != 4 && (now.hour - tam->last_interaction) > random_hours){
	        	sadder(tam);
	        	tam->last_interaction = now.hour;
	        	random_hours = get_random_between(1,3); 
	        }
	        clear_screen();
    	}
 
		if(view==TAMA){	
			draw_tamagotchi(tam);
			if(time.seconds - cur_time.seconds == 1 && get_emotion(tam) != 4){
				cur_time.seconds = time.seconds;
				move(tam);
				
			}
			if(cur_time.seconds > time.seconds)
				cur_time.seconds = time.seconds-1;
			if(check_button_pressed(A)){
				view = MENU;
				clear_screen();
			}
		}

		if(view == MENU){
			read_rtc(&now);
			draw_menu(main, tam->emotion,&now);

			if(check_button_pressed(A) && get_emotion(tam) != 4){
				if(main->choice_idx == 0)
					view = CARE_MENU;
				if(main->choice_idx == 1)
					view = GAME_MENU;
				clear_screen();
			}

			if(check_button_pressed(UP)){
				decrement_choice(main,3);

			}
			if(check_button_pressed(DOWN)){
				increment_choice(main,3);
			}
			if(check_button_pressed(B)){
				view = TAMA;
				cur_time.seconds = 0;
				time.seconds = 0;
				clear_screen();
			}
		}

		if(view==CARE_MENU){
			draw_care_menu(care);
			if(check_button_pressed(DOWN)){
				increment_choice(care,2);
			}
			if(check_button_pressed(UP)){
				decrement_choice(care,2);
			}
			if(check_button_pressed(A)){
				if(care->choice_idx==0){
					food_animation(tam);
					happier(tam);
				}
				if(care->choice_idx==1){
					wash_animation();
					uint8_t x = get_random_between(1,6);
					if(x == 3)
						happier(tam);
				}
			}
			if(check_button_pressed(B)){
				view = MENU;
				cur_time.seconds = time.seconds-1;
				clear_screen();
			}
		}

		if(view == GAME_MENU){
			draw_game_menu(games);
			if(check_button_pressed(A)){
				if(games->choice_idx==0){
					if(move_game(tam)==1)
						happier(tam);
				}
			}
			if(check_button_pressed(B)){
				view = MENU;
				clear_screen();
			}
		}

		if(view == TIME_MENU){
			draw_time_menu(time_menu);
			if(check_button_pressed(RIGHT)){
				clear_time_choice(time_menu->choice_idx);
				time_menu->choice_idx+=1;
				if(time_menu->choice_idx == 3)
					time_menu->choice_idx = 0;
			}
			if(check_button_pressed(LEFT)){
				clear_time_choice(time_menu->choice_idx);
				if(time_menu->choice_idx == 0)
					time_menu->choice_idx = 3;
				time_menu->choice_idx -= 1;

			}
			if(check_button_pressed(UP)){
				time_menu->items[time_menu->choice_idx].time_element += 1;
				if(time_menu->choice_idx==0 && time_menu->items[time_menu->choice_idx].time_element==24)
					time_menu->items[time_menu->choice_idx].time_element = 0;
				if((time_menu->choice_idx==1 || time_menu->choice_idx==2) && time_menu->items[time_menu->choice_idx].time_element==60)
					time_menu->items[time_menu->choice_idx].time_element = 0;
			}
			if(check_button_pressed(DOWN)){
				if(time_menu->choice_idx==0 && time_menu->items[time_menu->choice_idx].time_element==0)
					time_menu->items[time_menu->choice_idx].time_element = 24;
				if((time_menu->choice_idx==1 || time_menu->choice_idx==2) && time_menu->items[time_menu->choice_idx].time_element==0)
					time_menu->items[time_menu->choice_idx].time_element = 60;
				time_menu->items[time_menu->choice_idx].time_element -= 1;
			}
			if(check_button_pressed(A)){
				rtc_t date = {time_menu->items[2].time_element, time_menu->items[1].time_element, time_menu->items[0].time_element, 1, 0x01,0x01,0x16};
				init_date(&date);
				free(time_menu);
				init_tamagotchi(tam);
				view = TAMA;
				time.seconds = 0;
				time.millis = 0;
				time.minutes = 0;
				pmcon0 |= 1UL << 2;
			}
		}
	}
}

//TIMER
void inittimer(void){
	tmod = 0b00000010; //Timer 0 int 8 bit autoreload mode
	et0 = 1; //timer 0 interrupts enablen
	ea = 1; //globale interrupts enablen
	th0 = 6; //Interrupt na 250 clock ticks
	tl0 = 6; 
	tr0 = 1; // Start timer 0
}
