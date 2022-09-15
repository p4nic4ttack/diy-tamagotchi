//*******************************************************************************
//
// These are the register declarations for the XC888 microcontroller from
// Infineon. 
// modified from xcez.inc by WDA with the following regular expressions in notpad++
// zoeken naar: "^([a-zA-Z0-9_]*)\s*data\s*0([0-9A-Fa-f]*)h" vervangen door: "__sfr __at \(0x\2\) \1;"
// zoeken naar: "^\s*([a-zA-Z0-9_]*)\s*bit\s*0([0-9A-Fa-f]*)h" vervangen door: "     __sbit __at \(0x\2\) \1;"
//
//*******************************************************************************

//*******************************************************************************
//
// CPU registers are accessible independend of paging and mapping
// (always accessible)
//
//*******************************************************************************

__sfr __at (0x81) sp;          //stack pointer                     reset=007h
__sfr __at (0x82) dpl;          //datapointer low register          reset=000h
__sfr __at (0x83) dph;          //datapointer high register         reset=000h
__sfr __at (0x87) pcon;          //power control                     reset=000h
__sfr __at (0x88) tcon;          //timer 0-1 control                 reset=000h
//tcon is bit addressable
     __sbit __at (0x8f) tf1;
     __sbit __at (0x8e) tr1;
     __sbit __at (0x8d) tf0;
     __sbit __at (0x8c) tr0;
     __sbit __at (0x8b) ie1;
     __sbit __at (0x8a) it1;
     __sbit __at (0x89) ie0;
     __sbit __at (0x88) it0;

__sfr __at (0x89) tmod;          //timer 0-1 mode                    reset=000h
__sfr __at (0x8a) tl0;          //timer 0 low                       reset=000h
__sfr __at (0x8b) tl1;          //timer 1 low                       reset=000h
__sfr __at (0x8c) th0;          //timer 0 high                      reset=000h
__sfr __at (0x8d) th1;          //timer 1 high                      reset=000h

__sfr __at (0x8f) syscon0;          //system control register 0         reset=004h
__sfr __at (0x98) scon;          //serial channel 0 control          reset=000h
//scon is bit addressable
     __sbit __at (0x9f) sm0;
     __sbit __at (0x9e) sm1;
     __sbit __at (0x9d) sm2;
     __sbit __at (0x9c) ren;
     __sbit __at (0x9b) tb8;
     __sbit __at (0x9a) rb8;
     __sbit __at (0x99) ti;
     __sbit __at (0x98) ri;

__sfr __at (0x99) sbuf;          //serial data buffer channel 0
__sfr __at (0xa2) eo;          //extended operation                reset=000h
__sfr __at (0xa8) ien0;          //interrupt enable 0                reset=000h
//ien0 is bit addressable
     __sbit __at (0xaf) ea;
                                   //bit not implemented
     __sbit __at (0xad) et2;
     __sbit __at (0xac) es;
     __sbit __at (0xab) et1;
     __sbit __at (0xaa) ex1;
     __sbit __at (0xa9) et0;
     __sbit __at (0xa8) ex0;

__sfr __at (0xb8) ip;          //interrupt priotity                reset=000h
//ip is bit addressable
                                   //bit not implemented
                                   //bit not implemented
     __sbit __at (0xbd) pt2;
     __sbit __at (0xbc) ps;
     __sbit __at (0xbb) pt1;
     __sbit __at (0xba) px1;
     __sbit __at (0xb9) pt0;
     __sbit __at (0xb8) px0;

__sfr __at (0xb9) iph;          //interrupt priority high           reset=000h
__sfr __at (0xd0) psw;          //program status word               reset=000h
//psw is bit addressable
     __sbit __at (0xd7) cy;
     __sbit __at (0xd6) ac;
     __sbit __at (0xd5) f0;
     __sbit __at (0xd4) rs1;
     __sbit __at (0xd3) rs0;
     __sbit __at (0xd2) ov;
     __sbit __at (0xd1) f1;
     __sbit __at (0xd0) p;

__sfr __at (0xe0) acc;          //accumulator                       reset=000h
//acc is bit addressable

__sfr __at (0xe8) ien1;          //interrupt enable 1                reset=000h
//ien1 is bit addressable
     __sbit __at (0xef) eccip3;
     __sbit __at (0xee) eccip2;
     __sbit __at (0xed) eccip1;
     __sbit __at (0xec) eccip0;
     __sbit __at (0xeb) exm;
     __sbit __at (0xea) ex2;
     __sbit __at (0xe9) essc;
     __sbit __at (0xe8) eadc;

__sfr __at (0xf0) b;          //b register                        reset=000h
//b is bit addressable

__sfr __at (0xf8) ip1;          //interrupt priority 1              reset=000h
//ip1 is bit addressable
     __sbit __at (0xff) pccip3;
     __sbit __at (0xfe) pccip2;
     __sbit __at (0xfd) pccip1;
     __sbit __at (0xfc) pccip0;
     __sbit __at (0xfb) pxm;
     __sbit __at (0xfa) px2;
     __sbit __at (0xf9) pssc;
     __sbit __at (0xf8) padc;

__sfr __at (0xf9) iph1;          //interrupt priority 1 high         reset=000h


//*******************************************************************************
//
// system control registers registers that can only be accessed in the non
// mapped memory area (rmap=0) page independent
//
//*******************************************************************************

