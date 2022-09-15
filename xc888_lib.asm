;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module xc888_lib
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _scl
	.globl _sda
	.globl _sclk
	.globl _sdin
	.globl _dc
	.globl _rst
	.globl _cs
	.globl _p5_data_0
	.globl _p5_data_1
	.globl _p5_data_2
	.globl _p5_data_3
	.globl _p5_data_4
	.globl _p5_data_5
	.globl _p5_data_6
	.globl _p5_data_7
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
	.globl _get_random_between_PARM_2
	.globl _hex2bcd
	.globl _get_random_between
	.globl _hexbcd8
	.globl _delay10us
	.globl _delay1ms
	.globl _delay
	.globl _initiic
	.globl _iicstart
	.globl _iicstop
	.globl _iicoutbyte
	.globl _iicinbyte
	.globl _initleds
	.globl _init_buttons
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
G$p5_data_7$0_0$0 == 0x0099
_p5_data_7	=	0x0099
G$p5_data_6$0_0$0 == 0x0098
_p5_data_6	=	0x0098
G$p5_data_5$0_0$0 == 0x0097
_p5_data_5	=	0x0097
G$p5_data_4$0_0$0 == 0x0096
_p5_data_4	=	0x0096
G$p5_data_3$0_0$0 == 0x0095
_p5_data_3	=	0x0095
G$p5_data_2$0_0$0 == 0x0094
_p5_data_2	=	0x0094
G$p5_data_1$0_0$0 == 0x0093
_p5_data_1	=	0x0093
G$p5_data_0$0_0$0 == 0x0092
_p5_data_0	=	0x0092
G$cs$0_0$0 == 0x0095
_cs	=	0x0095
G$rst$0_0$0 == 0x0096
_rst	=	0x0096
G$dc$0_0$0 == 0x0097
_dc	=	0x0097
G$sdin$0_0$0 == 0x0098
_sdin	=	0x0098
G$sclk$0_0$0 == 0x0099
_sclk	=	0x0099
G$sda$0_0$0 == 0x00b2
_sda	=	0x00b2
G$scl$0_0$0 == 0x00b3
_scl	=	0x00b3
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
Lxc888_lib.hex2bcd$x$1_0$56==.
_hex2bcd_x_65536_56:
	.ds 1
Lxc888_lib.get_random_between$high$1_0$58==.
_get_random_between_PARM_2:
	.ds 1
Lxc888_lib.get_random_between$low$1_0$58==.
_get_random_between_low_65536_58:
	.ds 1
Lxc888_lib.delay$ms$1_0$68==.
_delay_ms_65536_68:
	.ds 2
Lxc888_lib.iicinbyte$ack$1_0$80==.
_iicinbyte_ack_65536_80:
	.ds 1
Lxc888_lib.iicinbyte$databyte$1_0$81==.
_iicinbyte_databyte_65536_81:
	.ds 1
Lxc888_lib.iicinbyte$tmpStack$1_0$81==.
_iicinbyte_tmpStack_65536_81:
	.ds 2
Lxc888_lib.initleds$tmpStack$1_0$85==.
_initleds_tmpStack_65536_85:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'hex2bcd'
;------------------------------------------------------------
;x                         Allocated with name '_hex2bcd_x_65536_56'
;y                         Allocated with name '_hex2bcd_y_65536_57'
;------------------------------------------------------------
	G$hex2bcd$0$0 ==.
	C$xc888_lib.c$3$0_0$57 ==.
;	lib/xc888_lib.c:3: uint8_t hex2bcd(uint8_t x){
;	-----------------------------------------
;	 function hex2bcd
;	-----------------------------------------
_hex2bcd:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_hex2bcd_x_65536_56
	movx	@dptr,a
	C$xc888_lib.c$5$1_0$57 ==.
;	lib/xc888_lib.c:5: y = (x / 10) << 4;
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
	C$xc888_lib.c$6$1_0$57 ==.
;	lib/xc888_lib.c:6: y = y | (x % 10);
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
	C$xc888_lib.c$7$1_0$57 ==.
;	lib/xc888_lib.c:7: return (y);
	mov	dpl,r4
	C$xc888_lib.c$8$1_0$57 ==.
;	lib/xc888_lib.c:8: }
	C$xc888_lib.c$8$1_0$57 ==.
	XG$hex2bcd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_random_between'
