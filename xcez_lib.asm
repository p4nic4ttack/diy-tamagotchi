;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module xcez_lib
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _getchar_c
	.globl _putchar_c
	.globl _rand
	.globl _ri1
	.globl _ti1
	.globl _rb81
	.globl _tb81
	.globl _ren1
	.globl _sm21
	.globl _sm11
	.globl _sm01
	.globl _cd_bsy
	.globl _error
	.globl _eoc
	.globl _int_en
	.globl _dmap
	.globl _keepx
	.globl _keepy
	.globl _keepz
	.globl _irdy
	.globl _ierr
	.globl _bsy
	.globl _rwen
	.globl _can_bsy
	.globl _auad0
	.globl _auad1
	.globl _v0
	.globl _v1
	.globl _v2
	.globl _v3
	.globl _cprl2
	.globl _ct2
	.globl _tr2
	.globl _exen2
	.globl _exf2
	.globl _tf2
	.globl _p4_od_0
	.globl _p4_od_1
	.globl _p4_od_2
	.globl _p4_od_3
	.globl _p4_od_4
	.globl _p4_od_5
	.globl _p4_od_6
	.globl _p4_od_7
	.globl _p3_od_0
	.globl _p3_od_1
	.globl _p3_od_2
	.globl _p3_od_3
	.globl _p3_od_4
	.globl _p3_od_5
	.globl _p3_od_6
	.globl _p3_od_7
	.globl _p1_od_0
	.globl _p1_od_1
	.globl _p1_od_2
	.globl _p1_od_3
	.globl _p1_od_4
	.globl _p1_od_5
	.globl _p1_od_6
	.globl _p1_od_7
	.globl _p0_od_0
	.globl _p0_od_1
	.globl _p0_od_2
	.globl _p0_od_3
	.globl _p0_od_4
	.globl _p0_od_5
	.globl _p0_od_6
	.globl _p0_od_7
	.globl _p4_altsel0_0
	.globl _p4_altsel0_1
	.globl _p4_altsel0_2
	.globl _p4_altsel0_3
	.globl _p4_altsel0_4
	.globl _p4_altsel0_5
	.globl _p4_altsel0_6
	.globl _p4_altsel0_7
	.globl _p3_altsel0_0
	.globl _p3_altsel0_1
	.globl _p3_altsel0_2
	.globl _p3_altsel0_3
	.globl _p3_altsel0_4
	.globl _p3_altsel0_5
	.globl _p3_altsel0_6
	.globl _p3_altsel0_7
	.globl _p1_altsel0_0
	.globl _p1_altsel0_1
	.globl _p1_altsel0_2
	.globl _p1_altsel0_3
	.globl _p1_altsel0_4
	.globl _p1_altsel0_5
	.globl _p1_altsel0_6
	.globl _p1_altsel0_7
	.globl _p0_altsel0_0
	.globl _p0_altsel0_1
	.globl _p0_altsel0_2
	.globl _p0_altsel0_3
	.globl _p0_altsel0_4
	.globl _p0_altsel0_5
	.globl _p0_altsel0_6
	.globl _p0_altsel0_7
	.globl _p4_pudsel_0
	.globl _p4_pudsel_1
	.globl _p4_pudsel_2
	.globl _p4_pudsel_3
	.globl _p4_pudsel_4
	.globl _p4_pudsel_5
	.globl _p4_pudsel_6
	.globl _p4_pudsel_7
	.globl _p3_pudsel_0
	.globl _p3_pudsel_1
	.globl _p3_pudsel_2
	.globl _p3_pudsel_3
	.globl _p3_pudsel_4
	.globl _p3_pudsel_5
	.globl _p3_pudsel_6
	.globl _p3_pudsel_7
	.globl _p2_pudsel_0
	.globl _p2_pudsel_1
	.globl _p2_pudsel_2
	.globl _p2_pudsel_3
	.globl _p2_pudsel_4
	.globl _p2_pudsel_5
	.globl _p2_pudsel_6
	.globl _p2_pudsel_7
	.globl _p1_pudsel_0
	.globl _p1_pudsel_1
	.globl _p1_pudsel_2
	.globl _p1_pudsel_3
	.globl _p1_pudsel_4
	.globl _p1_pudsel_5
	.globl _p1_pudsel_6
	.globl _p1_pudsel_7
	.globl _p0_pudsel_0
	.globl _p0_pudsel_1
	.globl _p0_pudsel_2
	.globl _p0_pudsel_3
	.globl _p0_pudsel_4
	.globl _p0_pudsel_5
	.globl _p0_pudsel_6
	.globl _p0_pudsel_7
	.globl _p4_data_0
	.globl _p4_data_1
	.globl _p4_data_2
	.globl _p4_data_3
	.globl _p4_data_4
	.globl _p4_data_5
	.globl _p4_data_6
	.globl _p4_data_7
	.globl _p3_data_0
	.globl _p3_data_1
	.globl _p3_data_2
	.globl _p3_data_3
	.globl _p3_data_4
	.globl _p3_data_5
	.globl _p3_data_6
	.globl _p3_data_7
	.globl _p2_data_0
	.globl _p2_data_1
	.globl _p2_data_2
	.globl _p2_data_3
	.globl _p2_data_4
	.globl _p2_data_5
	.globl _p2_data_6
	.globl _p2_data_7
	.globl _p1_data_0
	.globl _p1_data_1
	.globl _p1_data_2
	.globl _p1_data_3
	.globl _p1_data_4
	.globl _p1_data_5
	.globl _p1_data_6
	.globl _p1_data_7
	.globl _p0_data_0
	.globl _p0_data_1
	.globl _p0_data_2
	.globl _p0_data_3
	.globl _p0_data_4
	.globl _p0_data_5
	.globl _p0_data_6
	.globl _p0_data_7
	.globl _padc
	.globl _pssc
	.globl _px2
	.globl _pxm
	.globl _pccip0
	.globl _pccip1
	.globl _pccip2
	.globl _pccip3
	.globl _eadc
	.globl _essc
	.globl _ex2
	.globl _exm
	.globl _eccip0
	.globl _eccip1
	.globl _eccip2
	.globl _eccip3
	.globl _p
	.globl _f1
	.globl _ov
	.globl _rs0
	.globl _rs1
	.globl _f0
	.globl _ac
	.globl _cy
	.globl _px0
	.globl _pt0
	.globl _px1
	.globl _pt1
	.globl _ps
	.globl _pt2
	.globl _ex0
	.globl _et0
	.globl _ex1
	.globl _et1
	.globl _es
	.globl _et2
	.globl _ea
	.globl _ri
	.globl _ti
	.globl _rb8
	.globl _tb8
	.globl _ren
	.globl _sm2
	.globl _sm1
	.globl _sm0
	.globl _it0
	.globl _ie0
	.globl _it1
	.globl _ie1
	.globl _tr0
	.globl _tf0
	.globl _tr1
	.globl _tf1
	.globl _mmwr2
	.globl _mmwr1
	.globl _hwbpdr
	.globl _hwbpsr
	.globl _mmdr
	.globl _mmicr
	.globl _mmbpcr
	.globl _mmsr
	.globl _mmcr
	.globl _mmcr2
	.globl _fdres1
	.globl _fdstep1
	.globl _fdcon1
	.globl _bg1
	.globl _bcon1
	.globl _sbuf1
	.globl _scon1
	.globl _t21_t2h
	.globl _t21_t2l
	.globl _t21_rc2h
	.globl _t21_rc2l
	.globl _t21_t2mod
	.globl _t21_t2con
	.globl _wdth
	.globl _wdtl
	.globl _wdtwinb
	.globl _wdtrel
	.globl _wdtcon
	.globl _cd_con
	.globl _cd_statc
	.globl _cd_cordzh
	.globl _cd_cordzl
	.globl _cd_cordyh
	.globl _cd_cordyl
	.globl _cd_cordxh
	.globl _cd_cordxl
	.globl _mr5
	.globl _md5
	.globl _mr4
	.globl _md4
	.globl _mr3
	.globl _md3
	.globl _mr2
	.globl _md2
	.globl _mr1
	.globl _md1
	.globl _mr0
	.globl _md0
	.globl _mducon
	.globl _mdustat
	.globl _data3
	.globl _data2
	.globl _data1
	.globl _data0
	.globl _adh
	.globl _adl
	.globl _adcon
	.globl _ssc_brh
	.globl _ssc_brl
	.globl _ssc_rbl
	.globl _ssc_tbl
	.globl _ssc_conh
	.globl _ssc_conl
	.globl _ssc_pisel
	.globl _ccu6_cmpstath
	.globl _ccu6_cmpstatl
	.globl _ccu6_t13h
	.globl _ccu6_t13l
	.globl _ccu6_t12h
	.globl _ccu6_t12l
	.globl _ccu6_pisel2
	.globl _ccu6_pisel0h
	.globl _ccu6_pisel0l
	.globl _ccu6_ish
	.globl _ccu6_isl
	.globl _ccu6_mcmouth
	.globl _ccu6_mcmoutl
	.globl _ccu6_trpctrh
	.globl _ccu6_trpctrl
	.globl _ccu6_modctrh
	.globl _ccu6_modctrl
	.globl _ccu6_tctr2h
	.globl _ccu6_tctr2l
	.globl _ccu6_mcmctr
	.globl _ccu6_pslr
	.globl _ccu6_issh
	.globl _ccu6_issl
	.globl _ccu6_inph
	.globl _ccu6_inpl
	.globl _ccu6_ienh
	.globl _ccu6_ienl
	.globl _ccu6_t12mselh
	.globl _ccu6_t12msell
	.globl _ccu6_cc62rh
	.globl _ccu6_cc62rl
	.globl _ccu6_cc61rh
	.globl _ccu6_cc61rl
	.globl _ccu6_cc60rh
	.globl _ccu6_cc60rl
	.globl _ccu6_tctr0h
	.globl _ccu6_tctr0l
	.globl _ccu6_t12dtch
	.globl _ccu6_t12dtcl
	.globl _ccu6_t13prh
	.globl _ccu6_t13prl
	.globl _ccu6_t12prh
	.globl _ccu6_t12prl
	.globl _ccu6_cc63rh
	.globl _ccu6_cc63rl
	.globl _ccu6_cc62srh
	.globl _ccu6_cc62srl
	.globl _ccu6_cc61srh
	.globl _ccu6_cc61srl
	.globl _ccu6_cc60srh
	.globl _ccu6_cc60srl
	.globl _ccu6_cmpmodifh
	.globl _ccu6_cmpmodifl
	.globl _ccu6_isrh
	.globl _ccu6_isrl
	.globl _ccu6_mcmoutsh
	.globl _ccu6_mcmoutsl
	.globl _ccu6_tctr4h
	.globl _ccu6_tctr4l
	.globl _ccu6_cc63srh
	.globl _ccu6_cc63srl
	.globl _ccu6_page
	.globl _t2_t2h
	.globl _t2_t2l
	.globl _t2_rc2h
	.globl _t2_rc2l
	.globl _t2_t2mod
	.globl _t2_t2con
	.globl _adc_qinr0
	.globl _adc_qbur0
	.globl _adc_q0r0
	.globl _adc_qsr0
	.globl _adc_qmr0
	.globl _adc_crmr1
	.globl _adc_crpr1
	.globl _adc_crcr1
	.globl _adc_evinpr
	.globl _adc_evinsr
	.globl _adc_evincr
	.globl _adc_evinfr
	.globl _adc_chinpr
	.globl _adc_chinsr
	.globl _adc_chincr
	.globl _adc_chinfr
	.globl _adc_vfcr
	.globl _adc_rcr3
	.globl _adc_rcr2
	.globl _adc_rcr1
	.globl _adc_rcr0
	.globl _adc_resra3h
	.globl _adc_resra3l
	.globl _adc_resra2h
	.globl _adc_resra2l
	.globl _adc_resra1h
	.globl _adc_resra1l
	.globl _adc_resra0h
	.globl _adc_resra0l
	.globl _adc_resr3h
	.globl _adc_resr3l
	.globl _adc_resr2h
	.globl _adc_resr2l
	.globl _adc_resr1h
	.globl _adc_resr1l
	.globl _adc_resr0h
	.globl _adc_resr0l
	.globl _adc_chctr7
	.globl _adc_chctr6
	.globl _adc_chctr5
	.globl _adc_chctr4
	.globl _adc_chctr3
	.globl _adc_chctr2
	.globl _adc_chctr1
	.globl _adc_chctr0
	.globl _adc_etrcr
	.globl _adc_inpcr0
	.globl _adc_lcbr
	.globl _adc_prar
	.globl _adc_globstr
	.globl _adc_globctr
	.globl _adc_page
	.globl _p5_od
	.globl _p4_od
	.globl _p3_od
	.globl _p1_od
	.globl _p0_od
	.globl _p5_altsel1
	.globl _p5_altsel0
	.globl _p4_altsel1
	.globl _p4_altsel0
	.globl _p3_altsel1
	.globl _p3_altsel0
	.globl _p1_altsel1
	.globl _p1_altsel0
	.globl _p0_altsel1
	.globl _p0_altsel0
	.globl _p5_puden
	.globl _p5_pudsel
	.globl _p4_puden
	.globl _p4_pudsel
	.globl _p3_puden
	.globl _p3_pudsel
	.globl _p2_puden
	.globl _p2_pudsel
	.globl _p1_puden
	.globl _p1_pudsel
	.globl _p0_puden
	.globl _p0_pudsel
	.globl _p5_dir
	.globl _p5_data
	.globl _p4_dir
	.globl _p4_data
	.globl _p3_dir
	.globl _p3_data
	.globl _p2_dir
	.globl _p2_data
	.globl _p1_dir
	.globl _p1_data
	.globl _p0_dir
	.globl _p0_data
	.globl _port_page
	.globl _modsusp
	.globl _pmcon2
	.globl _modpisel2
	.globl _modpisel1
	.globl _ircon4
	.globl _ircon3
	.globl _xaddrh
	.globl _misc_con
	.globl _cocon
	.globl _feah
	.globl _feal
	.globl _passwd
	.globl _cmcon
	.globl _pll_con
	.globl _osc_con
	.globl _pmcon1
	.globl _pmcon0
	.globl _id
	.globl _fdres
	.globl _fdstep
	.globl _fdcon
	.globl _bg
	.globl _bcon
	.globl _nmisr
	.globl _nmicon
	.globl _exicon1
	.globl _exicon0
	.globl _ircon2
	.globl _ircon1
	.globl _ircon0
	.globl _modpisel
	.globl _scu_page
	.globl _iph1
	.globl _ip1
	.globl _b
	.globl _ien1
	.globl _acc
	.globl _psw
	.globl _iph
	.globl _ip
	.globl _ien0
	.globl _eo
	.globl _sbuf
	.globl _scon
	.globl _syscon0
	.globl _th1
	.globl _th0
	.globl _tl1
	.globl _tl0
	.globl _tmod
	.globl _tcon
	.globl _pcon
	.globl _dph
	.globl _dpl
	.globl _sp
	.globl _OutputMux
	.globl _initspi_PARM_3
	.globl _initspi_PARM_2
	.globl _pwmset_PARM_2
	.globl _out_PARM_2
	.globl _get_random_between_PARM_2
	.globl _hex2bcd
	.globl _get_random_between
	.globl _hexbcd8
	.globl _delay10us
	.globl _delay1ms
	.globl _delay
	.globl _initsio
	.globl _initiic
	.globl _iicstart
	.globl _iicstop
	.globl _iicoutbyte
	.globl _iicinbyte
	.globl _out
	.globl _lcdlight
	.globl _lcdbuzzer
	.globl _initlcd
	.globl _lcdputchar
	.globl _lcdbuild
	.globl _initleds
	.globl _init_buttons
	.globl _initftoetsen
	.globl _initdipswitch
	.globl _initadcs
	.globl _getadc
	.globl _adcpotmeter
	.globl _adclm335
	.globl _initpwm
	.globl _pwmset
	.globl _initspi
	.globl _spioutbyte
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$sp$0_0$0 == 0x0081
_sp	=	0x0081
G$dpl$0_0$0 == 0x0082
_dpl	=	0x0082
G$dph$0_0$0 == 0x0083
_dph	=	0x0083
G$pcon$0_0$0 == 0x0087
_pcon	=	0x0087
G$tcon$0_0$0 == 0x0088
_tcon	=	0x0088
G$tmod$0_0$0 == 0x0089
_tmod	=	0x0089
G$tl0$0_0$0 == 0x008a
_tl0	=	0x008a
G$tl1$0_0$0 == 0x008b
_tl1	=	0x008b
G$th0$0_0$0 == 0x008c
_th0	=	0x008c
G$th1$0_0$0 == 0x008d
_th1	=	0x008d
G$syscon0$0_0$0 == 0x008f
_syscon0	=	0x008f
G$scon$0_0$0 == 0x0098
_scon	=	0x0098
G$sbuf$0_0$0 == 0x0099
_sbuf	=	0x0099
G$eo$0_0$0 == 0x00a2
_eo	=	0x00a2
G$ien0$0_0$0 == 0x00a8
_ien0	=	0x00a8
G$ip$0_0$0 == 0x00b8
_ip	=	0x00b8
G$iph$0_0$0 == 0x00b9
_iph	=	0x00b9
G$psw$0_0$0 == 0x00d0
_psw	=	0x00d0
G$acc$0_0$0 == 0x00e0
_acc	=	0x00e0
G$ien1$0_0$0 == 0x00e8
_ien1	=	0x00e8
G$b$0_0$0 == 0x00f0
_b	=	0x00f0
G$ip1$0_0$0 == 0x00f8
_ip1	=	0x00f8
G$iph1$0_0$0 == 0x00f9
_iph1	=	0x00f9
G$scu_page$0_0$0 == 0x00bf
_scu_page	=	0x00bf
G$modpisel$0_0$0 == 0x00b3
_modpisel	=	0x00b3
G$ircon0$0_0$0 == 0x00b4
_ircon0	=	0x00b4
G$ircon1$0_0$0 == 0x00b5
_ircon1	=	0x00b5
G$ircon2$0_0$0 == 0x00b6
_ircon2	=	0x00b6
G$exicon0$0_0$0 == 0x00b7
_exicon0	=	0x00b7
G$exicon1$0_0$0 == 0x00ba
_exicon1	=	0x00ba
G$nmicon$0_0$0 == 0x00bb
_nmicon	=	0x00bb
G$nmisr$0_0$0 == 0x00bc
_nmisr	=	0x00bc
G$bcon$0_0$0 == 0x00bd
_bcon	=	0x00bd
G$bg$0_0$0 == 0x00be
_bg	=	0x00be
G$fdcon$0_0$0 == 0x00e9
_fdcon	=	0x00e9
G$fdstep$0_0$0 == 0x00ea
_fdstep	=	0x00ea
G$fdres$0_0$0 == 0x00eb
_fdres	=	0x00eb
G$id$0_0$0 == 0x00b3
_id	=	0x00b3
G$pmcon0$0_0$0 == 0x00b4
_pmcon0	=	0x00b4
G$pmcon1$0_0$0 == 0x00b5
_pmcon1	=	0x00b5
G$osc_con$0_0$0 == 0x00b6
_osc_con	=	0x00b6
G$pll_con$0_0$0 == 0x00b7
_pll_con	=	0x00b7
G$cmcon$0_0$0 == 0x00ba
_cmcon	=	0x00ba
G$passwd$0_0$0 == 0x00bb
_passwd	=	0x00bb
G$feal$0_0$0 == 0x00bc
_feal	=	0x00bc
G$feah$0_0$0 == 0x00bd
_feah	=	0x00bd
G$cocon$0_0$0 == 0x00be
_cocon	=	0x00be
G$misc_con$0_0$0 == 0x00e9
_misc_con	=	0x00e9
G$xaddrh$0_0$0 == 0x00b3
_xaddrh	=	0x00b3
G$ircon3$0_0$0 == 0x00b4
_ircon3	=	0x00b4
G$ircon4$0_0$0 == 0x00b5
_ircon4	=	0x00b5
G$modpisel1$0_0$0 == 0x00b7
_modpisel1	=	0x00b7
G$modpisel2$0_0$0 == 0x00ba
_modpisel2	=	0x00ba
G$pmcon2$0_0$0 == 0x00bb
_pmcon2	=	0x00bb
G$modsusp$0_0$0 == 0x00bd
_modsusp	=	0x00bd
G$port_page$0_0$0 == 0x00b2
_port_page	=	0x00b2
G$p0_data$0_0$0 == 0x0080
_p0_data	=	0x0080
G$p0_dir$0_0$0 == 0x0086
_p0_dir	=	0x0086
G$p1_data$0_0$0 == 0x0090
_p1_data	=	0x0090
G$p1_dir$0_0$0 == 0x0091
_p1_dir	=	0x0091
G$p2_data$0_0$0 == 0x00a0
_p2_data	=	0x00a0
G$p2_dir$0_0$0 == 0x00a1
_p2_dir	=	0x00a1
G$p3_data$0_0$0 == 0x00b0
_p3_data	=	0x00b0
G$p3_dir$0_0$0 == 0x00b1
_p3_dir	=	0x00b1
G$p4_data$0_0$0 == 0x00c8
_p4_data	=	0x00c8
G$p4_dir$0_0$0 == 0x00c9
_p4_dir	=	0x00c9
G$p5_data$0_0$0 == 0x0092
_p5_data	=	0x0092
G$p5_dir$0_0$0 == 0x0093
_p5_dir	=	0x0093
G$p0_pudsel$0_0$0 == 0x0080
_p0_pudsel	=	0x0080
G$p0_puden$0_0$0 == 0x0086
_p0_puden	=	0x0086
G$p1_pudsel$0_0$0 == 0x0090
_p1_pudsel	=	0x0090
G$p1_puden$0_0$0 == 0x0091
_p1_puden	=	0x0091
G$p2_pudsel$0_0$0 == 0x00a0
_p2_pudsel	=	0x00a0
G$p2_puden$0_0$0 == 0x00a1
_p2_puden	=	0x00a1
G$p3_pudsel$0_0$0 == 0x00b0
_p3_pudsel	=	0x00b0
G$p3_puden$0_0$0 == 0x00b1
_p3_puden	=	0x00b1
G$p4_pudsel$0_0$0 == 0x00c8
_p4_pudsel	=	0x00c8
G$p4_puden$0_0$0 == 0x00c9
_p4_puden	=	0x00c9
G$p5_pudsel$0_0$0 == 0x0092
_p5_pudsel	=	0x0092
G$p5_puden$0_0$0 == 0x0093
_p5_puden	=	0x0093
G$p0_altsel0$0_0$0 == 0x0080
_p0_altsel0	=	0x0080
G$p0_altsel1$0_0$0 == 0x0086
_p0_altsel1	=	0x0086
G$p1_altsel0$0_0$0 == 0x0090
_p1_altsel0	=	0x0090
G$p1_altsel1$0_0$0 == 0x0091
_p1_altsel1	=	0x0091
G$p3_altsel0$0_0$0 == 0x00b0
_p3_altsel0	=	0x00b0
G$p3_altsel1$0_0$0 == 0x00b1
_p3_altsel1	=	0x00b1
G$p4_altsel0$0_0$0 == 0x00c8
_p4_altsel0	=	0x00c8
G$p4_altsel1$0_0$0 == 0x00c9
_p4_altsel1	=	0x00c9
G$p5_altsel0$0_0$0 == 0x0092
_p5_altsel0	=	0x0092
G$p5_altsel1$0_0$0 == 0x0093
_p5_altsel1	=	0x0093
G$p0_od$0_0$0 == 0x0080
_p0_od	=	0x0080
G$p1_od$0_0$0 == 0x0090
_p1_od	=	0x0090
G$p3_od$0_0$0 == 0x00b0
_p3_od	=	0x00b0
G$p4_od$0_0$0 == 0x00c8
_p4_od	=	0x00c8
G$p5_od$0_0$0 == 0x0092
_p5_od	=	0x0092
G$adc_page$0_0$0 == 0x00d1
_adc_page	=	0x00d1
G$adc_globctr$0_0$0 == 0x00ca
_adc_globctr	=	0x00ca
G$adc_globstr$0_0$0 == 0x00cb
_adc_globstr	=	0x00cb
G$adc_prar$0_0$0 == 0x00cc
_adc_prar	=	0x00cc
G$adc_lcbr$0_0$0 == 0x00cd
_adc_lcbr	=	0x00cd
G$adc_inpcr0$0_0$0 == 0x00ce
_adc_inpcr0	=	0x00ce
G$adc_etrcr$0_0$0 == 0x00cf
_adc_etrcr	=	0x00cf
G$adc_chctr0$0_0$0 == 0x00ca
_adc_chctr0	=	0x00ca
G$adc_chctr1$0_0$0 == 0x00cb
_adc_chctr1	=	0x00cb
G$adc_chctr2$0_0$0 == 0x00cc
_adc_chctr2	=	0x00cc
G$adc_chctr3$0_0$0 == 0x00cd
_adc_chctr3	=	0x00cd
G$adc_chctr4$0_0$0 == 0x00ce
_adc_chctr4	=	0x00ce
G$adc_chctr5$0_0$0 == 0x00cf
_adc_chctr5	=	0x00cf
G$adc_chctr6$0_0$0 == 0x00d2
_adc_chctr6	=	0x00d2
G$adc_chctr7$0_0$0 == 0x00d3
_adc_chctr7	=	0x00d3
G$adc_resr0l$0_0$0 == 0x00ca
_adc_resr0l	=	0x00ca
G$adc_resr0h$0_0$0 == 0x00cb
_adc_resr0h	=	0x00cb
G$adc_resr1l$0_0$0 == 0x00cc
_adc_resr1l	=	0x00cc
G$adc_resr1h$0_0$0 == 0x00cd
_adc_resr1h	=	0x00cd
G$adc_resr2l$0_0$0 == 0x00ce
_adc_resr2l	=	0x00ce
G$adc_resr2h$0_0$0 == 0x00cf
_adc_resr2h	=	0x00cf
G$adc_resr3l$0_0$0 == 0x00d2
_adc_resr3l	=	0x00d2
G$adc_resr3h$0_0$0 == 0x00d3
_adc_resr3h	=	0x00d3
G$adc_resra0l$0_0$0 == 0x00ca
_adc_resra0l	=	0x00ca
G$adc_resra0h$0_0$0 == 0x00cb
_adc_resra0h	=	0x00cb
G$adc_resra1l$0_0$0 == 0x00cc
_adc_resra1l	=	0x00cc
G$adc_resra1h$0_0$0 == 0x00cd
_adc_resra1h	=	0x00cd
G$adc_resra2l$0_0$0 == 0x00ce
_adc_resra2l	=	0x00ce
G$adc_resra2h$0_0$0 == 0x00cf
_adc_resra2h	=	0x00cf
G$adc_resra3l$0_0$0 == 0x00d2
_adc_resra3l	=	0x00d2
G$adc_resra3h$0_0$0 == 0x00d3
_adc_resra3h	=	0x00d3
G$adc_rcr0$0_0$0 == 0x00ca
_adc_rcr0	=	0x00ca
G$adc_rcr1$0_0$0 == 0x00cb
_adc_rcr1	=	0x00cb
G$adc_rcr2$0_0$0 == 0x00cc
_adc_rcr2	=	0x00cc
G$adc_rcr3$0_0$0 == 0x00cd
_adc_rcr3	=	0x00cd
G$adc_vfcr$0_0$0 == 0x00ce
_adc_vfcr	=	0x00ce
G$adc_chinfr$0_0$0 == 0x00ca
_adc_chinfr	=	0x00ca
G$adc_chincr$0_0$0 == 0x00cb
_adc_chincr	=	0x00cb
G$adc_chinsr$0_0$0 == 0x00cc
_adc_chinsr	=	0x00cc
G$adc_chinpr$0_0$0 == 0x00cd
_adc_chinpr	=	0x00cd
G$adc_evinfr$0_0$0 == 0x00ce
_adc_evinfr	=	0x00ce
G$adc_evincr$0_0$0 == 0x00cf
_adc_evincr	=	0x00cf
G$adc_evinsr$0_0$0 == 0x00d2
_adc_evinsr	=	0x00d2
G$adc_evinpr$0_0$0 == 0x00d3
_adc_evinpr	=	0x00d3
G$adc_crcr1$0_0$0 == 0x00ca
_adc_crcr1	=	0x00ca
G$adc_crpr1$0_0$0 == 0x00cb
_adc_crpr1	=	0x00cb
G$adc_crmr1$0_0$0 == 0x00cc
_adc_crmr1	=	0x00cc
G$adc_qmr0$0_0$0 == 0x00cd
_adc_qmr0	=	0x00cd
G$adc_qsr0$0_0$0 == 0x00ce
_adc_qsr0	=	0x00ce
G$adc_q0r0$0_0$0 == 0x00cf
_adc_q0r0	=	0x00cf
G$adc_qbur0$0_0$0 == 0x00d3
_adc_qbur0	=	0x00d3
G$adc_qinr0$0_0$0 == 0x00d2
_adc_qinr0	=	0x00d2
G$t2_t2con$0_0$0 == 0x00c0
_t2_t2con	=	0x00c0
G$t2_t2mod$0_0$0 == 0x00c1
_t2_t2mod	=	0x00c1
G$t2_rc2l$0_0$0 == 0x00c2
_t2_rc2l	=	0x00c2
G$t2_rc2h$0_0$0 == 0x00c3
_t2_rc2h	=	0x00c3
G$t2_t2l$0_0$0 == 0x00c4
_t2_t2l	=	0x00c4
G$t2_t2h$0_0$0 == 0x00c5
_t2_t2h	=	0x00c5
G$ccu6_page$0_0$0 == 0x00a3
_ccu6_page	=	0x00a3
G$ccu6_cc63srl$0_0$0 == 0x009a
_ccu6_cc63srl	=	0x009a
G$ccu6_cc63srh$0_0$0 == 0x009b
_ccu6_cc63srh	=	0x009b
G$ccu6_tctr4l$0_0$0 == 0x009c
_ccu6_tctr4l	=	0x009c
G$ccu6_tctr4h$0_0$0 == 0x009d
_ccu6_tctr4h	=	0x009d
G$ccu6_mcmoutsl$0_0$0 == 0x009e
_ccu6_mcmoutsl	=	0x009e
G$ccu6_mcmoutsh$0_0$0 == 0x009f
_ccu6_mcmoutsh	=	0x009f
G$ccu6_isrl$0_0$0 == 0x00a4
_ccu6_isrl	=	0x00a4
G$ccu6_isrh$0_0$0 == 0x00a5
_ccu6_isrh	=	0x00a5
G$ccu6_cmpmodifl$0_0$0 == 0x00a6
_ccu6_cmpmodifl	=	0x00a6
G$ccu6_cmpmodifh$0_0$0 == 0x00a7
_ccu6_cmpmodifh	=	0x00a7
G$ccu6_cc60srl$0_0$0 == 0x00fa
_ccu6_cc60srl	=	0x00fa
G$ccu6_cc60srh$0_0$0 == 0x00fb
_ccu6_cc60srh	=	0x00fb
G$ccu6_cc61srl$0_0$0 == 0x00fc
_ccu6_cc61srl	=	0x00fc
G$ccu6_cc61srh$0_0$0 == 0x00fd
_ccu6_cc61srh	=	0x00fd
G$ccu6_cc62srl$0_0$0 == 0x00fe
_ccu6_cc62srl	=	0x00fe
G$ccu6_cc62srh$0_0$0 == 0x00ff
_ccu6_cc62srh	=	0x00ff
G$ccu6_cc63rl$0_0$0 == 0x009a
_ccu6_cc63rl	=	0x009a
G$ccu6_cc63rh$0_0$0 == 0x009b
_ccu6_cc63rh	=	0x009b
G$ccu6_t12prl$0_0$0 == 0x009c
_ccu6_t12prl	=	0x009c
G$ccu6_t12prh$0_0$0 == 0x009d
_ccu6_t12prh	=	0x009d
G$ccu6_t13prl$0_0$0 == 0x009e
_ccu6_t13prl	=	0x009e
G$ccu6_t13prh$0_0$0 == 0x009f
_ccu6_t13prh	=	0x009f
G$ccu6_t12dtcl$0_0$0 == 0x00a4
_ccu6_t12dtcl	=	0x00a4
G$ccu6_t12dtch$0_0$0 == 0x00a5
_ccu6_t12dtch	=	0x00a5
G$ccu6_tctr0l$0_0$0 == 0x00a6
_ccu6_tctr0l	=	0x00a6
G$ccu6_tctr0h$0_0$0 == 0x00a7
_ccu6_tctr0h	=	0x00a7
G$ccu6_cc60rl$0_0$0 == 0x00fa
_ccu6_cc60rl	=	0x00fa
G$ccu6_cc60rh$0_0$0 == 0x00fb
_ccu6_cc60rh	=	0x00fb
G$ccu6_cc61rl$0_0$0 == 0x00fc
_ccu6_cc61rl	=	0x00fc
G$ccu6_cc61rh$0_0$0 == 0x00fd
_ccu6_cc61rh	=	0x00fd
G$ccu6_cc62rl$0_0$0 == 0x00fe
_ccu6_cc62rl	=	0x00fe
G$ccu6_cc62rh$0_0$0 == 0x00ff
_ccu6_cc62rh	=	0x00ff
G$ccu6_t12msell$0_0$0 == 0x009a
_ccu6_t12msell	=	0x009a
G$ccu6_t12mselh$0_0$0 == 0x009b
_ccu6_t12mselh	=	0x009b
G$ccu6_ienl$0_0$0 == 0x009c
_ccu6_ienl	=	0x009c
G$ccu6_ienh$0_0$0 == 0x009d
_ccu6_ienh	=	0x009d
G$ccu6_inpl$0_0$0 == 0x009e
_ccu6_inpl	=	0x009e
G$ccu6_inph$0_0$0 == 0x009f
_ccu6_inph	=	0x009f
G$ccu6_issl$0_0$0 == 0x00a4
_ccu6_issl	=	0x00a4
G$ccu6_issh$0_0$0 == 0x00a5
_ccu6_issh	=	0x00a5
G$ccu6_pslr$0_0$0 == 0x00a6
_ccu6_pslr	=	0x00a6
G$ccu6_mcmctr$0_0$0 == 0x00a7
_ccu6_mcmctr	=	0x00a7
G$ccu6_tctr2l$0_0$0 == 0x00fa
_ccu6_tctr2l	=	0x00fa
G$ccu6_tctr2h$0_0$0 == 0x00fb
_ccu6_tctr2h	=	0x00fb
G$ccu6_modctrl$0_0$0 == 0x00fc
_ccu6_modctrl	=	0x00fc
G$ccu6_modctrh$0_0$0 == 0x00fd
_ccu6_modctrh	=	0x00fd
G$ccu6_trpctrl$0_0$0 == 0x00fe
_ccu6_trpctrl	=	0x00fe
G$ccu6_trpctrh$0_0$0 == 0x00ff
_ccu6_trpctrh	=	0x00ff
G$ccu6_mcmoutl$0_0$0 == 0x009a
_ccu6_mcmoutl	=	0x009a
G$ccu6_mcmouth$0_0$0 == 0x009b
_ccu6_mcmouth	=	0x009b
G$ccu6_isl$0_0$0 == 0x009c
_ccu6_isl	=	0x009c
G$ccu6_ish$0_0$0 == 0x009d
_ccu6_ish	=	0x009d
G$ccu6_pisel0l$0_0$0 == 0x009e
_ccu6_pisel0l	=	0x009e
G$ccu6_pisel0h$0_0$0 == 0x009f
_ccu6_pisel0h	=	0x009f
G$ccu6_pisel2$0_0$0 == 0x00a4
_ccu6_pisel2	=	0x00a4
G$ccu6_t12l$0_0$0 == 0x00fa
_ccu6_t12l	=	0x00fa
G$ccu6_t12h$0_0$0 == 0x00fb
_ccu6_t12h	=	0x00fb
G$ccu6_t13l$0_0$0 == 0x00fc
_ccu6_t13l	=	0x00fc
G$ccu6_t13h$0_0$0 == 0x00fd
_ccu6_t13h	=	0x00fd
G$ccu6_cmpstatl$0_0$0 == 0x00fe
_ccu6_cmpstatl	=	0x00fe
G$ccu6_cmpstath$0_0$0 == 0x00ff
_ccu6_cmpstath	=	0x00ff
G$ssc_pisel$0_0$0 == 0x00a9
_ssc_pisel	=	0x00a9
G$ssc_conl$0_0$0 == 0x00aa
_ssc_conl	=	0x00aa
G$ssc_conh$0_0$0 == 0x00ab
_ssc_conh	=	0x00ab
G$ssc_tbl$0_0$0 == 0x00ac
_ssc_tbl	=	0x00ac
G$ssc_rbl$0_0$0 == 0x00ad
_ssc_rbl	=	0x00ad
G$ssc_brl$0_0$0 == 0x00ae
_ssc_brl	=	0x00ae
G$ssc_brh$0_0$0 == 0x00af
_ssc_brh	=	0x00af
G$adcon$0_0$0 == 0x00d8
_adcon	=	0x00d8
G$adl$0_0$0 == 0x00d9
_adl	=	0x00d9
G$adh$0_0$0 == 0x00da
_adh	=	0x00da
G$data0$0_0$0 == 0x00db
_data0	=	0x00db
G$data1$0_0$0 == 0x00dc
_data1	=	0x00dc
G$data2$0_0$0 == 0x00dd
_data2	=	0x00dd
G$data3$0_0$0 == 0x00de
_data3	=	0x00de
G$mdustat$0_0$0 == 0x00b0
_mdustat	=	0x00b0
G$mducon$0_0$0 == 0x00b1
_mducon	=	0x00b1
G$md0$0_0$0 == 0x00b2
_md0	=	0x00b2
G$mr0$0_0$0 == 0x00b2
_mr0	=	0x00b2
G$md1$0_0$0 == 0x00b3
_md1	=	0x00b3
G$mr1$0_0$0 == 0x00b3
_mr1	=	0x00b3
G$md2$0_0$0 == 0x00b4
_md2	=	0x00b4
G$mr2$0_0$0 == 0x00b4
_mr2	=	0x00b4
G$md3$0_0$0 == 0x00b5
_md3	=	0x00b5
G$mr3$0_0$0 == 0x00b5
_mr3	=	0x00b5
G$md4$0_0$0 == 0x00b6
_md4	=	0x00b6
G$mr4$0_0$0 == 0x00b6
_mr4	=	0x00b6
G$md5$0_0$0 == 0x00b7
_md5	=	0x00b7
G$mr5$0_0$0 == 0x00b7
_mr5	=	0x00b7
G$cd_cordxl$0_0$0 == 0x009a
_cd_cordxl	=	0x009a
G$cd_cordxh$0_0$0 == 0x009b
_cd_cordxh	=	0x009b
G$cd_cordyl$0_0$0 == 0x009c
_cd_cordyl	=	0x009c
G$cd_cordyh$0_0$0 == 0x009d
_cd_cordyh	=	0x009d
G$cd_cordzl$0_0$0 == 0x009e
_cd_cordzl	=	0x009e
G$cd_cordzh$0_0$0 == 0x009f
_cd_cordzh	=	0x009f
G$cd_statc$0_0$0 == 0x00a0
_cd_statc	=	0x00a0
G$cd_con$0_0$0 == 0x00a1
_cd_con	=	0x00a1
G$wdtcon$0_0$0 == 0x00bb
_wdtcon	=	0x00bb
G$wdtrel$0_0$0 == 0x00bc
_wdtrel	=	0x00bc
G$wdtwinb$0_0$0 == 0x00bd
_wdtwinb	=	0x00bd
G$wdtl$0_0$0 == 0x00be
_wdtl	=	0x00be
G$wdth$0_0$0 == 0x00bf
_wdth	=	0x00bf
G$t21_t2con$0_0$0 == 0x00c0
_t21_t2con	=	0x00c0
G$t21_t2mod$0_0$0 == 0x00c1
_t21_t2mod	=	0x00c1
G$t21_rc2l$0_0$0 == 0x00c2
_t21_rc2l	=	0x00c2
G$t21_rc2h$0_0$0 == 0x00c3
_t21_rc2h	=	0x00c3
G$t21_t2l$0_0$0 == 0x00c4
_t21_t2l	=	0x00c4
G$t21_t2h$0_0$0 == 0x00c5
_t21_t2h	=	0x00c5
G$scon1$0_0$0 == 0x00c8
_scon1	=	0x00c8
G$sbuf1$0_0$0 == 0x00c9
_sbuf1	=	0x00c9
G$bcon1$0_0$0 == 0x00ca
_bcon1	=	0x00ca
G$bg1$0_0$0 == 0x00cb
_bg1	=	0x00cb
G$fdcon1$0_0$0 == 0x00cc
_fdcon1	=	0x00cc
G$fdstep1$0_0$0 == 0x00cd
_fdstep1	=	0x00cd
G$fdres1$0_0$0 == 0x00ce
_fdres1	=	0x00ce
G$mmcr2$0_0$0 == 0x00e9
_mmcr2	=	0x00e9
G$mmcr$0_0$0 == 0x00f1
_mmcr	=	0x00f1
G$mmsr$0_0$0 == 0x00f2
_mmsr	=	0x00f2
G$mmbpcr$0_0$0 == 0x00f3
_mmbpcr	=	0x00f3
G$mmicr$0_0$0 == 0x00f4
_mmicr	=	0x00f4
G$mmdr$0_0$0 == 0x00f5
_mmdr	=	0x00f5
G$hwbpsr$0_0$0 == 0x00f6
_hwbpsr	=	0x00f6
G$hwbpdr$0_0$0 == 0x00f7
_hwbpdr	=	0x00f7
G$mmwr1$0_0$0 == 0x00eb
_mmwr1	=	0x00eb
G$mmwr2$0_0$0 == 0x00ec
_mmwr2	=	0x00ec
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$tf1$0_0$0 == 0x008f
_tf1	=	0x008f
G$tr1$0_0$0 == 0x008e
_tr1	=	0x008e
G$tf0$0_0$0 == 0x008d
_tf0	=	0x008d
G$tr0$0_0$0 == 0x008c
_tr0	=	0x008c
G$ie1$0_0$0 == 0x008b
_ie1	=	0x008b
G$it1$0_0$0 == 0x008a
_it1	=	0x008a
G$ie0$0_0$0 == 0x0089
_ie0	=	0x0089
G$it0$0_0$0 == 0x0088
_it0	=	0x0088
G$sm0$0_0$0 == 0x009f
_sm0	=	0x009f
G$sm1$0_0$0 == 0x009e
_sm1	=	0x009e
G$sm2$0_0$0 == 0x009d
_sm2	=	0x009d
G$ren$0_0$0 == 0x009c
_ren	=	0x009c
G$tb8$0_0$0 == 0x009b
_tb8	=	0x009b
G$rb8$0_0$0 == 0x009a
_rb8	=	0x009a
G$ti$0_0$0 == 0x0099
_ti	=	0x0099
G$ri$0_0$0 == 0x0098
_ri	=	0x0098
G$ea$0_0$0 == 0x00af
_ea	=	0x00af
G$et2$0_0$0 == 0x00ad
_et2	=	0x00ad
G$es$0_0$0 == 0x00ac
_es	=	0x00ac
G$et1$0_0$0 == 0x00ab
_et1	=	0x00ab
G$ex1$0_0$0 == 0x00aa
_ex1	=	0x00aa
G$et0$0_0$0 == 0x00a9
_et0	=	0x00a9
G$ex0$0_0$0 == 0x00a8
_ex0	=	0x00a8
G$pt2$0_0$0 == 0x00bd
_pt2	=	0x00bd
G$ps$0_0$0 == 0x00bc
_ps	=	0x00bc
G$pt1$0_0$0 == 0x00bb
_pt1	=	0x00bb
G$px1$0_0$0 == 0x00ba
_px1	=	0x00ba
G$pt0$0_0$0 == 0x00b9
_pt0	=	0x00b9
G$px0$0_0$0 == 0x00b8
_px0	=	0x00b8
G$cy$0_0$0 == 0x00d7
_cy	=	0x00d7
G$ac$0_0$0 == 0x00d6
_ac	=	0x00d6
G$f0$0_0$0 == 0x00d5
_f0	=	0x00d5
G$rs1$0_0$0 == 0x00d4
_rs1	=	0x00d4
G$rs0$0_0$0 == 0x00d3
_rs0	=	0x00d3
G$ov$0_0$0 == 0x00d2
_ov	=	0x00d2
G$f1$0_0$0 == 0x00d1
_f1	=	0x00d1
G$p$0_0$0 == 0x00d0
_p	=	0x00d0
G$eccip3$0_0$0 == 0x00ef
_eccip3	=	0x00ef
G$eccip2$0_0$0 == 0x00ee
_eccip2	=	0x00ee
G$eccip1$0_0$0 == 0x00ed
_eccip1	=	0x00ed
G$eccip0$0_0$0 == 0x00ec
_eccip0	=	0x00ec
G$exm$0_0$0 == 0x00eb
_exm	=	0x00eb
G$ex2$0_0$0 == 0x00ea
_ex2	=	0x00ea
G$essc$0_0$0 == 0x00e9
_essc	=	0x00e9
G$eadc$0_0$0 == 0x00e8
_eadc	=	0x00e8
G$pccip3$0_0$0 == 0x00ff
_pccip3	=	0x00ff
G$pccip2$0_0$0 == 0x00fe
_pccip2	=	0x00fe
G$pccip1$0_0$0 == 0x00fd
_pccip1	=	0x00fd
G$pccip0$0_0$0 == 0x00fc
_pccip0	=	0x00fc
G$pxm$0_0$0 == 0x00fb
_pxm	=	0x00fb
G$px2$0_0$0 == 0x00fa
_px2	=	0x00fa
G$pssc$0_0$0 == 0x00f9
_pssc	=	0x00f9
G$padc$0_0$0 == 0x00f8
_padc	=	0x00f8
G$p0_data_7$0_0$0 == 0x0087
_p0_data_7	=	0x0087
G$p0_data_6$0_0$0 == 0x0086
_p0_data_6	=	0x0086
G$p0_data_5$0_0$0 == 0x0085
_p0_data_5	=	0x0085
G$p0_data_4$0_0$0 == 0x0084
_p0_data_4	=	0x0084
G$p0_data_3$0_0$0 == 0x0083
_p0_data_3	=	0x0083
G$p0_data_2$0_0$0 == 0x0082
_p0_data_2	=	0x0082
G$p0_data_1$0_0$0 == 0x0081
_p0_data_1	=	0x0081
G$p0_data_0$0_0$0 == 0x0080
_p0_data_0	=	0x0080
G$p1_data_7$0_0$0 == 0x0097
_p1_data_7	=	0x0097
G$p1_data_6$0_0$0 == 0x0096
_p1_data_6	=	0x0096
G$p1_data_5$0_0$0 == 0x0095
_p1_data_5	=	0x0095
G$p1_data_4$0_0$0 == 0x0094
_p1_data_4	=	0x0094
G$p1_data_3$0_0$0 == 0x0093
_p1_data_3	=	0x0093
G$p1_data_2$0_0$0 == 0x0092
_p1_data_2	=	0x0092
G$p1_data_1$0_0$0 == 0x0091
_p1_data_1	=	0x0091
G$p1_data_0$0_0$0 == 0x0090
_p1_data_0	=	0x0090
G$p2_data_7$0_0$0 == 0x00a7
_p2_data_7	=	0x00a7
G$p2_data_6$0_0$0 == 0x00a6
_p2_data_6	=	0x00a6
G$p2_data_5$0_0$0 == 0x00a5
_p2_data_5	=	0x00a5
G$p2_data_4$0_0$0 == 0x00a4
_p2_data_4	=	0x00a4
G$p2_data_3$0_0$0 == 0x00a3
_p2_data_3	=	0x00a3
G$p2_data_2$0_0$0 == 0x00a2
_p2_data_2	=	0x00a2
G$p2_data_1$0_0$0 == 0x00a1
_p2_data_1	=	0x00a1
G$p2_data_0$0_0$0 == 0x00a0
_p2_data_0	=	0x00a0
G$p3_data_7$0_0$0 == 0x00b7
_p3_data_7	=	0x00b7
G$p3_data_6$0_0$0 == 0x00b6
_p3_data_6	=	0x00b6
G$p3_data_5$0_0$0 == 0x00b5
_p3_data_5	=	0x00b5
G$p3_data_4$0_0$0 == 0x00b4
_p3_data_4	=	0x00b4
G$p3_data_3$0_0$0 == 0x00b3
_p3_data_3	=	0x00b3
G$p3_data_2$0_0$0 == 0x00b2
_p3_data_2	=	0x00b2
G$p3_data_1$0_0$0 == 0x00b1
_p3_data_1	=	0x00b1
G$p3_data_0$0_0$0 == 0x00b0
_p3_data_0	=	0x00b0
G$p4_data_7$0_0$0 == 0x00cf
_p4_data_7	=	0x00cf
G$p4_data_6$0_0$0 == 0x00ce
_p4_data_6	=	0x00ce
G$p4_data_5$0_0$0 == 0x00cd
_p4_data_5	=	0x00cd
G$p4_data_4$0_0$0 == 0x00cc
_p4_data_4	=	0x00cc
G$p4_data_3$0_0$0 == 0x00cb
_p4_data_3	=	0x00cb
G$p4_data_2$0_0$0 == 0x00ca
_p4_data_2	=	0x00ca
G$p4_data_1$0_0$0 == 0x00c9
_p4_data_1	=	0x00c9
G$p4_data_0$0_0$0 == 0x00c8
_p4_data_0	=	0x00c8
G$p0_pudsel_7$0_0$0 == 0x0087
_p0_pudsel_7	=	0x0087
G$p0_pudsel_6$0_0$0 == 0x0086
_p0_pudsel_6	=	0x0086
G$p0_pudsel_5$0_0$0 == 0x0085
_p0_pudsel_5	=	0x0085
G$p0_pudsel_4$0_0$0 == 0x0084
_p0_pudsel_4	=	0x0084
G$p0_pudsel_3$0_0$0 == 0x0083
_p0_pudsel_3	=	0x0083
G$p0_pudsel_2$0_0$0 == 0x0082
_p0_pudsel_2	=	0x0082
G$p0_pudsel_1$0_0$0 == 0x0081
_p0_pudsel_1	=	0x0081
G$p0_pudsel_0$0_0$0 == 0x0080
_p0_pudsel_0	=	0x0080
G$p1_pudsel_7$0_0$0 == 0x0097
_p1_pudsel_7	=	0x0097
G$p1_pudsel_6$0_0$0 == 0x0096
_p1_pudsel_6	=	0x0096
G$p1_pudsel_5$0_0$0 == 0x0095
_p1_pudsel_5	=	0x0095
G$p1_pudsel_4$0_0$0 == 0x0094
_p1_pudsel_4	=	0x0094
G$p1_pudsel_3$0_0$0 == 0x0093
_p1_pudsel_3	=	0x0093
G$p1_pudsel_2$0_0$0 == 0x0092
_p1_pudsel_2	=	0x0092
G$p1_pudsel_1$0_0$0 == 0x0091
_p1_pudsel_1	=	0x0091
G$p1_pudsel_0$0_0$0 == 0x0090
_p1_pudsel_0	=	0x0090
G$p2_pudsel_7$0_0$0 == 0x00a7
_p2_pudsel_7	=	0x00a7
G$p2_pudsel_6$0_0$0 == 0x00a6
_p2_pudsel_6	=	0x00a6
G$p2_pudsel_5$0_0$0 == 0x00a5
_p2_pudsel_5	=	0x00a5
G$p2_pudsel_4$0_0$0 == 0x00a4
_p2_pudsel_4	=	0x00a4
G$p2_pudsel_3$0_0$0 == 0x00a3
_p2_pudsel_3	=	0x00a3
G$p2_pudsel_2$0_0$0 == 0x00a2
_p2_pudsel_2	=	0x00a2
G$p2_pudsel_1$0_0$0 == 0x00a1
_p2_pudsel_1	=	0x00a1
G$p2_pudsel_0$0_0$0 == 0x00a0
_p2_pudsel_0	=	0x00a0
G$p3_pudsel_7$0_0$0 == 0x00b7
_p3_pudsel_7	=	0x00b7
G$p3_pudsel_6$0_0$0 == 0x00b6
_p3_pudsel_6	=	0x00b6
G$p3_pudsel_5$0_0$0 == 0x00b5
_p3_pudsel_5	=	0x00b5
G$p3_pudsel_4$0_0$0 == 0x00b4
_p3_pudsel_4	=	0x00b4
G$p3_pudsel_3$0_0$0 == 0x00b3
_p3_pudsel_3	=	0x00b3
G$p3_pudsel_2$0_0$0 == 0x00b2
_p3_pudsel_2	=	0x00b2
G$p3_pudsel_1$0_0$0 == 0x00b1
_p3_pudsel_1	=	0x00b1
G$p3_pudsel_0$0_0$0 == 0x00b0
_p3_pudsel_0	=	0x00b0
G$p4_pudsel_7$0_0$0 == 0x00cf
_p4_pudsel_7	=	0x00cf
G$p4_pudsel_6$0_0$0 == 0x00ce
_p4_pudsel_6	=	0x00ce
G$p4_pudsel_5$0_0$0 == 0x00cd
_p4_pudsel_5	=	0x00cd
G$p4_pudsel_4$0_0$0 == 0x00cc
_p4_pudsel_4	=	0x00cc
G$p4_pudsel_3$0_0$0 == 0x00cb
_p4_pudsel_3	=	0x00cb
G$p4_pudsel_2$0_0$0 == 0x00ca
_p4_pudsel_2	=	0x00ca
G$p4_pudsel_1$0_0$0 == 0x00c9
_p4_pudsel_1	=	0x00c9
G$p4_pudsel_0$0_0$0 == 0x00c8
_p4_pudsel_0	=	0x00c8
G$p0_altsel0_7$0_0$0 == 0x0087
_p0_altsel0_7	=	0x0087
G$p0_altsel0_6$0_0$0 == 0x0086
_p0_altsel0_6	=	0x0086
G$p0_altsel0_5$0_0$0 == 0x0085
_p0_altsel0_5	=	0x0085
G$p0_altsel0_4$0_0$0 == 0x0084
_p0_altsel0_4	=	0x0084
G$p0_altsel0_3$0_0$0 == 0x0083
_p0_altsel0_3	=	0x0083
G$p0_altsel0_2$0_0$0 == 0x0082
_p0_altsel0_2	=	0x0082
G$p0_altsel0_1$0_0$0 == 0x0081
_p0_altsel0_1	=	0x0081
G$p0_altsel0_0$0_0$0 == 0x0080
_p0_altsel0_0	=	0x0080
G$p1_altsel0_7$0_0$0 == 0x0097
_p1_altsel0_7	=	0x0097
G$p1_altsel0_6$0_0$0 == 0x0096
_p1_altsel0_6	=	0x0096
G$p1_altsel0_5$0_0$0 == 0x0095
_p1_altsel0_5	=	0x0095
G$p1_altsel0_4$0_0$0 == 0x0094
_p1_altsel0_4	=	0x0094
G$p1_altsel0_3$0_0$0 == 0x0093
_p1_altsel0_3	=	0x0093
G$p1_altsel0_2$0_0$0 == 0x0092
_p1_altsel0_2	=	0x0092
G$p1_altsel0_1$0_0$0 == 0x0091
_p1_altsel0_1	=	0x0091
G$p1_altsel0_0$0_0$0 == 0x0090
_p1_altsel0_0	=	0x0090
G$p3_altsel0_7$0_0$0 == 0x00b7
_p3_altsel0_7	=	0x00b7
G$p3_altsel0_6$0_0$0 == 0x00b6
_p3_altsel0_6	=	0x00b6
G$p3_altsel0_5$0_0$0 == 0x00b5
_p3_altsel0_5	=	0x00b5
G$p3_altsel0_4$0_0$0 == 0x00b4
_p3_altsel0_4	=	0x00b4
G$p3_altsel0_3$0_0$0 == 0x00b3
_p3_altsel0_3	=	0x00b3
G$p3_altsel0_2$0_0$0 == 0x00b2
_p3_altsel0_2	=	0x00b2
G$p3_altsel0_1$0_0$0 == 0x00b1
_p3_altsel0_1	=	0x00b1
G$p3_altsel0_0$0_0$0 == 0x00b0
_p3_altsel0_0	=	0x00b0
G$p4_altsel0_7$0_0$0 == 0x00cf
_p4_altsel0_7	=	0x00cf
G$p4_altsel0_6$0_0$0 == 0x00ce
_p4_altsel0_6	=	0x00ce
G$p4_altsel0_5$0_0$0 == 0x00cd
_p4_altsel0_5	=	0x00cd
G$p4_altsel0_4$0_0$0 == 0x00cc
_p4_altsel0_4	=	0x00cc
G$p4_altsel0_3$0_0$0 == 0x00cb
_p4_altsel0_3	=	0x00cb
G$p4_altsel0_2$0_0$0 == 0x00ca
_p4_altsel0_2	=	0x00ca
G$p4_altsel0_1$0_0$0 == 0x00c9
_p4_altsel0_1	=	0x00c9
G$p4_altsel0_0$0_0$0 == 0x00c8
_p4_altsel0_0	=	0x00c8
G$p0_od_7$0_0$0 == 0x0087
_p0_od_7	=	0x0087
G$p0_od_6$0_0$0 == 0x0086
_p0_od_6	=	0x0086
G$p0_od_5$0_0$0 == 0x0085
_p0_od_5	=	0x0085
G$p0_od_4$0_0$0 == 0x0084
_p0_od_4	=	0x0084
G$p0_od_3$0_0$0 == 0x0083
_p0_od_3	=	0x0083
G$p0_od_2$0_0$0 == 0x0082
_p0_od_2	=	0x0082
G$p0_od_1$0_0$0 == 0x0081
_p0_od_1	=	0x0081
G$p0_od_0$0_0$0 == 0x0080
_p0_od_0	=	0x0080
G$p1_od_7$0_0$0 == 0x0097
_p1_od_7	=	0x0097
G$p1_od_6$0_0$0 == 0x0096
_p1_od_6	=	0x0096
G$p1_od_5$0_0$0 == 0x0095
_p1_od_5	=	0x0095
G$p1_od_4$0_0$0 == 0x0094
_p1_od_4	=	0x0094
G$p1_od_3$0_0$0 == 0x0093
_p1_od_3	=	0x0093
G$p1_od_2$0_0$0 == 0x0092
_p1_od_2	=	0x0092
G$p1_od_1$0_0$0 == 0x0091
_p1_od_1	=	0x0091
G$p1_od_0$0_0$0 == 0x0090
_p1_od_0	=	0x0090
G$p3_od_7$0_0$0 == 0x00b7
_p3_od_7	=	0x00b7
G$p3_od_6$0_0$0 == 0x00b6
_p3_od_6	=	0x00b6
G$p3_od_5$0_0$0 == 0x00b5
_p3_od_5	=	0x00b5
G$p3_od_4$0_0$0 == 0x00b4
_p3_od_4	=	0x00b4
G$p3_od_3$0_0$0 == 0x00b3
_p3_od_3	=	0x00b3
G$p3_od_2$0_0$0 == 0x00b2
_p3_od_2	=	0x00b2
G$p3_od_1$0_0$0 == 0x00b1
_p3_od_1	=	0x00b1
G$p3_od_0$0_0$0 == 0x00b0
_p3_od_0	=	0x00b0
G$p4_od_7$0_0$0 == 0x00cf
_p4_od_7	=	0x00cf
G$p4_od_6$0_0$0 == 0x00ce
_p4_od_6	=	0x00ce
G$p4_od_5$0_0$0 == 0x00cd
_p4_od_5	=	0x00cd
G$p4_od_4$0_0$0 == 0x00cc
_p4_od_4	=	0x00cc
G$p4_od_3$0_0$0 == 0x00cb
_p4_od_3	=	0x00cb
G$p4_od_2$0_0$0 == 0x00ca
_p4_od_2	=	0x00ca
G$p4_od_1$0_0$0 == 0x00c9
_p4_od_1	=	0x00c9
G$p4_od_0$0_0$0 == 0x00c8
_p4_od_0	=	0x00c8
G$tf2$0_0$0 == 0x00c7
_tf2	=	0x00c7
G$exf2$0_0$0 == 0x00c6
_exf2	=	0x00c6
G$exen2$0_0$0 == 0x00c3
_exen2	=	0x00c3
G$tr2$0_0$0 == 0x00c2
_tr2	=	0x00c2
G$ct2$0_0$0 == 0x00c1
_ct2	=	0x00c1
G$cprl2$0_0$0 == 0x00c0
_cprl2	=	0x00c0
G$v3$0_0$0 == 0x00df
_v3	=	0x00df
G$v2$0_0$0 == 0x00de
_v2	=	0x00de
G$v1$0_0$0 == 0x00dd
_v1	=	0x00dd
G$v0$0_0$0 == 0x00dc
_v0	=	0x00dc
G$auad1$0_0$0 == 0x00db
_auad1	=	0x00db
G$auad0$0_0$0 == 0x00da
_auad0	=	0x00da
G$can_bsy$0_0$0 == 0x00d9
_can_bsy	=	0x00d9
G$rwen$0_0$0 == 0x00d8
_rwen	=	0x00d8
G$bsy$0_0$0 == 0x00b2
_bsy	=	0x00b2
G$ierr$0_0$0 == 0x00b1
_ierr	=	0x00b1
G$irdy$0_0$0 == 0x00b0
_irdy	=	0x00b0
G$keepz$0_0$0 == 0x00a7
_keepz	=	0x00a7
G$keepy$0_0$0 == 0x00a6
_keepy	=	0x00a6
G$keepx$0_0$0 == 0x00a5
_keepx	=	0x00a5
G$dmap$0_0$0 == 0x00a4
_dmap	=	0x00a4
G$int_en$0_0$0 == 0x00a3
_int_en	=	0x00a3
G$eoc$0_0$0 == 0x00a2
_eoc	=	0x00a2
G$error$0_0$0 == 0x00a1
_error	=	0x00a1
G$cd_bsy$0_0$0 == 0x00a0
_cd_bsy	=	0x00a0
G$sm01$0_0$0 == 0x00cf
_sm01	=	0x00cf
G$sm11$0_0$0 == 0x00ce
_sm11	=	0x00ce
G$sm21$0_0$0 == 0x00cd
_sm21	=	0x00cd
G$ren1$0_0$0 == 0x00cc
_ren1	=	0x00cc
G$tb81$0_0$0 == 0x00cb
_tb81	=	0x00cb
G$rb81$0_0$0 == 0x00ca
_rb81	=	0x00ca
G$ti1$0_0$0 == 0x00c9
_ti1	=	0x00c9
G$ri1$0_0$0 == 0x00c8
_ri1	=	0x00c8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fxcez_lib$lcdport$0_0$0==.
_lcdport:
	.ds 1