__sfr __at (0xbf) scu_page;          //page register scu                 reset=000h

//*******************************************************************************
//
// system control registers registers that can only be accessed in the non
// mapped memory area (rmap=0) and page 0
//
//*******************************************************************************

__sfr __at (0xb3) modpisel;          //peripheral input select           reset=000h
__sfr __at (0xb4) ircon0;          //interrupt request register        reset=000h
__sfr __at (0xb5) ircon1;          //interrupt request register        reset=000h
__sfr __at (0xb6) ircon2;          //interrupt request register        reset=000h
__sfr __at (0xb7) exicon0;          //external interrupt control        reset=0f0h
__sfr __at (0xba) exicon1;          //external interrupt control        reset=03fh
__sfr __at (0xbb) nmicon;          //nimi control                      reset=000h
__sfr __at (0xbc) nmisr;          //nmi status                        reset=000h
__sfr __at (0xbd) bcon;          //baud rate control                 reset=000h
__sfr __at (0xbe) bg;          //baud rate timer reload            reset=000h
__sfr __at (0xe9) fdcon;          //fractional devider control        reset=000h
__sfr __at (0xea) fdstep;          //fractional devider reload         reset=000h
__sfr __at (0xeb) fdres;          //fractional divider result         reset=000h

//*******************************************************************************
//
// system control registers registers that can only be accessed in the non
// mapped memory area (rmap=0) and page 1
//
//*******************************************************************************

__sfr __at (0xb3) id;          //identity register     reset=device dependent
__sfr __at (0xb4) pmcon0;          //power mode control                reset=000h
__sfr __at (0xb5) pmcon1;          //power mode control                reset=000h
__sfr __at (0xb6) osc_con;          //osc control                       reset=008h
__sfr __at (0xb7) pll_con;          //pll control                       reset=090h
__sfr __at (0xba) cmcon;          //clock control                     reset=010h
__sfr __at (0xbb) passwd;          //password register                 reset=007h
__sfr __at (0xbc) feal;          //flash error register              reset=000h
__sfr __at (0xbd) feah;          //flash error address high          reset=000h
__sfr __at (0xbe) cocon;          //clock output control              reset=000h
__sfr __at (0xe9) misc_con;          //miscellaneous control             reset=000h

//*******************************************************************************
//
// system control registers registers that can only be accessed in the non
// mapped memory area (rmap=0) and page 3
//
//*******************************************************************************

__sfr __at (0xb3) xaddrh;          //on chip xram address high         reset=0f0h
__sfr __at (0xb4) ircon3;          //interrupt request register        reset=000h
__sfr __at (0xb5) ircon4;          //interrupt request register        reset=000h
__sfr __at (0xb7) modpisel1;          //peripheral input select 1         reset=000h
__sfr __at (0xba) modpisel2;          //peripheral input select 2         reset=000h
__sfr __at (0xbb) pmcon2;          //power mode control 2              reset=000h
__sfr __at (0xbd) modsusp;          //mudule suspend control            reset=001h

//*******************************************************************************
//
// port registers accessed in non mapped memory area (rmap=0) page independent
//
//*******************************************************************************

__sfr __at (0xb2) port_page;          //port page register                reset=000h

//*******************************************************************************
//
// port registers accessed in non mapped memory area (rmap=0) page 0
//
//*******************************************************************************

__sfr __at (0x80) p0_data;          //port 0 data register              reset=000h
//p0_data is bit addressable
     __sbit __at (0x87) p0_data_7;
     __sbit __at (0x86) p0_data_6;
     __sbit __at (0x85) p0_data_5;
     __sbit __at (0x84) p0_data_4;
     __sbit __at (0x83) p0_data_3;
     __sbit __at (0x82) p0_data_2;
     __sbit __at (0x81) p0_data_1;
     __sbit __at (0x80) p0_data_0;
__sfr __at (0x86) p0_dir;          //port 0 direction register         reset=000h
__sfr __at (0x90) p1_data;          //port 1 data register              reset=000h
//p1_data is bit addressable
     __sbit __at (0x97) p1_data_7;
     __sbit __at (0x96) p1_data_6;
     __sbit __at (0x95) p1_data_5;
     __sbit __at (0x94) p1_data_4;
     __sbit __at (0x93) p1_data_3;
     __sbit __at (0x92) p1_data_2;
     __sbit __at (0x91) p1_data_1;
     __sbit __at (0x90) p1_data_0;
__sfr __at (0x91) p1_dir;          //port 1 direction register         reset=000h
__sfr __at (0xa0) p2_data;          //port 2 data register              reset=000h
//p2_data is bit addressable
     __sbit __at (0xa7) p2_data_7;
     __sbit __at (0xa6) p2_data_6;
     __sbit __at (0xa5) p2_data_5;
     __sbit __at (0xa4) p2_data_4;
     __sbit __at (0xa3) p2_data_3;
     __sbit __at (0xa2) p2_data_2;
     __sbit __at (0xa1) p2_data_1;
     __sbit __at (0xa0) p2_data_0;
__sfr __at (0xa1) p2_dir;          //port 2 direction register         reset=000h
__sfr __at (0xb0) p3_data;          //port 3 data register              reset=000h
//p3_data is bit addressable
     __sbit __at (0xb7) p3_data_7;
     __sbit __at (0xb6) p3_data_6;
     __sbit __at (0xb5) p3_data_5;
     __sbit __at (0xb4) p3_data_4;
     __sbit __at (0xb3) p3_data_3;
     __sbit __at (0xb2) p3_data_2;
     __sbit __at (0xb1) p3_data_1;
     __sbit __at (0xb0) p3_data_0;