;------------------------------------------------------------
;high                      Allocated with name '_get_random_between_PARM_2'
;low                       Allocated with name '_get_random_between_low_65536_58'
;------------------------------------------------------------
	G$get_random_between$0$0 ==.
	C$xc888_lib.c$10$1_0$59 ==.
;	lib/xc888_lib.c:10: uint8_t get_random_between(uint8_t low,uint8_t high){
;	-----------------------------------------
;	 function get_random_between
;	-----------------------------------------
_get_random_between:
	mov	a,dpl
	mov	dptr,#_get_random_between_low_65536_58
	movx	@dptr,a
	C$xc888_lib.c$11$1_0$59 ==.
;	lib/xc888_lib.c:11: return rand() % high-1 + low;
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
	mov	dptr,#_get_random_between_low_65536_58
	movx	a,@dptr
	add	a,r6
	C$xc888_lib.c$12$1_0$59 ==.
;	lib/xc888_lib.c:12: }
	C$xc888_lib.c$12$1_0$59 ==.
	XG$get_random_between$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hexbcd8'
;------------------------------------------------------------
;byte                      Allocated with name '_hexbcd8_byte_65536_60'
;------------------------------------------------------------
	G$hexbcd8$0$0 ==.
	C$xc888_lib.c$14$1_0$61 ==.
;	lib/xc888_lib.c:14: uint8_t hexbcd8(uint8_t byte){
;	-----------------------------------------
;	 function hexbcd8
;	-----------------------------------------
_hexbcd8:
	C$xc888_lib.c$27$1_0$61 ==.
;	lib/xc888_lib.c:27: __endasm;
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
	C$xc888_lib.c$28$1_0$61 ==.
;	lib/xc888_lib.c:28: return;
	C$xc888_lib.c$29$1_0$61 ==.
;	lib/xc888_lib.c:29: }
	C$xc888_lib.c$29$1_0$61 ==.
	XG$hexbcd8$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay10us'
;------------------------------------------------------------
	G$delay10us$0$0 ==.
	C$xc888_lib.c$31$1_0$63 ==.
;	lib/xc888_lib.c:31: void delay10us (void){
;	-----------------------------------------
;	 function delay10us
;	-----------------------------------------
_delay10us:
	C$xc888_lib.c$41$1_0$63 ==.
;	lib/xc888_lib.c:41: __endasm;
	push	acc
	push	psw
	mov	acc,#0x1a
	0002$:
	djnz	acc,0002$
	pop	psw
	pop	acc
	C$xc888_lib.c$43$1_0$63 ==.
;	lib/xc888_lib.c:43: }
	C$xc888_lib.c$43$1_0$63 ==.
	XG$delay10us$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay1ms'
;------------------------------------------------------------
;i                         Allocated with name '_delay1ms_i_65536_65'
;------------------------------------------------------------
	G$delay1ms$0$0 ==.
	C$xc888_lib.c$45$1_0$66 ==.