Lxcez_lib.putchar_c$c$1_0$73==.
_putchar_c_c_65536_73:
	.ds 1
Lxcez_lib.hex2bcd$x$1_0$77==.
_hex2bcd_x_65536_77:
	.ds 1
Lxcez_lib.get_random_between$high$1_0$79==.
_get_random_between_PARM_2:
	.ds 1
Lxcez_lib.get_random_between$low$1_0$79==.
_get_random_between_low_65536_79:
	.ds 1
Lxcez_lib.delay$ms$1_0$91==.
_delay_ms_65536_91:
	.ds 2
Lxcez_lib.initsio$tmpStack$1_0$96==.
_initsio_tmpStack_65536_96:
	.ds 3
Lxcez_lib.iicinbyte$ack$1_0$105==.
_iicinbyte_ack_65536_105:
	.ds 1
Lxcez_lib.iicinbyte$databyte$1_0$106==.
_iicinbyte_databyte_65536_106:
	.ds 1
Lxcez_lib.iicinbyte$tmpStack$1_0$106==.
_iicinbyte_tmpStack_65536_106:
	.ds 2
Lxcez_lib.porttolcd$databyte$1_0$109==.
_porttolcd_databyte_65536_109:
	.ds 1
Lxcez_lib.outhnib$data_or_not$1_0$113==.
_outhnib_PARM_2:
	.ds 1