__sfr __at (0xb1) p3_dir;          //port 3 direction register         reset=000h
__sfr __at (0xc8) p4_data;          //port 4 data register              reset=000h
//p4_data is bit addressable
     __sbit __at (0xcf) p4_data_7;
     __sbit __at (0xce) p4_data_6;
     __sbit __at (0xcd) p4_data_5;
     __sbit __at (0xcc) p4_data_4;
     __sbit __at (0xcb) p4_data_3;
     __sbit __at (0xca) p4_data_2;
     __sbit __at (0xc9) p4_data_1;
     __sbit __at (0xc8) p4_data_0;
__sfr __at (0xc9) p4_dir;          //port 4 direction register         reset=000h
__sfr __at (0x92) p5_data;          //port 5 data register              reset=000h
//p5_data is bit addressable
     __sbit __at (0x99) p5_data_7;
     __sbit __at (0x98) p5_data_6;
     __sbit __at (0x97) p5_data_5;
     __sbit __at (0x96) p5_data_4;
     __sbit __at (0x95) p5_data_3;
     __sbit __at (0x94) p5_data_2;
     __sbit __at (0x93) p5_data_1;
     __sbit __at (0x92) p5_data_0;
__sfr __at (0x93) p5_dir;          //port 5 direction register         reset=000h
__sbit __at (0x95) cs;
__sbit __at (0x96) rst;
__sbit __at (0x97) dc;
__sbit __at (0x98) sdin;
__sbit __at (0x99) sclk;
__sbit __at (0xb2) sda;
__sbit __at (0xb3) scl;

//*******************************************************************************
//
// port registers accessed in non mapped memory area (rmap=0) page 1
//      
//*******************************************************************************

__sfr __at (0x80) p0_pudsel;          //port 0 pull-up/down select        reset=0ffh
//p0_pudsel is bit addressable
     __sbit __at (0x87) p0_pudsel_7;
     __sbit __at (0x86) p0_pudsel_6;
     __sbit __at (0x85) p0_pudsel_5;
     __sbit __at (0x84) p0_pudsel_4;
     __sbit __at (0x83) p0_pudsel_3;
     __sbit __at (0x82) p0_pudsel_2;
     __sbit __at (0x81) p0_pudsel_1;
     __sbit __at (0x80) p0_pudsel_0;
__sfr __at (0x86) p0_puden;          //port 0 pull-up/down enable        reset=0c4h
__sfr __at (0x90) p1_pudsel;          //port 1 pull-up/down select        reset=0ffh
//p1_pudsel is bit addressable
     __sbit __at (0x97) p1_pudsel_7;
     __sbit __at (0x96) p1_pudsel_6;
     __sbit __at (0x95) p1_pudsel_5;
     __sbit __at (0x94) p1_pudsel_4;
     __sbit __at (0x93) p1_pudsel_3;
     __sbit __at (0x92) p1_pudsel_2;
     __sbit __at (0x91) p1_pudsel_1;
     __sbit __at (0x90) p1_pudsel_0;
__sfr __at (0x91) p1_puden;          //port 1 pull-up/down enable        reset=0ffh
__sfr __at (0xa0) p2_pudsel;          //port 2 pull-up/down select        reset=0ffh
//p2_pudsel is bit addressable
     __sbit __at (0xa7) p2_pudsel_7;
     __sbit __at (0xa6) p2_pudsel_6;
     __sbit __at (0xa5) p2_pudsel_5;
     __sbit __at (0xa4) p2_pudsel_4;
     __sbit __at (0xa3) p2_pudsel_3;
     __sbit __at (0xa2) p2_pudsel_2;
     __sbit __at (0xa1) p2_pudsel_1;
     __sbit __at (0xa0) p2_pudsel_0;
__sfr __at (0xa1) p2_puden;          //port 2 pull-up/down enable        reset=000h
__sfr __at (0xb0) p3_pudsel;          //port 3 pull-up/down select        reset=0bfh
//p3_pudsel is bit addressable
     __sbit __at (0xb7) p3_pudsel_7;
     __sbit __at (0xb6) p3_pudsel_6;
     __sbit __at (0xb5) p3_pudsel_5;
     __sbit __at (0xb4) p3_pudsel_4;
     __sbit __at (0xb3) p3_pudsel_3;
     __sbit __at (0xb2) p3_pudsel_2;
     __sbit __at (0xb1) p3_pudsel_1;
     __sbit __at (0xb0) p3_pudsel_0;
__sfr __at (0xb1) p3_puden;          //port 3 pull-up/down enable        reset=040h
__sfr __at (0xc8) p4_pudsel;          //port 4 pull-up/down select        reset=0ffh
//p4_pudsel is bit addressable
     __sbit __at (0xcf) p4_pudsel_7;
     __sbit __at (0xce) p4_pudsel_6;
     __sbit __at (0xcd) p4_pudsel_5;
     __sbit __at (0xcc) p4_pudsel_4;
     __sbit __at (0xcb) p4_pudsel_3;
     __sbit __at (0xca) p4_pudsel_2;
     __sbit __at (0xc9) p4_pudsel_1;
     __sbit __at (0xc8) p4_pudsel_0;
