#ifndef XCEZ_LIB_H
#define XCEZ_LIB_H

#include <xc888.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

uint8_t hex2bcd(uint8_t);
uint8_t hexbcd8(uint8_t);
void init_buttons(void);
uint8_t get_random_between(uint8_t,uint8_t);

void delay10us (void);
void delay1ms (void);
void delay (uint16_t ms);

#define IIC_ACK 0
#define IIC_NACK 1

void initleds(void);

void initiic (void);
void iicstart (void);
void iicstop (void);
uint8_t iicoutbyte (uint8_t databyte);
uint8_t iicinbyte (uint8_t ack);
                      
#define TIMER0_INTERRUPT             1 //0x000B                        

//! @}
//! @}
#endif /* XCEZ_LIB_H */

	

	


	