Lxcez_lib.outhnib$databyte$1_0$113==.
_outhnib_databyte_65536_113:
	.ds 1
Lxcez_lib.out$data_or_not$1_0$115==.
_out_PARM_2:
	.ds 1
Lxcez_lib.out$databyte$1_0$115==.
_out_databyte_65536_115:
	.ds 1
Lxcez_lib.lcdlight$state$1_0$117==.
_lcdlight_state_65536_117:
	.ds 1
Lxcez_lib.lcdbuzzer$state$1_0$121==.
_lcdbuzzer_state_65536_121:
	.ds 1
Lxcez_lib.lcdputchar$databyte$1_0$127==.
_lcdputchar_databyte_65536_127:
	.ds 1
Lxcez_lib.lcdbuild$bitmapdata$1_0$135==.
_lcdbuild_bitmapdata_65536_135:
	.ds 3
Lxcez_lib.initleds$tmpStack$1_0$139==.
_initleds_tmpStack_65536_139:
	.ds 2
Lxcez_lib.initftoetsen$tmpStack$1_0$143==.
_initftoetsen_tmpStack_65536_143:
	.ds 2
Lxcez_lib.initdipswitch$tmpStack$1_0$145==.
_initdipswitch_tmpStack_65536_145:
	.ds 2
Lxcez_lib.initadcs$tmpStack$1_0$147==.
_initadcs_tmpStack_65536_147:
	.ds 2