__sfr __at (0xc9) p4_puden;          //port 4 pull-up/down enable        reset=004h
__sfr __at (0x92) p5_pudsel;          //port 5 pull-up/down select        reset=0ffh
__sfr __at (0x93) p5_puden;          //port 5 pull-up/down enable        reset=0ffh

//*******************************************************************************
//
// port registers accessed in non mapped memory area (rmap=0) page 2
//      
//*******************************************************************************

__sfr __at (0x80) p0_altsel0;          //port 0 alternate select           reset=000h
//p0_altsel0 is bit addressable
     __sbit __at (0x87) p0_altsel0_7;
     __sbit __at (0x86) p0_altsel0_6;
     __sbit __at (0x85) p0_altsel0_5;
     __sbit __at (0x84) p0_altsel0_4;
     __sbit __at (0x83) p0_altsel0_3;
     __sbit __at (0x82) p0_altsel0_2;
     __sbit __at (0x81) p0_altsel0_1;
     __sbit __at (0x80) p0_altsel0_0;
__sfr __at (0x86) p0_altsel1;          //port 0 alternate select           reset=000h
__sfr __at (0x90) p1_altsel0;          //port 1 alternate select           reset=000h
//p1_altsel0 is bit addressable
     __sbit __at (0x97) p1_altsel0_7;
     __sbit __at (0x96) p1_altsel0_6;
     __sbit __at (0x95) p1_altsel0_5;
     __sbit __at (0x94) p1_altsel0_4;
     __sbit __at (0x93) p1_altsel0_3;
     __sbit __at (0x92) p1_altsel0_2;
     __sbit __at (0x91) p1_altsel0_1;
     __sbit __at (0x90) p1_altsel0_0;
__sfr __at (0x91) p1_altsel1;          //port 1 alternate select           reset=000h
__sfr __at (0xb0) p3_altsel0;          //port 3 alternate select           reset=000h
//p3_altsel0 is bit addressable
     __sbit __at (0xb7) p3_altsel0_7;
     __sbit __at (0xb6) p3_altsel0_6;
     __sbit __at (0xb5) p3_altsel0_5;
     __sbit __at (0xb4) p3_altsel0_4;
     __sbit __at (0xb3) p3_altsel0_3;
     __sbit __at (0xb2) p3_altsel0_2;
     __sbit __at (0xb1) p3_altsel0_1;
     __sbit __at (0xb0) p3_altsel0_0;
__sfr __at (0xb1) p3_altsel1;          //port 3 alternate select           reset=000h
__sfr __at (0xc8) p4_altsel0;          //port 4 alternate select           reset=000h
//p4_altsel0 is bit addressable
     __sbit __at (0xcf) p4_altsel0_7;
     __sbit __at (0xce) p4_altsel0_6;
     __sbit __at (0xcd) p4_altsel0_5;
     __sbit __at (0xcc) p4_altsel0_4;
     __sbit __at (0xcb) p4_altsel0_3;
     __sbit __at (0xca) p4_altsel0_2;
     __sbit __at (0xc9) p4_altsel0_1;
     __sbit __at (0xc8) p4_altsel0_0;
__sfr __at (0xc9) p4_altsel1;          //port 4 alternate select           reset=000h
__sfr __at (0x92) p5_altsel0;          //port 5 alternate select           reset=000h
__sfr __at (0x93) p5_altsel1;          //port 5 alternate select           reset=000h

//*******************************************************************************
//
// port registers accessed in non mapped memory area (rmap=0) page 3
//      
//*******************************************************************************

__sfr __at (0x80) p0_od;          //port 0 open drain control         reset=000h
//p0_od is bit addressable
     __sbit __at (0x87) p0_od_7;
     __sbit __at (0x86) p0_od_6;
     __sbit __at (0x85) p0_od_5;
     __sbit __at (0x84) p0_od_4;
     __sbit __at (0x83) p0_od_3;
     __sbit __at (0x82) p0_od_2;
     __sbit __at (0x81) p0_od_1;
     __sbit __at (0x80) p0_od_0;
__sfr __at (0x90) p1_od;          //port 0 open drain control         reset=000h
//p1_od is bit addressable
     __sbit __at (0x97) p1_od_7;
     __sbit __at (0x96) p1_od_6;
     __sbit __at (0x95) p1_od_5;
     __sbit __at (0x94) p1_od_4;
     __sbit __at (0x93) p1_od_3;
     __sbit __at (0x92) p1_od_2;
     __sbit __at (0x91) p1_od_1;
     __sbit __at (0x90) p1_od_0;
__sfr __at (0xb0) p3_od;          //port 0 open drain control         reset=000h
//p3_od is bit addressable
     __sbit __at (0xb7) p3_od_7;
     __sbit __at (0xb6) p3_od_6;
     __sbit __at (0xb5) p3_od_5;
     __sbit __at (0xb4) p3_od_4;
     __sbit __at (0xb3) p3_od_3;
     __sbit __at (0xb2) p3_od_2;
     __sbit __at (0xb1) p3_od_1;
     __sbit __at (0xb0) p3_od_0;
__sfr __at (0xc8) p4_od;          //port 0 open drain control         reset=000h
//p4_od is bit addressable
     __sbit __at (0xcf) p4_od_7;
     __sbit __at (0xce) p4_od_6;
     __sbit __at (0xcd) p4_od_5;
     __sbit __at (0xcc) p4_od_4;
     __sbit __at (0xcb) p4_od_3;
     __sbit __at (0xca) p4_od_2;
     __sbit __at (0xc9) p4_od_1;
     __sbit __at (0xc8) p4_od_0;
