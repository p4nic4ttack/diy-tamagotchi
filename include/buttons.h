#ifndef BUTTONS_H
#define BUTTONS_H
#include <xc888.h>
#include <stdint.h>
#include <xc888_lib.h>
typedef enum buttons {UP, DOWN, LEFT, RIGHT, A, B} Button;
uint8_t check_button_pressed(Button);
#endif