Lxcez_lib.getadc$channel$1_0$148==.
_getadc_channel_65536_148:
	.ds 1
Lxcez_lib.getadc$tmpStack$1_0$149==.
_getadc_tmpStack_65536_149:
	.ds 2
Lxcez_lib.initpwm$tmpStack$1_0$155==.
_initpwm_tmpStack_65536_155:
	.ds 3
Lxcez_lib.pwmset$setValue$1_0$156==.
_pwmset_PARM_2:
	.ds 1
Lxcez_lib.pwmset$channel$1_0$156==.
_pwmset_channel_65536_156:
	.ds 1
Lxcez_lib.pwmset$tmpStack$1_0$157==.
_pwmset_tmpStack_65536_157:
	.ds 2
Lxcez_lib.initspi$heading$1_0$161==.
_initspi_PARM_2:
	.ds 1
Lxcez_lib.initspi$speed$1_0$161==.
_initspi_PARM_3:
	.ds 1
Lxcez_lib.initspi$mode$1_0$161==.
_initspi_mode_65536_161:
	.ds 1
Lxcez_lib.initspi$tmpStack$1_0$162==.
_initspi_tmpStack_65536_162:
	.ds 2
Lxcez_lib.spioutbyte$dataByte$1_0$166==.
_spioutbyte_dataByte_65536_166:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$OutputMux$0_0$0==.
_OutputMux::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar_c'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_c_65536_73'
;------------------------------------------------------------
	G$putchar_c$0$0 ==.
	C$xcez_lib.c$37$0_0$74 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:37: void putchar_c(char c) {
;	-----------------------------------------
;	 function putchar_c
;	-----------------------------------------
_putchar_c:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_putchar_c_c_65536_73
	movx	@dptr,a
	C$xcez_lib.c$38$1_0$74 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:38: if (OutputMux == OUTPUT_TO_SERIAL){
	mov	dptr,#_OutputMux
	movx	a,@dptr
	jnz	00105$
	C$xcez_lib.c$39$2_0$75 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:39: ti=0;	
;	assignBit
	clr	_ti
	C$xcez_lib.c$40$2_0$75 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:40: sbuf=c;
	mov	dptr,#_putchar_c_c_65536_73
	movx	a,@dptr
	mov	_sbuf,a
	C$xcez_lib.c$41$2_0$75 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:41: while(!ti); //wachten tot het karakter is verzonden
00101$:
	jb	_ti,00107$
	sjmp	00101$
00105$:
	C$xcez_lib.c$43$2_0$76 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:43: lcdputchar(c);
	mov	dptr,#_putchar_c_c_65536_73
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdputchar
00107$:
	C$xcez_lib.c$45$1_0$74 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:45: }
	C$xcez_lib.c$45$1_0$74 ==.
	XG$putchar_c$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hex2bcd'
;------------------------------------------------------------
;x                         Allocated with name '_hex2bcd_x_65536_77'
;y                         Allocated with name '_hex2bcd_y_65536_78'
;------------------------------------------------------------
	G$hex2bcd$0$0 ==.
	C$xcez_lib.c$48$1_0$78 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:48: uint8_t hex2bcd(uint8_t x){
;	-----------------------------------------
;	 function hex2bcd
;	-----------------------------------------
_hex2bcd:
	mov	a,dpl
	mov	dptr,#_hex2bcd_x_65536_77
	movx	@dptr,a
	C$xcez_lib.c$50$1_0$78 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:50: y = (x / 10) << 4;
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	swap	a
	anl	a,#0xf0
	mov	r4,a
	C$xcez_lib.c$51$1_0$78 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:51: y = y | (x % 10);
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	pop	ar4
	mov	a,r6
	orl	ar4,a
	C$xcez_lib.c$52$1_0$78 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:52: return (y);
	mov	dpl,r4
	C$xcez_lib.c$53$1_0$78 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:53: }
	C$xcez_lib.c$53$1_0$78 ==.
	XG$hex2bcd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_random_between'
;------------------------------------------------------------
;high                      Allocated with name '_get_random_between_PARM_2'
;low                       Allocated with name '_get_random_between_low_65536_79'
;------------------------------------------------------------
	G$get_random_between$0$0 ==.
	C$xcez_lib.c$55$1_0$80 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:55: uint8_t get_random_between(uint8_t low,uint8_t high){
;	-----------------------------------------
;	 function get_random_between
;	-----------------------------------------
_get_random_between:
	mov	a,dpl
	mov	dptr,#_get_random_between_low_65536_79
	movx	@dptr,a
	C$xcez_lib.c$56$1_0$80 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:56: return rand() % high-1 + low;
	lcall	_rand
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_get_random_between_PARM_2
	movx	a,@dptr
	mov	dptr,#__modsint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	dec	r6
	mov	dptr,#_get_random_between_low_65536_79
	movx	a,@dptr
	add	a,r6
	C$xcez_lib.c$57$1_0$80 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:57: }
	C$xcez_lib.c$57$1_0$80 ==.
	XG$get_random_between$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hexbcd8'
;------------------------------------------------------------
;byte                      Allocated with name '_hexbcd8_byte_65536_81'
;------------------------------------------------------------
	G$hexbcd8$0$0 ==.
	C$xcez_lib.c$59$1_0$82 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:59: uint8_t hexbcd8(uint8_t byte){
;	-----------------------------------------
;	 function hexbcd8
;	-----------------------------------------
_hexbcd8:
	C$xcez_lib.c$72$1_0$82 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:72: __endasm;
	push	psw
	push	b
	mov	b,#0x0a
	mov	a,dpl
	div	ab
	swap	a
	add	a,b
	mov	dpl, a
	pop	b
	pop	psw
	ret
	C$xcez_lib.c$73$1_0$82 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:73: return;
	C$xcez_lib.c$74$1_0$82 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:74: }
	C$xcez_lib.c$74$1_0$82 ==.
	XG$hexbcd8$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_c'
;------------------------------------------------------------
	G$getchar_c$0$0 ==.
	C$xcez_lib.c$91$1_0$84 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:91: char getchar_c(void) {	
;	-----------------------------------------
;	 function getchar_c
;	-----------------------------------------
_getchar_c:
	C$xcez_lib.c$92$1_0$84 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:92: while(!ri); //wachten tot het karakter is ontvangen
00101$:
	C$xcez_lib.c$93$1_0$84 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:93: ri=0;
;	assignBit
	jbc	_ri,00114$
	sjmp	00101$
00114$:
	C$xcez_lib.c$94$1_0$84 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:94: return sbuf;
	mov	dpl,_sbuf
	C$xcez_lib.c$95$1_0$84 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:95: }
	C$xcez_lib.c$95$1_0$84 ==.
	XG$getchar_c$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay10us'
;------------------------------------------------------------
	G$delay10us$0$0 ==.
	C$xcez_lib.c$117$1_0$86 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:117: void delay10us (void){
;	-----------------------------------------
;	 function delay10us
;	-----------------------------------------
_delay10us:
	C$xcez_lib.c$127$1_0$86 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:127: __endasm;
	push	acc
	push	psw
	mov	acc,#0x1a
	0002$:
	djnz	acc,0002$
	pop	psw
	pop	acc
	C$xcez_lib.c$129$1_0$86 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:129: }				//ret ;165ns
	C$xcez_lib.c$129$1_0$86 ==.
	XG$delay10us$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay1ms'
;------------------------------------------------------------
;i                         Allocated with name '_delay1ms_i_65536_88'
;------------------------------------------------------------
	G$delay1ms$0$0 ==.
	C$xcez_lib.c$138$1_0$89 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:138: void delay1ms (void){
;	-----------------------------------------
;	 function delay1ms
;	-----------------------------------------
_delay1ms:
	C$xcez_lib.c$140$2_0$89 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:140: for(i=0; i < 100; i++){
	mov	r7,#0x64
00104$:
	C$xcez_lib.c$141$3_0$90 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:141: delay10us();
	push	ar7
	lcall	_delay10us
	pop	ar7
	C$xcez_lib.c$140$3_0$90 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:140: for(i=0; i < 100; i++){
	djnz	r7,00104$
	C$xcez_lib.c$143$2_0$89 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:143: }	
	C$xcez_lib.c$143$2_0$89 ==.
	XG$delay1ms$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_65536_91'
;i                         Allocated with name '_delay_i_65536_92'
;------------------------------------------------------------
	G$delay$0$0 ==.
	C$xcez_lib.c$154$2_0$93 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:154: void delay (uint16_t ms){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_ms_65536_91
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$xcez_lib.c$158$2_0$93 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:158: for(i=0;i < ms;i++){
	mov	dptr,#_delay_ms_65536_91
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
	C$xcez_lib.c$159$3_0$94 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:159: delay1ms();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay1ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$xcez_lib.c$158$2_0$93 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:158: for(i=0;i < ms;i++){
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
	C$xcez_lib.c$161$2_0$93 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:161: }
	C$xcez_lib.c$161$2_0$93 ==.
	XG$delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initsio'
;------------------------------------------------------------
;tmpStack                  Allocated with name '_initsio_tmpStack_65536_96'
;------------------------------------------------------------
	G$initsio$0$0 ==.
	C$xcez_lib.c$177$2_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:177: void initsio (void){
;	-----------------------------------------
;	 function initsio
;	-----------------------------------------
_initsio:
	C$xcez_lib.c$180$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:180: tmpStack[0] = syscon0;
	mov	dptr,#_initsio_tmpStack_65536_96
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$181$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:181: tmpStack[1] = port_page;
	mov	dptr,#(_initsio_tmpStack_65536_96 + 0x0001)
	mov	a,_port_page
	movx	@dptr,a
	C$xcez_lib.c$182$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:182: tmpStack[2] = scu_page;
	mov	dptr,#(_initsio_tmpStack_65536_96 + 0x0002)
	mov	a,_scu_page
	movx	@dptr,a
	C$xcez_lib.c$184$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:184: syscon0 = 0x04;  //hier zit al wat we nodig hebben
	mov	_syscon0,#0x04
	C$xcez_lib.c$185$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:185: scu_page = 0x00; //pagina 0 system control regs
	mov	_scu_page,#0x00
	C$xcez_lib.c$187$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:187: port_page = 0x02; //pagina 2 selecteren
	mov	_port_page,#0x02
	C$xcez_lib.c$188$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:188: p1_altsel0 &= 0b11111101; 
	anl	_p1_altsel0,#0xfd
	C$xcez_lib.c$189$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:189: p1_altsel0 |= 0b00000001;
	orl	_p1_altsel0,#0x01
	C$xcez_lib.c$190$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:190: p1_altsel1 &= 0b11111110;
	anl	_p1_altsel1,#0xfe
	C$xcez_lib.c$191$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:191: p1_altsel1 |= 0b00000010;
	orl	_p1_altsel1,#0x02
	C$xcez_lib.c$193$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:193: port_page = 0x00; //pagina 0 selecteren
	mov	_port_page,#0x00
	C$xcez_lib.c$194$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:194: p1_dir &= 0b11111110; //p1.0=input
	anl	_p1_dir,#0xfe
	C$xcez_lib.c$195$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:195: p1_dir |= 0b00000010; //p1.1=output
	orl	_p1_dir,#0x02
	C$xcez_lib.c$200$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:200: scon = 0b01010000;     //UART initialiseren
	mov	_scon,#0x50
	C$xcez_lib.c$204$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:204: bg = 155; //zie 12-13 in XC888 UM
	mov	_bg,#0x9b
	C$xcez_lib.c$205$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:205: bcon = 0b00010001;
	mov	_bcon,#0x11
	C$xcez_lib.c$207$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:207: syscon0 = tmpStack[0];
	mov	dptr,#_initsio_tmpStack_65536_96
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$208$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:208: port_page = tmpStack[1];
	mov	dptr,#(_initsio_tmpStack_65536_96 + 0x0001)
	movx	a,@dptr
	mov	_port_page,a
	C$xcez_lib.c$209$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:209: scu_page = tmpStack[2]; 
	mov	dptr,#(_initsio_tmpStack_65536_96 + 0x0002)
	movx	a,@dptr
	mov	_scu_page,a
	C$xcez_lib.c$210$1_0$96 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:210: }
	C$xcez_lib.c$210$1_0$96 ==.
	XG$initsio$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initiic'
;------------------------------------------------------------
	G$initiic$0$0 ==.
	C$xcez_lib.c$246$1_0$98 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:246: void initiic (void)
;	-----------------------------------------
;	 function initiic
;	-----------------------------------------
_initiic:
	C$xcez_lib.c$264$1_0$98 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:264: __endasm;
	push	_syscon0
	mov	_syscon0,#0x04
	push	_port_page
	mov	_port_page,#0x00
	setb	_sda
	setb	_scl
	mov	_port_page,#0x03
	setb	_scl
	setb	_sda
	mov	_port_page,#0x00
	orl	_p3_dir,#0b00001000
	anl	_p3_dir,#0b01111011
	pop	_port_page
	pop	_syscon0
	ret
	C$xcez_lib.c$265$1_0$98 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:265: }
	C$xcez_lib.c$265$1_0$98 ==.
	XG$initiic$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iicstart'
;------------------------------------------------------------
	G$iicstart$0$0 ==.
	C$xcez_lib.c$267$1_0$100 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:267: void iicstart (void){
;	-----------------------------------------
;	 function iicstart
;	-----------------------------------------
_iicstart:
	C$xcez_lib.c$284$1_0$100 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:284: __endasm;
	push	_syscon0
	mov	_syscon0, #0x04
	push	_port_page
	mov	_port_page,#0x00
	setb	_scl
	setb	_sda
	orl	_p3_dir,#0b00000100
	lcall	_delay10us
	clr	_sda
	lcall	_delay10us
	clr	_scl
	lcall	_delay10us
	pop	_port_page
	pop	_syscon0
	ret
	C$xcez_lib.c$285$1_0$100 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:285: }
	C$xcez_lib.c$285$1_0$100 ==.
	XG$iicstart$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iicstop'
;------------------------------------------------------------
	G$iicstop$0$0 ==.
	C$xcez_lib.c$287$1_0$102 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:287: void iicstop (void){
;	-----------------------------------------
;	 function iicstop
;	-----------------------------------------
_iicstop:
	C$xcez_lib.c$304$1_0$102 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:304: __endasm;
	push	_syscon0
	mov	_syscon0, #0x04
	push	_port_page
	mov	_port_page,#0x00
	orl	_p3_dir, #0b00000100
	clr	_sda
	lcall	_delay10us
	setb	_scl
	lcall	_delay10us
	setb	_sda
	lcall	_delay10us
	anl	_p3_dir,#0b11111011
	pop	_port_page
	pop	_syscon0
	ret
	C$xcez_lib.c$305$1_0$102 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:305: }
	C$xcez_lib.c$305$1_0$102 ==.
	XG$iicstop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iicoutbyte'
;------------------------------------------------------------
;databyte                  Allocated with name '_iicoutbyte_databyte_65536_103'
;------------------------------------------------------------
	G$iicoutbyte$0$0 ==.
	C$xcez_lib.c$307$1_0$104 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:307: uint8_t iicoutbyte (uint8_t databyte){
;	-----------------------------------------
;	 function iicoutbyte
;	-----------------------------------------
_iicoutbyte:
	C$xcez_lib.c$339$1_0$104 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:339: __endasm;
	push	acc
	push	b
	push	_syscon0
	mov	_syscon0, #0x04
	push	_port_page
	mov	_port_page, #0x00
	mov	a, dpl
	mov	b, #0x08
	orl	_p3_dir,#0b00000100
	00501$:
	rlc	a
	mov	_sda,c
	lcall	_delay10us
	setb	_scl
	lcall	_delay10us
	clr	_scl
	djnz	b,00501$
	anl	_p3_dir,#0b11111011
	lcall	_delay10us
	setb	_scl
	mov	c,_sda
	lcall	_delay10us
	clr	_scl
	mov	dpl,c
	mov	a,dpl
	pop	_port_page
	pop	_syscon0
	pop	b
	pop	acc
	ret
	C$xcez_lib.c$340$1_0$104 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:340: return 0;
	mov	dpl,#0x00
	C$xcez_lib.c$341$1_0$104 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:341: }
	C$xcez_lib.c$341$1_0$104 ==.
	XG$iicoutbyte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iicinbyte'
;------------------------------------------------------------
;ack                       Allocated with name '_iicinbyte_ack_65536_105'
;i                         Allocated with name '_iicinbyte_i_65536_106'
;databyte                  Allocated with name '_iicinbyte_databyte_65536_106'
;tmpStack                  Allocated with name '_iicinbyte_tmpStack_65536_106'
;------------------------------------------------------------
	G$iicinbyte$0$0 ==.
	C$xcez_lib.c$525$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:525: uint8_t iicinbyte (uint8_t ack){
;	-----------------------------------------
;	 function iicinbyte
;	-----------------------------------------
_iicinbyte:
	mov	a,dpl
	mov	dptr,#_iicinbyte_ack_65536_105
	movx	@dptr,a
	C$xcez_lib.c$527$2_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:527: uint8_t databyte = 0;
	mov	dptr,#_iicinbyte_databyte_65536_106
	clr	a
	movx	@dptr,a
	C$xcez_lib.c$529$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:529: tmpStack[0] = syscon0;
	mov	dptr,#_iicinbyte_tmpStack_65536_106
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$530$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:530: tmpStack[1] = port_page;
	mov	dptr,#(_iicinbyte_tmpStack_65536_106 + 0x0001)
	mov	a,_port_page
	movx	@dptr,a
	C$xcez_lib.c$532$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:532: syscon0 = 0x04;		//hoofdmap selecteren
	mov	_syscon0,#0x04
	C$xcez_lib.c$533$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:533: port_page = 0x00;      	//hier zit alles wat we nodig hebben
	mov	_port_page,#0x00
	C$xcez_lib.c$534$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:534: p3_dir &= sdain;	//pin als input schakelen
	anl	_p3_dir,#0xfb
	C$xcez_lib.c$536$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:536: for(i=0; i < 8; i++){
	mov	r7,#0x00
00102$:
	C$xcez_lib.c$537$3_0$108 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:537: delay10us();
	push	ar7
	lcall	_delay10us
	C$xcez_lib.c$538$3_0$108 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:538: scl = 1;	//klok hoog
;	assignBit
	setb	_p3_data_3
	C$xcez_lib.c$539$3_0$108 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:539: databyte = databyte << 1;
	mov	dptr,#_iicinbyte_databyte_65536_106
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	C$xcez_lib.c$540$3_0$108 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:540: databyte |= sda;//pin inlezen
	movx	a,@dptr
	mov	r6,a
	mov	c,_p3_data_2
	clr	a
	rlc	a
	mov	dptr,#_iicinbyte_databyte_65536_106
	orl	a,r6
	movx	@dptr,a
	C$xcez_lib.c$541$3_0$108 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:541: delay10us();
	lcall	_delay10us
	pop	ar7
	C$xcez_lib.c$542$3_0$108 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:542: scl = 0;	//klok terug laag
;	assignBit
	clr	_p3_data_3
	C$xcez_lib.c$536$2_0$107 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:536: for(i=0; i < 8; i++){
	inc	r7
	cjne	r7,#0x08,00115$
00115$:
	jc	00102$
	C$xcez_lib.c$544$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:544: p3_dir |= sdaout;	//pin als output schakelen
	orl	_p3_dir,#0x04
	C$xcez_lib.c$545$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:545: sda = ack;              //ack of nack genereren
	mov	dptr,#_iicinbyte_ack_65536_105
	movx	a,@dptr
;	assignBit
	add	a,#0xff
	mov	_p3_data_2,c
	C$xcez_lib.c$546$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:546: delay10us();
	lcall	_delay10us
	C$xcez_lib.c$547$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:547: scl = 1;
;	assignBit
	setb	_p3_data_3
	C$xcez_lib.c$548$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:548: delay10us();
	lcall	_delay10us
	C$xcez_lib.c$549$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:549: scl = 0;
;	assignBit
	clr	_p3_data_3
	C$xcez_lib.c$550$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:550: p3_dir &= sdain;	//pin terug als input schakelen
	anl	_p3_dir,#0xfb
	C$xcez_lib.c$551$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:551: syscon0 = tmpStack[0];
	mov	dptr,#_iicinbyte_tmpStack_65536_106
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$552$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:552: port_page = tmpStack[1];
	mov	dptr,#(_iicinbyte_tmpStack_65536_106 + 0x0001)
	movx	a,@dptr
	mov	_port_page,a
	C$xcez_lib.c$553$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:553: return databyte;	//ack of niet terug geven
	mov	dptr,#_iicinbyte_databyte_65536_106
	movx	a,@dptr
	C$xcez_lib.c$554$1_0$106 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:554: }
	C$xcez_lib.c$554$1_0$106 ==.
	XG$iicinbyte$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'porttolcd'
;------------------------------------------------------------
;databyte                  Allocated with name '_porttolcd_databyte_65536_109'
;------------------------------------------------------------
	Fxcez_lib$porttolcd$0$0 ==.
	C$xcez_lib.c$570$1_0$110 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:570: static void porttolcd (uint8_t databyte){
;	-----------------------------------------
;	 function porttolcd
;	-----------------------------------------
_porttolcd:
	mov	a,dpl
	mov	dptr,#_porttolcd_databyte_65536_109
	movx	@dptr,a
	C$xcez_lib.c$571$1_0$110 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:571: iicstart();		//vertrokken
	lcall	_iicstart
	C$xcez_lib.c$572$1_0$110 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:572: iicoutbyte(0b01000000); //schrijven naar expander
	mov	dpl,#0x40
	lcall	_iicoutbyte
	C$xcez_lib.c$573$1_0$110 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:573: iicoutbyte(databyte); 
	mov	dptr,#_porttolcd_databyte_65536_109
	movx	a,@dptr
	mov	dpl,a
	lcall	_iicoutbyte
	C$xcez_lib.c$574$1_0$110 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:574: iicstop();      	//transactie sluiten
	lcall	_iicstop
	C$xcez_lib.c$575$1_0$110 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:575: }
	C$xcez_lib.c$575$1_0$110 ==.
	XFxcez_lib$porttolcd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdtoport'
;------------------------------------------------------------
;retv                      Allocated with name '_lcdtoport_retv_65536_112'
;------------------------------------------------------------
	Fxcez_lib$lcdtoport$0$0 ==.
	C$xcez_lib.c$587$1_0$112 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:587: static uint8_t lcdtoport (void){
;	-----------------------------------------
;	 function lcdtoport
;	-----------------------------------------
_lcdtoport:
	C$xcez_lib.c$589$1_0$112 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:589: iicstart();		//vertrokken
	lcall	_iicstart
	C$xcez_lib.c$590$1_0$112 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:590: iicoutbyte(0b01000001); //lezen van expander
	mov	dpl,#0x41
	lcall	_iicoutbyte
	C$xcez_lib.c$591$1_0$112 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:591: retv = iicinbyte(IIC_NACK); //data inlezen
	mov	dpl,#0x01
	lcall	_iicinbyte
	mov	r7,dpl
	C$xcez_lib.c$592$1_0$112 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:592: iicstop();      	//transactie sluiten
	push	ar7
	lcall	_iicstop
	pop	ar7
	C$xcez_lib.c$593$1_0$112 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:593: return retv;
	mov	dpl,r7
	C$xcez_lib.c$594$1_0$112 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:594: }
	C$xcez_lib.c$594$1_0$112 ==.
	XFxcez_lib$lcdtoport$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'outhnib'
;------------------------------------------------------------
;data_or_not               Allocated with name '_outhnib_PARM_2'
;databyte                  Allocated with name '_outhnib_databyte_65536_113'
;------------------------------------------------------------
	Fxcez_lib$outhnib$0$0 ==.
	C$xcez_lib.c$607$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:607: static void outhnib (uint8_t databyte, uint8_t data_or_not){
;	-----------------------------------------
;	 function outhnib
;	-----------------------------------------
_outhnib:
	mov	a,dpl
	mov	dptr,#_outhnib_databyte_65536_113
	movx	@dptr,a
	C$xcez_lib.c$609$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:609: lcdport.byte = lcdtoport();	//lees de expander
	lcall	_lcdtoport
	mov	r7,dpl
	mov	dptr,#_lcdport
	mov	a,r7
	movx	@dptr,a
	C$xcez_lib.c$610$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:610: lcdport.rs = data_or_not;		//controle lijn in orde voor data of commando
	mov	dptr,#_outhnib_PARM_2
	movx	a,@dptr
	mov	dptr,#_lcdport
	rrc	a
	movx	a,@dptr
	mov	acc.0,c
	movx	@dptr,a
	C$xcez_lib.c$611$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:611: lcdport.e = 0;			//deselectie display
	mov	dptr,#_lcdport
	movx	a,@dptr
	anl	a,#0xfd
	movx	@dptr,a
	C$xcez_lib.c$612$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:612: lcdport.databits = (databyte & 0xf0)>>4;
	mov	dptr,#_outhnib_databyte_65536_113
	movx	a,@dptr
	anl	a,#0xf0
	swap	a
	anl	a,#0x0f
	mov	dptr,#_lcdport
	add	a,acc
	add	a,acc
	anl	a,#0x3c
	mov	b,a
	movx	a,@dptr
	anl	a,#0xc3
	orl	a,b
	movx	@dptr,a
	C$xcez_lib.c$613$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:613: porttolcd(lcdport.byte);
	mov	dptr,#_lcdport
	movx	a,@dptr
	mov	dpl,r7
	lcall	_porttolcd
	C$xcez_lib.c$614$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:614: lcdport.e = 1;
	mov	dptr,#_lcdport
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
	C$xcez_lib.c$615$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:615: porttolcd(lcdport.byte);
	mov	dptr,#_lcdport
	movx	a,@dptr
	mov	dpl,a
	lcall	_porttolcd
	C$xcez_lib.c$616$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:616: lcdport.e = 0;
	mov	dptr,#_lcdport
	movx	a,@dptr
	anl	a,#0xfd
	movx	@dptr,a
	C$xcez_lib.c$617$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:617: porttolcd(lcdport.byte);
	mov	dptr,#_lcdport
	movx	a,@dptr
	mov	dpl,a
	lcall	_porttolcd
	C$xcez_lib.c$618$1_0$114 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:618: }
	C$xcez_lib.c$618$1_0$114 ==.
	XFxcez_lib$outhnib$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'out'
;------------------------------------------------------------
;data_or_not               Allocated with name '_out_PARM_2'
;databyte                  Allocated with name '_out_databyte_65536_115'
;------------------------------------------------------------
	G$out$0$0 ==.
	C$xcez_lib.c$634$1_0$116 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:634: void out(uint8_t databyte, uint8_t data_or_not){
;	-----------------------------------------
;	 function out
;	-----------------------------------------
_out:
	mov	a,dpl
	mov	dptr,#_out_databyte_65536_115
	movx	@dptr,a
	C$xcez_lib.c$635$1_0$116 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:635: outhnib(databyte, data_or_not);     //hoogste vier bits verzenden
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_out_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_outhnib_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_outhnib
	C$xcez_lib.c$636$1_0$116 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:636: delay(2);		//niet echt nodig
	mov	dptr,#0x0002
	lcall	_delay
	pop	ar6
	pop	ar7
	C$xcez_lib.c$637$1_0$116 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:637: outhnib(databyte<<4, data_or_not);  //laagste vier bits verzenden
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	dptr,#_outhnib_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	lcall	_outhnib
	C$xcez_lib.c$638$1_0$116 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:638: delay(2);		//altijd goed voor traagste commando
	mov	dptr,#0x0002
	lcall	_delay
	C$xcez_lib.c$639$1_0$116 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:639: }
	C$xcez_lib.c$639$1_0$116 ==.
	XG$out$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdlight'
;------------------------------------------------------------
;state                     Allocated with name '_lcdlight_state_65536_117'
;------------------------------------------------------------
	G$lcdlight$0$0 ==.
	C$xcez_lib.c$649$1_0$118 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:649: void lcdlight(uint8_t state){
;	-----------------------------------------
;	 function lcdlight
;	-----------------------------------------
_lcdlight:
	mov	a,dpl
	mov	dptr,#_lcdlight_state_65536_117
	movx	@dptr,a
	C$xcez_lib.c$662$1_0$118 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:662: if(state){
	movx	a,@dptr
	jz	00102$
	C$xcez_lib.c$663$2_0$119 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:663: state = lcdtoport();
	lcall	_lcdtoport
	mov	a,dpl
	C$xcez_lib.c$664$2_0$119 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:664: state &= 0b10111111;
	mov	dptr,#_lcdlight_state_65536_117
	anl	a,#0xbf
	movx	@dptr,a
	sjmp	00103$
00102$:
	C$xcez_lib.c$666$2_0$120 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:666: state = lcdtoport();
	lcall	_lcdtoport
	mov	a,dpl
	C$xcez_lib.c$667$2_0$120 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:667: state |= 0b01000000;
	mov	dptr,#_lcdlight_state_65536_117
	orl	a,#0x40
	movx	@dptr,a
00103$:
	C$xcez_lib.c$669$1_0$118 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:669: porttolcd(state);
	mov	dptr,#_lcdlight_state_65536_117
	movx	a,@dptr
	mov	dpl,a
	lcall	_porttolcd
	C$xcez_lib.c$670$1_0$118 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:670: }
	C$xcez_lib.c$670$1_0$118 ==.
	XG$lcdlight$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbuzzer'
;------------------------------------------------------------
;state                     Allocated with name '_lcdbuzzer_state_65536_121'
;------------------------------------------------------------
	G$lcdbuzzer$0$0 ==.
	C$xcez_lib.c$682$1_0$122 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:682: void lcdbuzzer(uint8_t state){
;	-----------------------------------------
;	 function lcdbuzzer
;	-----------------------------------------
_lcdbuzzer:
	mov	a,dpl
	mov	dptr,#_lcdbuzzer_state_65536_121
	movx	@dptr,a
	C$xcez_lib.c$684$1_0$122 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:684: if(state){
	movx	a,@dptr
	jz	00102$
	C$xcez_lib.c$685$2_0$123 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:685: state = lcdtoport();
	lcall	_lcdtoport
	mov	a,dpl
	C$xcez_lib.c$686$2_0$123 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:686: state &= 0b01111111;
	mov	dptr,#_lcdbuzzer_state_65536_121
	anl	a,#0x7f
	movx	@dptr,a
	sjmp	00103$
00102$:
	C$xcez_lib.c$688$2_0$124 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:688: state = lcdtoport();
	lcall	_lcdtoport
	mov	a,dpl
	C$xcez_lib.c$689$2_0$124 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:689: state |= 0b10000000;
	mov	dptr,#_lcdbuzzer_state_65536_121
	orl	a,#0x80
	movx	@dptr,a
00103$:
	C$xcez_lib.c$691$1_0$122 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:691: porttolcd(state);
	mov	dptr,#_lcdbuzzer_state_65536_121
	movx	a,@dptr
	mov	dpl,a
	lcall	_porttolcd
	C$xcez_lib.c$692$1_0$122 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:692: }
	C$xcez_lib.c$692$1_0$122 ==.
	XG$lcdbuzzer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initlcd'
;------------------------------------------------------------
	G$initlcd$0$0 ==.
	C$xcez_lib.c$719$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:719: void initlcd (void){
;	-----------------------------------------
;	 function initlcd
;	-----------------------------------------
_initlcd:
	C$xcez_lib.c$720$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:720: initiic();				//vermits de LCD gebruikt wordt via een IIC bus
	lcall	_initiic
	C$xcez_lib.c$721$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:721: porttolcd(0b11111101);	//poort in uitgangstoestand zetten buzzer en baklight worden nu op 1 gezet
	mov	dpl,#0xfd
	lcall	_porttolcd
	C$xcez_lib.c$722$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:722: delay(32);				//bij opstarten meer dan 30ms wachten
	mov	dptr,#0x0020
	lcall	_delay
	C$xcez_lib.c$724$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:724: outhnib(0b00110000, LCD_COMMAND);	//volgende drie schrijfbeurten zijn een truuk om het display altijd opgestart te krijgen.
	mov	dptr,#_outhnib_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_outhnib
	C$xcez_lib.c$725$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:725: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	C$xcez_lib.c$726$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:726: outhnib(0b00110000, LCD_COMMAND);	
	mov	dptr,#_outhnib_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_outhnib
	C$xcez_lib.c$727$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:727: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	C$xcez_lib.c$728$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:728: outhnib(0b00110000, LCD_COMMAND);	
	mov	dptr,#_outhnib_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x30
	lcall	_outhnib
	C$xcez_lib.c$729$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:729: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	C$xcez_lib.c$731$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:731: outhnib(0b00100000, LCD_COMMAND);	//instellen 4 bit interface gebruiken
	mov	dptr,#_outhnib_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x20
	lcall	_outhnib
	C$xcez_lib.c$732$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:732: delay(2);							//niet nodig volgens datasheet
	mov	dptr,#0x0002
	lcall	_delay
	C$xcez_lib.c$734$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:734: out(functions, LCD_COMMAND);	//4 bit interface, twee lijnen 5*8 dots
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x28
	lcall	_out
	C$xcez_lib.c$735$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:735: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	C$xcez_lib.c$737$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:737: out(cursoronb, LCD_COMMAND);	//display on cursor on and blink
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_out
	C$xcez_lib.c$738$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:738: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	C$xcez_lib.c$740$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:740: out(displayon, LCD_COMMAND);	//clear display and home cursor
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_out
	C$xcez_lib.c$741$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:741: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	C$xcez_lib.c$743$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:743: out(entrymode, LCD_COMMAND);	//display klaar zetten normaal gebruik
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_out
	C$xcez_lib.c$744$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:744: delay(2);						//wachten weer veel te lang
	mov	dptr,#0x0002
	lcall	_delay
	C$xcez_lib.c$746$1_0$126 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:746: }
	C$xcez_lib.c$746$1_0$126 ==.
	XG$initlcd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputchar'
;------------------------------------------------------------
;databyte                  Allocated with name '_lcdputchar_databyte_65536_127'
;------------------------------------------------------------
	G$lcdputchar$0$0 ==.
	C$xcez_lib.c$769$1_0$128 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:769: void lcdputchar(uint8_t databyte){
;	-----------------------------------------
;	 function lcdputchar
;	-----------------------------------------
_lcdputchar:
	mov	a,dpl
	mov	dptr,#_lcdputchar_databyte_65536_127
	movx	@dptr,a
	C$xcez_lib.c$770$1_0$128 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:770: if(databyte >= 0x80){
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00140$
00140$:
	jc	00102$
	C$xcez_lib.c$772$2_0$129 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:772: out(databyte, LCD_COMMAND);
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r7
	lcall	_out
	C$xcez_lib.c$773$2_0$129 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:773: return;
	ljmp	00114$
00102$:
	C$xcez_lib.c$775$1_0$128 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:775: if(databyte > 20 || databyte < 8){
	mov	a,r7
	add	a,#0xff - 0x14
	jc	00103$
	cjne	r7,#0x08,00143$
00143$:
	jnc	00104$
00103$:
	C$xcez_lib.c$777$2_0$130 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:777: out(databyte, LCD_DATA);
	mov	dptr,#_lcdputchar_databyte_65536_127
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_out_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r6
	lcall	_out
	C$xcez_lib.c$778$2_0$130 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:778: return;
	sjmp	00114$
00104$:
	C$xcez_lib.c$782$1_0$128 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:782: if(databyte == LCD_CLEARSCREEN){	//scherm wissen en cursor in home position
	cjne	r7,#0x10,00107$
	C$xcez_lib.c$783$2_0$131 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:783: out(cleardisp, LCD_COMMAND);
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_out
	C$xcez_lib.c$784$2_0$131 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:784: out(cursathom, LCD_COMMAND);
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_out
	C$xcez_lib.c$785$2_0$131 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:785: return;	
	sjmp	00114$
00107$:
	C$xcez_lib.c$787$1_0$128 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:787: if(databyte == LCD_BLOCK_BLINK){	//geen cursor on blink
	cjne	r7,#0x11,00109$
	C$xcez_lib.c$788$2_0$132 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:788: out(cursoronb, LCD_COMMAND);
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x0f
	lcall	_out
	C$xcez_lib.c$789$2_0$132 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:789: return;	
	sjmp	00114$
00109$:
	C$xcez_lib.c$791$1_0$128 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:791: if(databyte == LCD_NO_BLOCK_BLINK){	//geen cursor on no blink
	cjne	r7,#0x12,00111$
	C$xcez_lib.c$792$2_0$133 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:792: out(cursoronn, LCD_COMMAND);
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x0e
	lcall	_out
	C$xcez_lib.c$793$2_0$133 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:793: return;	
	sjmp	00114$
00111$:
	C$xcez_lib.c$795$1_0$128 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:795: if(databyte == LCD_NO_CURSOR){		//cursor uitschakelen
	cjne	r7,#0x13,00114$
	C$xcez_lib.c$796$2_0$134 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:796: out(cursoroff, LCD_COMMAND);
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x0c
	lcall	_out
	C$xcez_lib.c$797$2_0$134 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:797: return;	
00114$:
	C$xcez_lib.c$799$1_0$128 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:799: }
	C$xcez_lib.c$799$1_0$128 ==.
	XG$lcdputchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbuild'
;------------------------------------------------------------
;bitmapdata                Allocated with name '_lcdbuild_bitmapdata_65536_135'
;------------------------------------------------------------
	G$lcdbuild$0$0 ==.
	C$xcez_lib.c$833$1_0$136 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:833: void lcdbuild (uint8_t *bitmapdata){
;	-----------------------------------------
;	 function lcdbuild
;	-----------------------------------------
_lcdbuild:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_lcdbuild_bitmapdata_65536_135
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$xcez_lib.c$834$1_0$136 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:834: out(cgram, LCD_COMMAND);			//Karakter generator RAM selecteren
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x40
	lcall	_out
	C$xcez_lib.c$835$1_0$136 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:835: do{
	mov	dptr,#_lcdbuild_bitmapdata_65536_135
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	C$xcez_lib.c$836$2_0$137 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:836: out(*bitmapdata, LCD_DATA);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_out_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_out
	pop	ar5
	pop	ar6
	pop	ar7
	C$xcez_lib.c$837$1_0$136 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:837: }while(((*(bitmapdata++)) & 0x80) != 0x80);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_lcdbuild_bitmapdata_65536_135
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	anl	ar4,#0x80
	mov	r3,#0x00
	cjne	r4,#0x80,00101$
	cjne	r3,#0x00,00101$
	C$xcez_lib.c$838$1_0$136 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:838: out(ddram, LCD_COMMAND);			//Data display RAM selecteren
	mov	dptr,#_lcdbuild_bitmapdata_65536_135
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_out_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x80
	lcall	_out
	C$xcez_lib.c$839$1_0$136 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:839: }
	C$xcez_lib.c$839$1_0$136 ==.
	XG$lcdbuild$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initleds'
;------------------------------------------------------------
;tmpStack                  Allocated with name '_initleds_tmpStack_65536_139'
;------------------------------------------------------------
	G$initleds$0$0 ==.
	C$xcez_lib.c$862$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:862: void initleds (void){
;	-----------------------------------------
;	 function initleds
;	-----------------------------------------
_initleds:
	C$xcez_lib.c$864$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:864: tmpStack[0] = syscon0;
	mov	dptr,#_initleds_tmpStack_65536_139
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$865$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:865: tmpStack[1] = port_page;
	mov	dptr,#(_initleds_tmpStack_65536_139 + 0x0001)
	mov	a,_port_page
	movx	@dptr,a
	C$xcez_lib.c$867$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:867: syscon0 = 0x04;  //juiste map selecteren	
	mov	_syscon0,#0x04
	C$xcez_lib.c$868$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:868: port_page = 0x00; //selecteer poort page 0
	mov	_port_page,#0x00
	C$xcez_lib.c$869$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:869: p4_dir = 0xff;    //poort 3 als output schakelen
	mov	_p4_dir,#0xff
	C$xcez_lib.c$871$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:871: syscon0 = tmpStack[0];
	mov	dptr,#_initleds_tmpStack_65536_139
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$872$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:872: port_page = tmpStack[1];
	mov	dptr,#(_initleds_tmpStack_65536_139 + 0x0001)
	movx	a,@dptr
	mov	_port_page,a
	C$xcez_lib.c$873$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:873: p4_data = 0x0;
	mov	_p4_data,#0x00
	C$xcez_lib.c$874$1_0$139 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:874: }
	C$xcez_lib.c$874$1_0$139 ==.
	XG$initleds$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_buttons'
;------------------------------------------------------------
	G$init_buttons$0$0 ==.
	C$xcez_lib.c$895$1_0$141 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:895: void init_buttons(void){
;	-----------------------------------------
;	 function init_buttons
;	-----------------------------------------
_init_buttons:
	C$xcez_lib.c$908$1_0$141 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:908: __endasm;
	push	_syscon0
	mov	_syscon0, #0x04
	push	_port_page
	mov	_port_page, #0x01
	orl	_p2_pudsel, #0x3f
	orl	_p2_puden, #0x3f
	mov	_port_page, #0x00
	anl	_p2_dir, #0x3f
	pop	_port_page
	pop	_syscon0
	ret
	C$xcez_lib.c$909$1_0$141 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:909: }
	C$xcez_lib.c$909$1_0$141 ==.
	XG$init_buttons$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initftoetsen'
;------------------------------------------------------------
;tmpStack                  Allocated with name '_initftoetsen_tmpStack_65536_143'
;------------------------------------------------------------
	G$initftoetsen$0$0 ==.
	C$xcez_lib.c$911$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:911: void initftoetsen (void){
;	-----------------------------------------
;	 function initftoetsen
;	-----------------------------------------
_initftoetsen:
	C$xcez_lib.c$913$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:913: tmpStack[0] = syscon0;
	mov	dptr,#_initftoetsen_tmpStack_65536_143
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$914$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:914: tmpStack[1] = port_page;
	mov	dptr,#(_initftoetsen_tmpStack_65536_143 + 0x0001)
	mov	a,_port_page
	movx	@dptr,a
	C$xcez_lib.c$915$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:915: syscon0 = 0x04;			//juiste map selecteren
	mov	_syscon0,#0x04
	C$xcez_lib.c$916$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:916: port_page = 0x01;		//selecteer poort page 1
	mov	_port_page,#0x01
	C$xcez_lib.c$917$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:917: p2_pudsel |= 0x0f;		//selecteer pull_up device (onderste 4 pinnen)
	orl	_p2_pudsel,#0x0f
	C$xcez_lib.c$918$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:918: p2_puden |= 0x0f;		//selectie inschakelen (onderste 4 pinnen)
	orl	_p2_puden,#0x0f
	C$xcez_lib.c$919$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:919: port_page = 0x00;		//pagina 0 selecteren
	mov	_port_page,#0x00
	C$xcez_lib.c$920$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:920: p2_dir &= 0xf0;			//input drivers activeren (onderste 4 pinnen)
	anl	_p2_dir,#0xf0
	C$xcez_lib.c$921$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:921: syscon0 = tmpStack[0];
	mov	dptr,#_initftoetsen_tmpStack_65536_143
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$922$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:922: port_page = tmpStack[1];
	mov	dptr,#(_initftoetsen_tmpStack_65536_143 + 0x0001)
	movx	a,@dptr
	mov	_port_page,a
	C$xcez_lib.c$923$1_0$143 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:923: }
	C$xcez_lib.c$923$1_0$143 ==.
	XG$initftoetsen$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initdipswitch'
;------------------------------------------------------------
;tmpStack                  Allocated with name '_initdipswitch_tmpStack_65536_145'
;------------------------------------------------------------
	G$initdipswitch$0$0 ==.
	C$xcez_lib.c$940$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:940: void initdipswitch (void){
;	-----------------------------------------
;	 function initdipswitch
;	-----------------------------------------
_initdipswitch:
	C$xcez_lib.c$942$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:942: tmpStack[0] = syscon0;
	mov	dptr,#_initdipswitch_tmpStack_65536_145
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$943$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:943: tmpStack[1] = port_page;
	mov	dptr,#(_initdipswitch_tmpStack_65536_145 + 0x0001)
	mov	a,_port_page
	movx	@dptr,a
	C$xcez_lib.c$944$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:944: syscon0 = 0x04;			//juiste map selecteren
	mov	_syscon0,#0x04
	C$xcez_lib.c$945$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:945: port_page = 0x01;		//selecteer poort page 1
	mov	_port_page,#0x01
	C$xcez_lib.c$946$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:946: p4_pudsel = 0xff;		//selecteer pull_up device
	mov	_p4_pudsel,#0xff
	C$xcez_lib.c$947$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:947: p4_puden = 0xff;		//selectie inschakelen
	mov	_p4_puden,#0xff
	C$xcez_lib.c$948$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:948: port_page = 0x00;		//pagina 0 selecteren
	mov	_port_page,#0x00
	C$xcez_lib.c$949$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:949: p4_dir = 0x00;			//poort 4 als input schakelen
	mov	_p4_dir,#0x00
	C$xcez_lib.c$950$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:950: syscon0 = tmpStack[0];
	mov	dptr,#_initdipswitch_tmpStack_65536_145
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$951$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:951: port_page = tmpStack[1];
	mov	dptr,#(_initdipswitch_tmpStack_65536_145 + 0x0001)
	movx	a,@dptr
	mov	_port_page,a
	C$xcez_lib.c$952$1_0$145 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:952: }
	C$xcez_lib.c$952$1_0$145 ==.
	XG$initdipswitch$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initadcs'
;------------------------------------------------------------
;tmpStack                  Allocated with name '_initadcs_tmpStack_65536_147'
;------------------------------------------------------------
	G$initadcs$0$0 ==.
	C$xcez_lib.c$967$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:967: void initadcs (void){
;	-----------------------------------------
;	 function initadcs
;	-----------------------------------------
_initadcs:
	C$xcez_lib.c$969$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:969: tmpStack[0] = syscon0;
	mov	dptr,#_initadcs_tmpStack_65536_147
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$970$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:970: tmpStack[1] = adc_page;
	mov	dptr,#(_initadcs_tmpStack_65536_147 + 0x0001)
	mov	a,_adc_page
	movx	@dptr,a
	C$xcez_lib.c$971$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:971: syscon0 = 0x04;				//basis pagina selecteren
	mov	_syscon0,#0x04
	C$xcez_lib.c$972$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:972: adc_page = 0x00;			//pagina 0 selecteren
	mov	_adc_page,#0x00
	C$xcez_lib.c$973$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:973: adc_globctr = 0b10010000;	//adc inschakelen                   MUST!!
	mov	_adc_globctr,#0x90
	C$xcez_lib.c$976$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:976: adc_inpcr0 = 0x00;			//sample time verlengen met x klokpulsen (nu op 0)
	mov	_adc_inpcr0,#0x00
	C$xcez_lib.c$978$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:978: adc_prar = 0b01000000;		//arbitration slot seriële arbiratie activeren MUST!!
	mov	_adc_prar,#0x40
	C$xcez_lib.c$979$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:979: adc_page = 0x06;			//adc page 6 selecteren             MUST!!   
	mov	_adc_page,#0x06
	C$xcez_lib.c$980$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:980: adc_qmr0 = 0b00000001;		//engt=1 source on                  MUST!!
	mov	_adc_qmr0,#0x01
	C$xcez_lib.c$981$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:981: syscon0 = tmpStack[0];
	mov	dptr,#_initadcs_tmpStack_65536_147
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$982$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:982: adc_page = tmpStack[1];
	mov	dptr,#(_initadcs_tmpStack_65536_147 + 0x0001)
	movx	a,@dptr
	mov	_adc_page,a
	C$xcez_lib.c$983$1_0$147 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:983: }
	C$xcez_lib.c$983$1_0$147 ==.
	XG$initadcs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getadc'
;------------------------------------------------------------
;channel                   Allocated with name '_getadc_channel_65536_148'
;resultaat                 Allocated with name '_getadc_resultaat_65536_149'
;tmpStack                  Allocated with name '_getadc_tmpStack_65536_149'
;------------------------------------------------------------
	G$getadc$0$0 ==.
	C$xcez_lib.c$1004$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1004: uint16_t getadc (uint8_t channel){
;	-----------------------------------------
;	 function getadc
;	-----------------------------------------
_getadc:
	mov	a,dpl
	mov	dptr,#_getadc_channel_65536_148
	movx	@dptr,a
	C$xcez_lib.c$1007$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1007: tmpStack[0] = syscon0;
	mov	dptr,#_getadc_tmpStack_65536_149
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$1008$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1008: tmpStack[1] = adc_page;
	mov	dptr,#(_getadc_tmpStack_65536_149 + 0x0001)
	mov	a,_adc_page
	movx	@dptr,a
	C$xcez_lib.c$1009$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1009: syscon0 = 0x04;				//map kiezen
	mov	_syscon0,#0x04
	C$xcez_lib.c$1010$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1010: adc_page = 0x06;			//adc pagina 6 kiezen
	mov	_adc_page,#0x06
	C$xcez_lib.c$1011$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1011: adc_qinr0 = channel;		//kanaal laden (fout in adc defs xcez1 bestand)
	mov	dptr,#_getadc_channel_65536_148
	movx	a,@dptr
	mov	_adc_qinr0,a
	C$xcez_lib.c$1012$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1012: adc_page = 0x00;            //naar pagina 0 schakelen
	mov	_adc_page,#0x00
	C$xcez_lib.c$1016$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1016: __endasm;
	nop
	nop
	C$xcez_lib.c$1017$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1017: while(adc_globstr & 0x01);	//wachten to ADC klaar is
00101$:
	mov	a,_adc_globstr
	jb	acc.0,00101$
	C$xcez_lib.c$1018$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1018: adc_page = 0x02;			//pagina 2 selecteren
	mov	_adc_page,#0x02
	C$xcez_lib.c$1019$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1019: resultaat = adc_resr0h;
	mov	r6,_adc_resr0h
	mov	r7,#0x00
	C$xcez_lib.c$1020$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1020: resultaat = (resultaat << 2) | (adc_resr0l >> 6);
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,_adc_resr0l
	rl	a
	rl	a
	anl	a,#0x03
	mov	r4,#0x00
	orl	ar6,a
	mov	a,r4
	orl	ar7,a
	C$xcez_lib.c$1021$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1021: syscon0 = tmpStack[0];
	mov	dptr,#_getadc_tmpStack_65536_149
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$1022$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1022: adc_page = tmpStack[1];
	mov	dptr,#(_getadc_tmpStack_65536_149 + 0x0001)
	movx	a,@dptr
	mov	_adc_page,a
	C$xcez_lib.c$1023$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1023: return resultaat;
	mov	dpl,r6
	mov	dph,r7
	C$xcez_lib.c$1024$1_0$149 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1024: }
	C$xcez_lib.c$1024$1_0$149 ==.
	XG$getadc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adcpotmeter'
;------------------------------------------------------------
	G$adcpotmeter$0$0 ==.
	C$xcez_lib.c$1035$1_0$151 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1035: uint16_t adcpotmeter(void){
;	-----------------------------------------
;	 function adcpotmeter
;	-----------------------------------------
_adcpotmeter:
	C$xcez_lib.c$1036$1_0$151 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1036: return getadc(4);
	mov	dpl,#0x04
	lcall	_getadc
	C$xcez_lib.c$1037$1_0$151 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1037: }
	C$xcez_lib.c$1037$1_0$151 ==.
	XG$adcpotmeter$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adclm335'
;------------------------------------------------------------
	G$adclm335$0$0 ==.
	C$xcez_lib.c$1049$1_0$153 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1049: uint16_t adclm335(void){
;	-----------------------------------------
;	 function adclm335
;	-----------------------------------------
_adclm335:
	C$xcez_lib.c$1050$1_0$153 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1050: return getadc(5);
	mov	dpl,#0x05
	lcall	_getadc
	C$xcez_lib.c$1051$1_0$153 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1051: }
	C$xcez_lib.c$1051$1_0$153 ==.
	XG$adclm335$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initpwm'
;------------------------------------------------------------
;tmpStack                  Allocated with name '_initpwm_tmpStack_65536_155'
;------------------------------------------------------------
	G$initpwm$0$0 ==.
	C$xcez_lib.c$1066$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1066: void initpwm (void){
;	-----------------------------------------
;	 function initpwm
;	-----------------------------------------
_initpwm:
	C$xcez_lib.c$1069$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1069: tmpStack[0] = syscon0;
	mov	dptr,#_initpwm_tmpStack_65536_155
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$1070$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1070: tmpStack[1] = port_page;
	mov	dptr,#(_initpwm_tmpStack_65536_155 + 0x0001)
	mov	a,_port_page
	movx	@dptr,a
	C$xcez_lib.c$1071$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1071: tmpStack[2] = ccu6_page;
	mov	dptr,#(_initpwm_tmpStack_65536_155 + 0x0002)
	mov	a,_ccu6_page
	movx	@dptr,a
	C$xcez_lib.c$1074$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1074: syscon0 &= 0b11111110;		//clear bit rmap
	anl	_syscon0,#0xfe
	C$xcez_lib.c$1075$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1075: port_page = 0x00;			//basis regs kiezen
	mov	_port_page,#0x00
	C$xcez_lib.c$1076$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1076: p3_dir |= 0b00101010;		//alle pinnen als output
	orl	_p3_dir,#0x2a
	C$xcez_lib.c$1077$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1077: port_page = 0x02;			//altsel regs beschikbaar maken
	mov	_port_page,#0x02
	C$xcez_lib.c$1078$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1078: p3_altsel0 = 0b00101010;	//p3.5, p3.3 en p3.1 als outputs voor pwm gebruiken
	mov	_p3_altsel0,#0x2a
	C$xcez_lib.c$1079$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1079: p3_altsel1 = 0b00000000;	
	mov	_p3_altsel1,#0x00
	C$xcez_lib.c$1082$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1082: ccu6_page = 0x02;			//ccu6_12tmsel h en l bereikbaar maken
	mov	_ccu6_page,#0x02
	C$xcez_lib.c$1083$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1083: ccu6_t12mselh = 0b00000010;	//compare output op cout62
	mov	_ccu6_t12mselh,#0x02
	C$xcez_lib.c$1084$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1084: ccu6_t12msell = 0b00100010;	//idem cout61 en cout60
	mov	_ccu6_t12msell,#0x22
	C$xcez_lib.c$1085$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1085: ccu6_modctrl = 0b00101010;	//modulatie uitgangssignaal toelaten
	mov	_ccu6_modctrl,#0x2a
	C$xcez_lib.c$1086$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1086: ccu6_page = 0x01;
	mov	_ccu6_page,#0x01
	C$xcez_lib.c$1087$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1087: ccu6_t12prl = 0xff;			//timer in 8 bit mode gebruiken
	mov	_ccu6_t12prl,#0xff
	C$xcez_lib.c$1088$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1088: ccu6_t12prh = 0x00;
	mov	_ccu6_t12prh,#0x00
	C$xcez_lib.c$1089$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1089: ccu6_tctr0l = 0b00000000;	//prescalers instellen, kan enkel als timer stil staat
	mov	_ccu6_tctr0l,#0x00
	C$xcez_lib.c$1092$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1092: ccu6_page = 0;
	mov	_ccu6_page,#0x00
	C$xcez_lib.c$1093$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1093: ccu6_tctr4l |= 0b01000010;	//shadow transfer nog uitvoeren, en timer starten
	orl	_ccu6_tctr4l,#0x42
	C$xcez_lib.c$1095$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1095: syscon0 = tmpStack[0];
	mov	dptr,#_initpwm_tmpStack_65536_155
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$1096$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1096: port_page = tmpStack[1];
	mov	dptr,#(_initpwm_tmpStack_65536_155 + 0x0001)
	movx	a,@dptr
	mov	_port_page,a
	C$xcez_lib.c$1097$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1097: ccu6_page = tmpStack[2];
	mov	dptr,#(_initpwm_tmpStack_65536_155 + 0x0002)
	movx	a,@dptr
	mov	_ccu6_page,a
	C$xcez_lib.c$1098$1_0$155 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1098: }
	C$xcez_lib.c$1098$1_0$155 ==.
	XG$initpwm$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmset'
;------------------------------------------------------------
;setValue                  Allocated with name '_pwmset_PARM_2'
;channel                   Allocated with name '_pwmset_channel_65536_156'
;tmpStack                  Allocated with name '_pwmset_tmpStack_65536_157'
;------------------------------------------------------------
	G$pwmset$0$0 ==.
	C$xcez_lib.c$1114$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1114: void pwmset (uint8_t channel, uint8_t setValue){
;	-----------------------------------------
;	 function pwmset
;	-----------------------------------------
_pwmset:
	mov	a,dpl
	mov	dptr,#_pwmset_channel_65536_156
	movx	@dptr,a
	C$xcez_lib.c$1117$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1117: tmpStack[0] = syscon0;
	mov	dptr,#_pwmset_tmpStack_65536_157
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$1118$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1118: tmpStack[1] = ccu6_page;
	mov	dptr,#(_pwmset_tmpStack_65536_157 + 0x0001)
	mov	a,_ccu6_page
	movx	@dptr,a
	C$xcez_lib.c$1120$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1120: syscon0 &= 0b11111110;		//clear bit rmap
	anl	_syscon0,#0xfe
	C$xcez_lib.c$1121$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1121: ccu6_page = 0;
	mov	_ccu6_page,#0x00
	C$xcez_lib.c$1122$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1122: if(2 == channel){
	mov	dptr,#_pwmset_channel_65536_156
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00102$
	C$xcez_lib.c$1123$2_0$158 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1123: ccu6_cc62srh = 0;
	mov	_ccu6_cc62srh,#0x00
	C$xcez_lib.c$1124$2_0$158 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1124: ccu6_cc62srl = setValue;
	mov	dptr,#_pwmset_PARM_2
	movx	a,@dptr
	mov	_ccu6_cc62srl,a
00102$:
	C$xcez_lib.c$1126$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1126: if(1 == channel){
	mov	dptr,#_pwmset_channel_65536_156
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00104$
	C$xcez_lib.c$1127$2_0$159 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1127: ccu6_cc61srh = 0;
	mov	_ccu6_cc61srh,#0x00
	C$xcez_lib.c$1128$2_0$159 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1128: ccu6_cc61srl = setValue;
	mov	dptr,#_pwmset_PARM_2
	movx	a,@dptr
	mov	_ccu6_cc61srl,a
00104$:
	C$xcez_lib.c$1130$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1130: if(0 == channel){
	mov	a,r7
	C$xcez_lib.c$1131$2_0$160 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1131: ccu6_cc60srh = 0;
	jnz	00106$
	mov	_ccu6_cc60srh,a
	C$xcez_lib.c$1132$2_0$160 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1132: ccu6_cc60srl = setValue;
	mov	dptr,#_pwmset_PARM_2
	movx	a,@dptr
	mov	_ccu6_cc60srl,a
00106$:
	C$xcez_lib.c$1135$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1135: ccu6_tctr4l |= 0b01000000;	//shadow transfer nog uitvoeren
	orl	_ccu6_tctr4l,#0x40
	C$xcez_lib.c$1136$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1136: syscon0 = tmpStack[0];
	mov	dptr,#_pwmset_tmpStack_65536_157
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$1137$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1137: ccu6_page = tmpStack[1];
	mov	dptr,#(_pwmset_tmpStack_65536_157 + 0x0001)
	movx	a,@dptr
	mov	_ccu6_page,a
	C$xcez_lib.c$1138$1_0$157 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1138: }
	C$xcez_lib.c$1138$1_0$157 ==.
	XG$pwmset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initspi'
;------------------------------------------------------------
;heading                   Allocated with name '_initspi_PARM_2'
;speed                     Allocated with name '_initspi_PARM_3'
;mode                      Allocated with name '_initspi_mode_65536_161'
;tmpStack                  Allocated with name '_initspi_tmpStack_65536_162'
;------------------------------------------------------------
	G$initspi$0$0 ==.
	C$xcez_lib.c$1175$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1175: void initspi (uint8_t mode, uint8_t heading, uint8_t speed){
;	-----------------------------------------
;	 function initspi
;	-----------------------------------------
_initspi:
	mov	a,dpl
	mov	dptr,#_initspi_mode_65536_161
	movx	@dptr,a
	C$xcez_lib.c$1178$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1178: tmpStack[0] = syscon0;
	mov	dptr,#_initspi_tmpStack_65536_162
	mov	a,_syscon0
	movx	@dptr,a
	C$xcez_lib.c$1179$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1179: tmpStack[1] = port_page;
	mov	dptr,#(_initspi_tmpStack_65536_162 + 0x0001)
	mov	a,_port_page
	movx	@dptr,a
	C$xcez_lib.c$1181$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1181: syscon0 = 0x04;
	mov	_syscon0,#0x04
	C$xcez_lib.c$1182$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1182: port_page = 0x00;
	mov	_port_page,#0x00
	C$xcez_lib.c$1183$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1183: p1_dir = 0b00101100;		//juiste pinnen als output schakelen (1)
	mov	_p1_dir,#0x2c
	C$xcez_lib.c$1184$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1184: port_page = 0x02;			//altsel registers beschikbaar maken
	mov	_port_page,#0x02
	C$xcez_lib.c$1185$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1185: p1_altsel0 = 0b00011100;	//alt functies SPI
	mov	_p1_altsel0,#0x1c
	C$xcez_lib.c$1186$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1186: p1_altsel1 = 0b00000000;	//alt functies SPI
	mov	_p1_altsel1,#0x00
	C$xcez_lib.c$1187$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1187: ssc_brh = 0x00;				//baud rate waarde inladen
	mov	_ssc_brh,#0x00
	C$xcez_lib.c$1188$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1188: ssc_brl = speed;				//idem
	mov	dptr,#_initspi_PARM_3
	movx	a,@dptr
	mov	_ssc_brl,a
	C$xcez_lib.c$1189$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1189: ssc_conl = 0x07;			//8 bit data
	mov	_ssc_conl,#0x07
	C$xcez_lib.c$1190$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1190: if(heading){
	mov	dptr,#_initspi_PARM_2
	movx	a,@dptr
	jz	00102$
	C$xcez_lib.c$1191$2_0$163 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1191: ssc_conl |= 1 << 4;		//MSB first
	orl	_ssc_conl,#0x10
00102$:
	C$xcez_lib.c$1193$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1193: if(mode & 0b10){
	mov	dptr,#_initspi_mode_65536_161
	movx	a,@dptr
	jnb	acc.1,00104$
	C$xcez_lib.c$1194$2_0$164 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1194: ssc_conl |= 1 << 6;		//een klok in rust is hoog
	orl	_ssc_conl,#0x40
00104$:
	C$xcez_lib.c$1196$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1196: if(!(mode & 0b1)){
	mov	dptr,#_initspi_mode_65536_161
	movx	a,@dptr
	jb	acc.0,00106$
	C$xcez_lib.c$1198$2_0$165 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1198: ssc_conl |= 1 << 5;		
	orl	_ssc_conl,#0x20
00106$:
	C$xcez_lib.c$1201$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1201: ssc_conh = 0b11000000;		//active mode (inschakelen SPI) + mastermode 
	mov	_ssc_conh,#0xc0
	C$xcez_lib.c$1203$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1203: syscon0 = tmpStack[0];
	mov	dptr,#_initspi_tmpStack_65536_162
	movx	a,@dptr
	mov	_syscon0,a
	C$xcez_lib.c$1204$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1204: port_page = tmpStack[1];
	mov	dptr,#(_initspi_tmpStack_65536_162 + 0x0001)
	movx	a,@dptr
	mov	_port_page,a
	C$xcez_lib.c$1206$1_0$162 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1206: }
	C$xcez_lib.c$1206$1_0$162 ==.
	XG$initspi$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spioutbyte'
;------------------------------------------------------------
;dataByte                  Allocated with name '_spioutbyte_dataByte_65536_166'
;------------------------------------------------------------
	G$spioutbyte$0$0 ==.
	C$xcez_lib.c$1218$1_0$167 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1218: uint8_t spioutbyte(uint8_t dataByte){
;	-----------------------------------------
;	 function spioutbyte
;	-----------------------------------------
_spioutbyte:
	mov	a,dpl
	mov	dptr,#_spioutbyte_dataByte_65536_166
	movx	@dptr,a
	C$xcez_lib.c$1219$1_0$167 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1219: ssc_tbl = dataByte;			//data verzenden
	movx	a,@dptr
	mov	_ssc_tbl,a
	C$xcez_lib.c$1220$1_0$167 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1220: while(ssc_conh & (1 << 4));	//wachten tot het weg is
00101$:
	mov	a,_ssc_conh
	jb	acc.4,00101$
	C$xcez_lib.c$1221$1_0$167 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1221: return ssc_rbl;
	mov	dpl,_ssc_rbl
	C$xcez_lib.c$1222$1_0$167 ==.
;	/home/xoreo/Documents/School/Fase2/PracticeEnterprise/source/tamagotchi/lib/xcez_lib.c:1222: }
	C$xcez_lib.c$1222$1_0$167 ==.
	XG$spioutbyte$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
Fxcez_lib$__xinit_OutputMux$0_0$0 == .
__xinit__OutputMux:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