__sfr __at (0x92) p5_od;          //port 0 open drain control         reset=000h

//*******************************************************************************
//
// adc registers accessed in non mapped memory area (rmap=0) page independent
//
//*******************************************************************************

__sfr __at (0xd1) adc_page;          //adc page register                 reset=000h

//*******************************************************************************
//
// adc registers accessed in non mapped memory area (rmap=0) page 0
//
//*******************************************************************************

__sfr __at (0xca) adc_globctr;          //global control register           reset=030h
__sfr __at (0xcb) adc_globstr;          //global status register            reset=000h
__sfr __at (0xcc) adc_prar;          //priority and arbitration          reset=000h
__sfr __at (0xcd) adc_lcbr;          //limit check boundary              reset=0b7h
__sfr __at (0xce) adc_inpcr0;          //input class 0 register            reset=000h
__sfr __at (0xcf) adc_etrcr;          //external trigger control          reset=000h

//*******************************************************************************
//
// adc registers accessed in non mapped memory area (rmap=0) page 1
//
//*******************************************************************************

__sfr __at (0xca) adc_chctr0;          //channel control register          reset=000h
__sfr __at (0xcb) adc_chctr1;          //channel control register          reset=000h
__sfr __at (0xcc) adc_chctr2;          //channel control register          reset=000h
__sfr __at (0xcd) adc_chctr3;          //channel control register          reset=000h
__sfr __at (0xce) adc_chctr4;          //channel control register          reset=000h
__sfr __at (0xcf) adc_chctr5;          //channel control register          reset=000h
__sfr __at (0xd2) adc_chctr6;          //channel control register          reset=000h
__sfr __at (0xd3) adc_chctr7;          //channel control register          reset=000h

//*******************************************************************************
//
// adc registers accessed in non mapped memory area (rmap=0) page 2
//
//*******************************************************************************

__sfr __at (0xca) adc_resr0l;          //result register 0 low             reset=000h
__sfr __at (0xcb) adc_resr0h;          //result register 0 high            reset=000h
__sfr __at (0xcc) adc_resr1l;          //result register 1 low             reset=000h
__sfr __at (0xcd) adc_resr1h;          //result register 1 high            reset=000h
__sfr __at (0xce) adc_resr2l;          //result register 2 low             reset=000h
__sfr __at (0xcf) adc_resr2h;          //result register 2 high            reset=000h
__sfr __at (0xd2) adc_resr3l;          //result register 3 low             reset=000h
__sfr __at (0xd3) adc_resr3h;          //result register 3 high            reset=000h

//*******************************************************************************
//
// adc registers accessed in non mapped memory area (rmap=0) page 3
//
//*******************************************************************************

__sfr __at (0xca) adc_resra0l;          //result register 0 l view          reset=000h
__sfr __at (0xcb) adc_resra0h;          //result register 0 h view          reset=000h
__sfr __at (0xcc) adc_resra1l;          //result register 1 l view          reset=000h
__sfr __at (0xcd) adc_resra1h;          //result register 1 h view          reset=000h
__sfr __at (0xce) adc_resra2l;          //result register 2 l view          reset=000h
__sfr __at (0xcf) adc_resra2h;          //result register 2 h view          reset=000h
__sfr __at (0xd2) adc_resra3l;          //result register 3 l view          reset=000h
__sfr __at (0xd3) adc_resra3h;          //result register 3 h view          reset=000h

//*******************************************************************************
//
// adc registers accessed in non mapped memory area (rmap=0) page 4
//
//*******************************************************************************

__sfr __at (0xca) adc_rcr0;          //result control register           reset=000h
__sfr __at (0xcb) adc_rcr1;          //result control register           reset=000h
__sfr __at (0xcc) adc_rcr2;          //result control register           reset=000h
__sfr __at (0xcd) adc_rcr3;          //result control register           reset=000h
__sfr __at (0xce) adc_vfcr;          //valid flag clear register         reset=000h

//*******************************************************************************
//
// adc registers accessed in non mapped memory area (rmap=0) page 5
//
//*******************************************************************************

__sfr __at (0xca) adc_chinfr;          //channel interrupt flag register   reset=000h
__sfr __at (0xcb) adc_chincr;          //channel interrupt clear register  reset=000h
__sfr __at (0xcc) adc_chinsr;          //channel interrupt set register    reset=000h
__sfr __at (0xcd) adc_chinpr;          //channel interrupt node pointrer   reset=000h
__sfr __at (0xce) adc_evinfr;          //event interrupt flag register     reset=000h
__sfr __at (0xcf) adc_evincr;          //event interrupt clear flag reg.   reset=000h
__sfr __at (0xd2) adc_evinsr;          //event interrupt set flag register reset=000h
__sfr __at (0xd3) adc_evinpr;          //event interrupt node pointer reg. reset=000h      

//*******************************************************************************
//
// adc registers accessed in non mapped memory area (rmap=0) page 6
//
//*******************************************************************************

