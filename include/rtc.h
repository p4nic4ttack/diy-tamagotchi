#ifndef RTC_H
#define RTC_H

#include <stdint.h>
#include <xc888_lib.h>

typedef struct RTC
{
  uint8_t sec;
  uint8_t min;
  uint8_t hour;
  uint8_t day;
  uint8_t date;
  uint8_t month;
  uint8_t year;  
}rtc_t;



void init_rtc(void);
//void init_date(void);
void read_rtc(rtc_t*);
void init_date(rtc_t*);

uint8_t get_second(void);
uint8_t get_hour(void);
#endif