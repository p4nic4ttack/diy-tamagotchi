#ifndef MENU_H
#define MENU_H

#include <stdint.h>
#include <position.h>
#include <lcd.h>
#include <character.h>
#include <rtc.h>
#include <chars.h>
#include <xc888_lib.h>

#define MAX_MENU_ITEMS 3
#define MAX_ITEM_SZ 15

/// General Menu
typedef struct Menu_Item{
	uint8_t idx;
	char item_name[MAX_ITEM_SZ];
	const Position item_pos;
}Menu_Item;

typedef struct Menu{
	uint8_t choice_idx;
	Menu_Item items[MAX_MENU_ITEMS];
}Menu;
///
/// Time Menu
typedef struct Time_Menu_Item{
	uint8_t idx;
	uint8_t time_element;
	const Position item_pos;
}Time_Menu_Item;

typedef struct Time_Menu{
	uint8_t choice_idx;
	Time_Menu_Item items[MAX_MENU_ITEMS];
}Time_Menu;
///

void init_main_menu(Menu*);
void draw_menu(Menu*, uint8_t,rtc_t*);
void clear_choice(uint8_t);
void draw_tamagotchi_emotion(uint8_t);
void draw_time(rtc_t*);
void increment_choice(Menu*,uint8_t);
void decrement_choice(Menu*,uint8_t);

void init_time_menu(Time_Menu*);
void draw_time_menu(Time_Menu*);
void draw_time_choice(uint8_t);
void clear_time_choice(uint8_t);

void init_care_menu(Menu*);
void draw_care_menu(Menu*);

void init_game_menu(Menu*);
void draw_game_menu(Menu*);
#endif