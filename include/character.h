#ifndef CHARACTER_H
#define CHARACTER_H
#include <stdint.h>
#include <position.h>
#include <xc888_lib.h>
#include <xc888.h>
#include <chars.h>
#include <led.h>
#include <rtc.h>

typedef struct Tamagotchi{
	uint8_t *bytes;
	Position *pos;
	uint8_t emotion;
	uint8_t last_interaction;
	uint8_t version;
} Tamagotchi;

void init_tamagotchi(Tamagotchi*);
void move(Tamagotchi*);
void set_emotion(Tamagotchi*, uint8_t);
uint8_t get_emotion(Tamagotchi*);
void food_animation(Tamagotchi*);
void wash_animation(void);
void clear_drop(uint8_t,uint8_t);
void happier(Tamagotchi*);
void sadder(Tamagotchi*);

#endif