;	lib/xc888_lib.c:45: void delay1ms (void){
;	-----------------------------------------
;	 function delay1ms
;	-----------------------------------------
_delay1ms:
	C$xc888_lib.c$47$2_0$66 ==.
;	lib/xc888_lib.c:47: for(i=0; i < 100; i++){
	mov	r7,#0x64
00104$:
	C$xc888_lib.c$48$3_0$67 ==.
;	lib/xc888_lib.c:48: delay10us();
	push	ar7
	lcall	_delay10us
	pop	ar7
	C$xc888_lib.c$47$3_0$67 ==.
;	lib/xc888_lib.c:47: for(i=0; i < 100; i++){
	djnz	r7,00104$
	C$xc888_lib.c$50$2_0$66 ==.
;	lib/xc888_lib.c:50: }	
	C$xc888_lib.c$50$2_0$66 ==.
	XG$delay1ms$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_65536_68'
;i                         Allocated with name '_delay_i_65536_69'
;------------------------------------------------------------
	G$delay$0$0 ==.
	C$xc888_lib.c$52$2_0$70 ==.
;	lib/xc888_lib.c:52: void delay (uint16_t ms){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_ms_65536_68
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$xc888_lib.c$56$2_0$70 ==.
;	lib/xc888_lib.c:56: for(i=0;i < ms;i++){
	mov	dptr,#_delay_ms_65536_68
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
	C$xc888_lib.c$57$3_0$71 ==.
;	lib/xc888_lib.c:57: delay1ms();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay1ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$xc888_lib.c$56$2_0$70 ==.
;	lib/xc888_lib.c:56: for(i=0;i < ms;i++){
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
	C$xc888_lib.c$59$2_0$70 ==.
;	lib/xc888_lib.c:59: }
	C$xc888_lib.c$59$2_0$70 ==.
	XG$delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initiic'
;------------------------------------------------------------
	G$initiic$0$0 ==.
	C$xc888_lib.c$67$2_0$73 ==.
;	lib/xc888_lib.c:67: void initiic (void)
;	-----------------------------------------
;	 function initiic
;	-----------------------------------------
_initiic:
	C$xc888_lib.c$85$1_0$73 ==.
;	lib/xc888_lib.c:85: __endasm;
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
	C$xc888_lib.c$86$1_0$73 ==.
;	lib/xc888_lib.c:86: }
	C$xc888_lib.c$86$1_0$73 ==.
	XG$initiic$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iicstart'
;------------------------------------------------------------
	G$iicstart$0$0 ==.
	C$xc888_lib.c$88$1_0$75 ==.
;	lib/xc888_lib.c:88: void iicstart (void){
;	-----------------------------------------
;	 function iicstart
;	-----------------------------------------
_iicstart:
	C$xc888_lib.c$105$1_0$75 ==.
;	lib/xc888_lib.c:105: __endasm;
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
	C$xc888_lib.c$106$1_0$75 ==.
;	lib/xc888_lib.c:106: }
	C$xc888_lib.c$106$1_0$75 ==.
	XG$iicstart$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iicstop'
;------------------------------------------------------------
	G$iicstop$0$0 ==.
	C$xc888_lib.c$108$1_0$77 ==.
;	lib/xc888_lib.c:108: void iicstop (void){
;	-----------------------------------------
;	 function iicstop
;	-----------------------------------------
_iicstop:
	C$xc888_lib.c$125$1_0$77 ==.
;	lib/xc888_lib.c:125: __endasm;
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
	C$xc888_lib.c$126$1_0$77 ==.
;	lib/xc888_lib.c:126: }
	C$xc888_lib.c$126$1_0$77 ==.
	XG$iicstop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iicoutbyte'
;------------------------------------------------------------
;databyte                  Allocated with name '_iicoutbyte_databyte_65536_78'
;------------------------------------------------------------
	G$iicoutbyte$0$0 ==.
	C$xc888_lib.c$128$1_0$79 ==.
;	lib/xc888_lib.c:128: uint8_t iicoutbyte (uint8_t databyte){
;	-----------------------------------------
;	 function iicoutbyte
;	-----------------------------------------
_iicoutbyte:
	C$xc888_lib.c$160$1_0$79 ==.
;	lib/xc888_lib.c:160: __endasm;
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
	C$xc888_lib.c$161$1_0$79 ==.
;	lib/xc888_lib.c:161: return 0;
	mov	dpl,#0x00
	C$xc888_lib.c$162$1_0$79 ==.
;	lib/xc888_lib.c:162: }
	C$xc888_lib.c$162$1_0$79 ==.
	XG$iicoutbyte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iicinbyte'
;------------------------------------------------------------
;ack                       Allocated with name '_iicinbyte_ack_65536_80'
;i                         Allocated with name '_iicinbyte_i_65536_81'
;databyte                  Allocated with name '_iicinbyte_databyte_65536_81'
;tmpStack                  Allocated with name '_iicinbyte_tmpStack_65536_81'
;------------------------------------------------------------
	G$iicinbyte$0$0 ==.
	C$xc888_lib.c$164$1_0$81 ==.
;	lib/xc888_lib.c:164: uint8_t iicinbyte (uint8_t ack){
;	-----------------------------------------
;	 function iicinbyte
;	-----------------------------------------
_iicinbyte:
	mov	a,dpl
	mov	dptr,#_iicinbyte_ack_65536_80
	movx	@dptr,a
	C$xc888_lib.c$166$2_0$81 ==.
;	lib/xc888_lib.c:166: uint8_t databyte = 0;
	mov	dptr,#_iicinbyte_databyte_65536_81
	clr	a
	movx	@dptr,a
	C$xc888_lib.c$168$1_0$81 ==.
;	lib/xc888_lib.c:168: tmpStack[0] = syscon0;
	mov	dptr,#_iicinbyte_tmpStack_65536_81
	mov	a,_syscon0
	movx	@dptr,a
	C$xc888_lib.c$169$1_0$81 ==.
;	lib/xc888_lib.c:169: tmpStack[1] = port_page;
	mov	dptr,#(_iicinbyte_tmpStack_65536_81 + 0x0001)
	mov	a,_port_page
	movx	@dptr,a
	C$xc888_lib.c$171$1_0$81 ==.
;	lib/xc888_lib.c:171: syscon0 = 0x04;
	mov	_syscon0,#0x04
	C$xc888_lib.c$172$1_0$81 ==.
;	lib/xc888_lib.c:172: port_page = 0x00;
	mov	_port_page,#0x00
	C$xc888_lib.c$173$1_0$81 ==.
;	lib/xc888_lib.c:173: p3_dir &= sdain;
	anl	_p3_dir,#0xfb
	C$xc888_lib.c$175$1_0$81 ==.
;	lib/xc888_lib.c:175: for(i=0; i < 8; i++){
	mov	r7,#0x00
00102$:
	C$xc888_lib.c$176$3_0$83 ==.
;	lib/xc888_lib.c:176: delay10us();
	push	ar7
	lcall	_delay10us
	C$xc888_lib.c$177$3_0$83 ==.
;	lib/xc888_lib.c:177: scl = 1;	//klok hoog
;	assignBit
	setb	_p3_data_3
	C$xc888_lib.c$178$3_0$83 ==.
;	lib/xc888_lib.c:178: databyte = databyte << 1;
	mov	dptr,#_iicinbyte_databyte_65536_81
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	C$xc888_lib.c$179$3_0$83 ==.
;	lib/xc888_lib.c:179: databyte |= sda;//pin inlezen
	movx	a,@dptr
	mov	r6,a
	mov	c,_p3_data_2
	clr	a
	rlc	a
	mov	dptr,#_iicinbyte_databyte_65536_81
	orl	a,r6
	movx	@dptr,a
	C$xc888_lib.c$180$3_0$83 ==.
;	lib/xc888_lib.c:180: delay10us();
	lcall	_delay10us
	pop	ar7
	C$xc888_lib.c$181$3_0$83 ==.
;	lib/xc888_lib.c:181: scl = 0;	//klok terug laag
;	assignBit
	clr	_p3_data_3
	C$xc888_lib.c$175$2_0$82 ==.
;	lib/xc888_lib.c:175: for(i=0; i < 8; i++){
	inc	r7
	cjne	r7,#0x08,00115$
00115$:
	jc	00102$
	C$xc888_lib.c$183$1_0$81 ==.
;	lib/xc888_lib.c:183: p3_dir |= sdaout;	//pin als output schakelen
	orl	_p3_dir,#0x04
	C$xc888_lib.c$184$1_0$81 ==.
;	lib/xc888_lib.c:184: sda = ack;              //ack of nack genereren
	mov	dptr,#_iicinbyte_ack_65536_80
	movx	a,@dptr
;	assignBit
	add	a,#0xff
	mov	_p3_data_2,c
	C$xc888_lib.c$185$1_0$81 ==.
;	lib/xc888_lib.c:185: delay10us();
	lcall	_delay10us
	C$xc888_lib.c$186$1_0$81 ==.
;	lib/xc888_lib.c:186: scl = 1;
;	assignBit
	setb	_p3_data_3
	C$xc888_lib.c$187$1_0$81 ==.
;	lib/xc888_lib.c:187: delay10us();
	lcall	_delay10us
	C$xc888_lib.c$188$1_0$81 ==.
;	lib/xc888_lib.c:188: scl = 0;
;	assignBit
	clr	_p3_data_3
	C$xc888_lib.c$189$1_0$81 ==.
;	lib/xc888_lib.c:189: p3_dir &= sdain;	//pin terug als input schakelen
	anl	_p3_dir,#0xfb
	C$xc888_lib.c$190$1_0$81 ==.
;	lib/xc888_lib.c:190: syscon0 = tmpStack[0];
	mov	dptr,#_iicinbyte_tmpStack_65536_81
	movx	a,@dptr
	mov	_syscon0,a
	C$xc888_lib.c$191$1_0$81 ==.
;	lib/xc888_lib.c:191: port_page = tmpStack[1];
	mov	dptr,#(_iicinbyte_tmpStack_65536_81 + 0x0001)
	movx	a,@dptr
	mov	_port_page,a
	C$xc888_lib.c$192$1_0$81 ==.
;	lib/xc888_lib.c:192: return databyte;	//ack of niet terug geven
	mov	dptr,#_iicinbyte_databyte_65536_81
	movx	a,@dptr
	C$xc888_lib.c$193$1_0$81 ==.
;	lib/xc888_lib.c:193: }
	C$xc888_lib.c$193$1_0$81 ==.
	XG$iicinbyte$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initleds'
;------------------------------------------------------------
;tmpStack                  Allocated with name '_initleds_tmpStack_65536_85'
;------------------------------------------------------------
	G$initleds$0$0 ==.
	C$xc888_lib.c$195$1_0$85 ==.
;	lib/xc888_lib.c:195: void initleds (void){
;	-----------------------------------------
;	 function initleds
;	-----------------------------------------
_initleds:
	C$xc888_lib.c$197$1_0$85 ==.
;	lib/xc888_lib.c:197: tmpStack[0] = syscon0;
	mov	dptr,#_initleds_tmpStack_65536_85
	mov	a,_syscon0
	movx	@dptr,a
	C$xc888_lib.c$198$1_0$85 ==.
;	lib/xc888_lib.c:198: tmpStack[1] = port_page;
	mov	dptr,#(_initleds_tmpStack_65536_85 + 0x0001)
	mov	a,_port_page
	movx	@dptr,a
	C$xc888_lib.c$200$1_0$85 ==.
;	lib/xc888_lib.c:200: syscon0 = 0x04;  //juiste map selecteren	
	mov	_syscon0,#0x04
	C$xc888_lib.c$201$1_0$85 ==.
;	lib/xc888_lib.c:201: port_page = 0x00; //selecteer poort page 0
	mov	_port_page,#0x00
	C$xc888_lib.c$202$1_0$85 ==.
;	lib/xc888_lib.c:202: p4_dir = 0xff;    //poort 3 als output schakelen
	mov	_p4_dir,#0xff
	C$xc888_lib.c$204$1_0$85 ==.
;	lib/xc888_lib.c:204: syscon0 = tmpStack[0];
	mov	dptr,#_initleds_tmpStack_65536_85
	movx	a,@dptr
	mov	_syscon0,a
	C$xc888_lib.c$205$1_0$85 ==.
;	lib/xc888_lib.c:205: port_page = tmpStack[1];
	mov	dptr,#(_initleds_tmpStack_65536_85 + 0x0001)
	movx	a,@dptr
	mov	_port_page,a
	C$xc888_lib.c$206$1_0$85 ==.
;	lib/xc888_lib.c:206: p4_data = 0x0;
	mov	_p4_data,#0x00
	C$xc888_lib.c$207$1_0$85 ==.
;	lib/xc888_lib.c:207: }
	C$xc888_lib.c$207$1_0$85 ==.
	XG$initleds$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_buttons'
;------------------------------------------------------------
	G$init_buttons$0$0 ==.
	C$xc888_lib.c$209$1_0$87 ==.
;	lib/xc888_lib.c:209: void init_buttons(void){
;	-----------------------------------------
;	 function init_buttons
;	-----------------------------------------
_init_buttons:
	C$xc888_lib.c$222$1_0$87 ==.
;	lib/xc888_lib.c:222: __endasm;
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
	C$xc888_lib.c$223$1_0$87 ==.
;	lib/xc888_lib.c:223: }
	C$xc888_lib.c$223$1_0$87 ==.
	XG$init_buttons$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