__sfr __at (0xca) adc_crcr1;          //conversion request control        reset=000h
__sfr __at (0xcb) adc_crpr1;          //conversion request pending        reset=000h
__sfr __at (0xcc) adc_crmr1;          //conversion request mode           reset=000h
__sfr __at (0xcd) adc_qmr0;          //queue mode                        reset=000h
__sfr __at (0xce) adc_qsr0;          //queue status register             reset=020h
__sfr __at (0xcf) adc_q0r0;          //queue 0 register 0                reset=000h
__sfr __at (0xd3) adc_qbur0;          //queue backup register             reset=000h
__sfr __at (0xd2) adc_qinr0;          //queue input register              reset=000h

//*******************************************************************************

// timer 2 registers accessed in non mapped memory area (rmap=0)
//
//*******************************************************************************

__sfr __at (0xc0) t2_t2con;          //timer 2 control register          reset=000h
//t2_t2con is bit addressable
     __sbit __at (0xc7) tf2;   
     __sbit __at (0xc6) exf2;
                                   //2 bits are not implemented
     __sbit __at (0xc3) exen2;
     __sbit __at (0xc2) tr2;
     __sbit __at (0xc1) ct2;
     __sbit __at (0xc0) cprl2;

__sfr __at (0xc1) t2_t2mod;          //timer 2 mode register             reset=000h
__sfr __at (0xc2) t2_rc2l;          //timer 2 reload/capture low        reset=000h
__sfr __at (0xc3) t2_rc2h;          //timer 2 rel/cap high              reset=000h
__sfr __at (0xc4) t2_t2l;          //timer 2 register low              reset=000h
__sfr __at (0xc5) t2_t2h;          //timer 2 register high             reset=000h

//*******************************************************************************
//
// ccu6 registers are accessed in non mapped memory (rmap=0) page independent
//
//*******************************************************************************

__sfr __at (0xa3) ccu6_page;          //ccu6 page register                reset=000h

//*******************************************************************************
//
// ccu6 registers are accessed in non mapped memory (rmap=0) page 0
//
//*******************************************************************************

__sfr __at (0x9a) ccu6_cc63srl;          //cap/comp shadow channel 63        reset=000h
__sfr __at (0x9b) ccu6_cc63srh;          //cap/comp shadow channel 63        reset=000h
__sfr __at (0x9c) ccu6_tctr4l;          //timer control low                 reset=000h
__sfr __at (0x9d) ccu6_tctr4h;          //timer control high                reset=000h
__sfr __at (0x9e) ccu6_mcmoutsl;          //multichannel mode output shadow   reset=000h
__sfr __at (0x9f) ccu6_mcmoutsh;          //multichannel mode output shadow   reset=000h
__sfr __at (0xa4) ccu6_isrl;          //cap/com interrupt status          reset=000h
__sfr __at (0xa5) ccu6_isrh;          //cap/com interrupt status          reset=000h
__sfr __at (0xa6) ccu6_cmpmodifl;   //compare state modification reg.   reset=000h
__sfr __at (0xa7) ccu6_cmpmodifh;   //compare state modification reg.   reset=000h
__sfr __at (0xfa) ccu6_cc60srl;          //cap/comp shadow channel 60        reset=000h
__sfr __at (0xfb) ccu6_cc60srh;          //cap/comp shadow channel 60        reset=000h
__sfr __at (0xfc) ccu6_cc61srl;          //cap/comp shadow channel 61        reset=000h
__sfr __at (0xfd) ccu6_cc61srh;          //cap/comp shadow channel 61        reset=000h
__sfr __at (0xfe) ccu6_cc62srl;          //cap/comp shadow channel 62        reset=000h
__sfr __at (0xff) ccu6_cc62srh;          //cap/comp shadow channel 62        reset=000h

//*******************************************************************************
//
// ccu6 registers are accessed in non mapped memory (rmap=0) page 1
//
//*******************************************************************************

__sfr __at (0x9a) ccu6_cc63rl;          //cap/comp register channel 63      reset=000h
__sfr __at (0x9b) ccu6_cc63rh;          //cap/comp register channel 63      reset=000h
__sfr __at (0x9c) ccu6_t12prl;          //timer 12 period register          reset=000h
__sfr __at (0x9d) ccu6_t12prh;          //timer 12 period register          reset=000h
__sfr __at (0x9e) ccu6_t13prl;          //timer 13 period register          reset=000h
__sfr __at (0x9f) ccu6_t13prh;          //timer 13 period register          reset=000h
__sfr __at (0xa4) ccu6_t12dtcl;          //timer 12 dead time control        reset=000h
__sfr __at (0xa5) ccu6_t12dtch;          //timer 12 dead time control        reset=000h
__sfr __at (0xa6) ccu6_tctr0l;          //timer control                     reset=000h
__sfr __at (0xa7) ccu6_tctr0h;          //timer control                     reset=000h
__sfr __at (0xfa) ccu6_cc60rl;          //cap/comp register channel 60      reset=000h
__sfr __at (0xfb) ccu6_cc60rh;          //cap/comp register channel 60      reset=000h
__sfr __at (0xfc) ccu6_cc61rl;          //cap/comp register channel 61      reset=000h
__sfr __at (0xfd) ccu6_cc61rh;          //cap/comp register channel 61      reset=000h
__sfr __at (0xfe) ccu6_cc62rl;          //cap/comp register channel 62      reset=000h
__sfr __at (0xff) ccu6_cc62rh;          //cap/comp register channel 62      reset=000h

//*******************************************************************************
//
// ccu6 registers are accessed in non mapped memory (rmap=0) page 2
//
//*******************************************************************************

