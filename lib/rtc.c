#include <rtc.h>

const uint8_t ds1307R = 0xd1;
const uint8_t ds1307W = 0xd0;

void init_rtc(void){
	iicstart();
	iicoutbyte(ds1307W);
	iicoutbyte(0x7);
	iicoutbyte(0x0);
	iicstop();
}

/*void init_date(void){
	iicstart();
	iicoutbyte(ds1307W);
	rtc_t date = {0x00,0x58,0x23,5,0x01,0x01,0x16};
	iicoutbyte(0x00);
	
	iicoutbyte(date.sec);
	iicoutbyte(date.min);
	iicoutbyte(date.hour);
	iicoutbyte(date.day);
	iicoutbyte(date.date);
	iicoutbyte(date.month);
	iicoutbyte(date.year);
	iicstop();

}*/

void init_date(rtc_t *date){
	iicstart();
	iicoutbyte(ds1307W);
	iicoutbyte(0x00);
	iicoutbyte(hex2bcd(date->sec));
	iicoutbyte(hex2bcd(date->min));
	iicoutbyte(hex2bcd(date->hour));
	iicoutbyte(hex2bcd(date->day));
	iicoutbyte(hex2bcd(date->date));
	iicoutbyte(hex2bcd(date->month));
	iicoutbyte(hex2bcd(date->year));
	iicstop();
}

void read_rtc(rtc_t *date){
	iicstart();
	iicoutbyte(ds1307W);
	iicoutbyte(0x00);
	iicstop();

	iicstart();
	iicoutbyte(ds1307R);
	date->sec = iicinbyte(IIC_ACK);
	date->min = iicinbyte(IIC_ACK);
	date->hour = iicinbyte(IIC_ACK);
	date->day = iicinbyte(IIC_ACK);
	date->date = iicinbyte(IIC_ACK);
	date->month = iicinbyte(IIC_ACK);
	date->year = iicinbyte(IIC_NACK);
	iicstop();
}

uint8_t get_second(void){
	uint8_t result;
	iicstart();
	iicoutbyte(ds1307W);
	iicoutbyte(0x00);
	iicstop();
	iicstart();
	iicoutbyte(ds1307R);
	result = iicinbyte(IIC_NACK);
	iicstop();
	return result;
}

uint8_t get_hour(void){
	uint8_t result;
	iicstart();
	iicoutbyte(ds1307W);
	iicoutbyte(0x02);
	iicstop();
	iicstart();
	iicoutbyte(ds1307R);
	result = iicinbyte(IIC_NACK);
	iicstop();
	return result;
}