__sfr __at (0x9a) ccu6_t12msell;          //t12 cap/comp mode select          reset=000h
__sfr __at (0x9b) ccu6_t12mselh;          //t12 cap/comp mode select          reset=000h
__sfr __at (0x9c) ccu6_ienl;          //cap/comp interrupt enable         reset=000h
__sfr __at (0x9d) ccu6_ienh;          //cap/comp interrupt enable         reset=000h
__sfr __at (0x9e) ccu6_inpl;          //cap/comp interrupt node pointer   reset=040h
__sfr __at (0x9f) ccu6_inph;          //cap/comp interrupt node pointer   reset=039h
__sfr __at (0xa4) ccu6_issl;          //cap/comp interruopt status        reset=000h
__sfr __at (0xa5) ccu6_issh;          //cap/comp interruopt status        reset=000h
__sfr __at (0xa6) ccu6_pslr;          //passive state level register      reset=000h
__sfr __at (0xa7) ccu6_mcmctr;          //multi channel mode control        reset=000h
__sfr __at (0xfa) ccu6_tctr2l;          //timer control register            reset=000h
__sfr __at (0xfb) ccu6_tctr2h;          //timer control register            reset=000h
__sfr __at (0xfc) ccu6_modctrl;          //modulation control                reset=000h
__sfr __at (0xfd) ccu6_modctrh;          //modulation control                reset=000h
__sfr __at (0xfe) ccu6_trpctrl;          //trap control register             reset=000h
__sfr __at (0xff) ccu6_trpctrh;          //trap control register             reset=000h

//*******************************************************************************
//
// ccu6 registers are accessed in non mapped memory (rmap=0) page 3
//
//*******************************************************************************

__sfr __at (0x9a) ccu6_mcmoutl;          //multi channel mode output         reset=000h
__sfr __at (0x9b) ccu6_mcmouth;          //multi channel mode output         reset=000h
__sfr __at (0x9c) ccu6_isl;          //cap/comp interrupt status         reset=000h
__sfr __at (0x9d) ccu6_ish;          //cap/comp interrupt status         reset=000h
__sfr __at (0x9e) ccu6_pisel0l;          //port input selection register     reset=000h
__sfr __at (0x9f) ccu6_pisel0h;          //port input selection register     reset=000h
__sfr __at (0xa4) ccu6_pisel2;          //port input selection register     reset=000h
__sfr __at (0xfa) ccu6_t12l;          //timer 12 register                 reset=000h
__sfr __at (0xfb) ccu6_t12h;          //timer 12 register                 reset=000h
__sfr __at (0xfc) ccu6_t13l;          //timer 13 register                 reset=000h
__sfr __at (0xfd) ccu6_t13h;          //timer 13 register                 reset=000h
__sfr __at (0xfe) ccu6_cmpstatl;          //compare state register            reset=000h
__sfr __at (0xff) ccu6_cmpstath;          //compare state register            reset=000h

//*******************************************************************************
//
// ssc registers can be accessed in the standard memory map (rmap=0)
//
//*******************************************************************************

__sfr __at (0xa9) ssc_pisel;          //port input select                 reset=000h
__sfr __at (0xaa) ssc_conl;          //control register programming mode reset=000h
__sfr __at (0xab) ssc_conh;          //control register programming mode reset=000h
__sfr __at (0xac) ssc_tbl;          //transmitter buffer                reset=000h
__sfr __at (0xad) ssc_rbl;          //receiver buffer                   reset=000h
__sfr __at (0xae) ssc_brl;          //baud rate timer                   reset=000h
__sfr __at (0xaf) ssc_brh;          //baud rate timer                   reset=000h

//*******************************************************************************
//
// can registers can be accessed in the standard memory map (rmap=0)
//
//*******************************************************************************

__sfr __at (0xd8) adcon;          //adres/data control                reset=000h
// adcon is bit addressable
     __sbit __at (0xdf) v3;
     __sbit __at (0xde) v2;
     __sbit __at (0xdd) v1;
     __sbit __at (0xdc) v0;
     __sbit __at (0xdb) auad1;
     __sbit __at (0xda) auad0;
     __sbit __at (0xd9) can_bsy;
     __sbit __at (0xd8) rwen;

__sfr __at (0xd9) adl;          //adres register low                reset=000h
__sfr __at (0xda) adh;          //adres register low                reset=000h
__sfr __at (0xdb) data0;          //can data                          reset=000h
__sfr __at (0xdc) data1;          //can data                          reset=000h
__sfr __at (0xdd) data2;          //can data                          reset=000h
__sfr __at (0xde) data3;          //can data                          reset=000h

//*******************************************************************************
//
// mdu registers can only be accessed in the mapped memory area (rmap=1)
//
//*******************************************************************************

__sfr __at (0xb0) mdustat;          //mdu status register               reset=000h
//mdustat is bit addressable
                                   //5 bits are not implemented
     __sbit __at (0xb2) bsy;
     __sbit __at (0xb1) ierr;
     __sbit __at (0xb0) irdy;

__sfr __at (0xb1) mducon;          //mdu control                       reset=000h
__sfr __at (0xb2) md0;          //mdu operand register              reset=000h
__sfr __at (0xb2) mr0;          //mdu result register               reset=000h
__sfr __at (0xb3) md1;          //mdu operand register              reset=000h
__sfr __at (0xb3) mr1;          //mdu result register               reset=000h
__sfr __at (0xb4) md2;          //mdu operand register              reset=000h
__sfr __at (0xb4) mr2;          //mdu result register               reset=000h
__sfr __at (0xb5) md3;          //mdu operand register              reset=000h
__sfr __at (0xb5) mr3;          //mdu result register               reset=000h
__sfr __at (0xb6) md4;          //mdu operand register              reset=000h
__sfr __at (0xb6) mr4;          //mdu result register               reset=000h
__sfr __at (0xb7) md5;          //mdu operand register              reset=000h
__sfr __at (0xb7) mr5;          //mdu result register               reset=000h

//*******************************************************************************
//
// cordic registers can only be accessed in the mapped memory area (rmap=1)
//
//*******************************************************************************

__sfr __at (0x9a) cd_cordxl;          //cordic x data low                 reset=000h
__sfr __at (0x9b) cd_cordxh;          //cordic x data high                reset=000h
__sfr __at (0x9c) cd_cordyl;          //cordic y data low                 reset=000h
__sfr __at (0x9d) cd_cordyh;          //cordic y data high                reset=000h
__sfr __at (0x9e) cd_cordzl;          //cordic z data low                 reset=000h
__sfr __at (0x9f) cd_cordzh;          //cordic z data high                reset=000h
__sfr __at (0xa0) cd_statc;          //cordic status and control         reset=000h
//cd_statc is bit addressable
     __sbit __at (0xa7) keepz;
     __sbit __at (0xa6) keepy;
     __sbit __at (0xa5) keepx;
     __sbit __at (0xa4) dmap;
     __sbit __at (0xa3) int_en;
     __sbit __at (0xa2) eoc;
     __sbit __at (0xa1) error;
     __sbit __at (0xa0) cd_bsy;

__sfr __at (0xa1) cd_con;          //cordic control register           reset=000h

//*******************************************************************************
//
// wdt registers can be accessed in the mapped memory area (rmap=1)
//
//*******************************************************************************

__sfr __at (0xbb) wdtcon;          //watchdog timer control            reset=000h
__sfr __at (0xbc) wdtrel;          //watchdog timer reload             reset=000h
__sfr __at (0xbd) wdtwinb;          //wdt window boundry count          reset=000h
__sfr __at (0xbe) wdtl;          //wdt register low                  reset=000h
__sfr __at (0xbf) wdth;          //wdt register high                 reset=000h

//*******************************************************************************
//
// t21 registers can be accessed in the mapped memory area (rmap=1)
//
//*******************************************************************************

__sfr __at (0xc0) t21_t2con;          //timer 21 control register         reset=000h
//t2_t2con is bit addressable bits are aalready defined
       //tf2    bit    0c7h   
       //exf2   bit    0c6h
                                   //2 bits are not implemented
       //exen2  bit    0c3h
       //tr2    bit    0c2h
       //ct2    bit    0c1h
       //cprl2  bit    0c0h

__sfr __at (0xc1) t21_t2mod;          //timer 21 mode register           reset=000h
__sfr __at (0xc2) t21_rc2l;          //timer 21 rel/cap low             reset=000h
__sfr __at (0xc3) t21_rc2h;          //timer 21 rel/cap high            reset=000h
__sfr __at (0xc4) t21_t2l;          //timer 21 register low            reset=000h
__sfr __at (0xc5) t21_t2h;          //timer 21 register high           reset=000h

//*******************************************************************************
//
// uart1 registers can be accessed in the mapped memory area (rmap=1)
//
//*******************************************************************************

__sfr __at (0xc8) scon1;          //sirial channel 1 control          reset=000h
//s1con is bit addressable
     __sbit __at (0xcf) sm01;
     __sbit __at (0xce) sm11;
     __sbit __at (0xcd) sm21;
     __sbit __at (0xcc) ren1;
     __sbit __at (0xcb) tb81;
     __sbit __at (0xca) rb81;
     __sbit __at (0xc9) ti1;
     __sbit __at (0xc8) ri1;
       
__sfr __at (0xc9) sbuf1;          //serial channel 1 data             reset=000h
__sfr __at (0xca) bcon1;          //baud rate control register        reset=000h
__sfr __at (0xcb) bg1;          //baud rate timer reload            reset=000h
__sfr __at (0xcc) fdcon1;          //fractional devider control        reset=000h
__sfr __at (0xcd) fdstep1;          //fractional devider reload         reset=000h
__sfr __at (0xce) fdres1;          //fractional devider result         reset=000h

//*******************************************************************************
//
// ocds registers can be accessed in mapped memory area (rmap=1)
//
//*******************************************************************************

__sfr __at (0xe9) mmcr2;          //monitor mode control              reset=01-h
__sfr __at (0xf1) mmcr;          //monitor control                   reset=000h
__sfr __at (0xf2) mmsr;          //monitor mode status               reset=000h
__sfr __at (0xf3) mmbpcr;          //breakpoints control register      reset=000h
__sfr __at (0xf4) mmicr;          //monitor mode interrupt control    reset=000h
__sfr __at (0xf5) mmdr;          //monitor mode data transfer        reset=000h
__sfr __at (0xf6) hwbpsr;          //hardware breakpoints select       reset=000h
__sfr __at (0xf7) hwbpdr;          //hardware breakpoints data         reset=000h
__sfr __at (0xeb) mmwr1;          //monitor work register 1           reset=000h
__sfr __at (0xec) mmwr2;          //monitor work register 2           reset=000h