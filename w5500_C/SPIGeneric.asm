;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module SPIGeneric
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __spigeneric_spit_bit
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl __spigeneric_frame_start
	.globl __spigeneric_frame_end
	.globl __spigeneric_spit_byte
	.globl __spigeneric_reset
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
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
;Allocation info for local variables in function '_spigeneric_frame_start'
;------------------------------------------------------------
;	SPIGeneric.c:10: void _spigeneric_frame_start() {
;	-----------------------------------------
;	 function _spigeneric_frame_start
;	-----------------------------------------
__spigeneric_frame_start:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	SPIGeneric.c:11: pRESET = 1;
;	assignBit
	setb	_P1_6
;	SPIGeneric.c:12: pSCLK = 0;
;	assignBit
	clr	_P1_2
;	SPIGeneric.c:13: pMOSI = 0;
;	assignBit
	clr	_P1_5
;	SPIGeneric.c:14: pMISO = 1;
;	assignBit
	setb	_P1_4
;	SPIGeneric.c:15: pCS = 0;
;	assignBit
	clr	_P1_3
;	SPIGeneric.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_spigeneric_frame_end'
;------------------------------------------------------------
;	SPIGeneric.c:18: void _spigeneric_frame_end() {
;	-----------------------------------------
;	 function _spigeneric_frame_end
;	-----------------------------------------
__spigeneric_frame_end:
;	SPIGeneric.c:19: pCS = 1;
;	assignBit
	setb	_P1_3
;	SPIGeneric.c:20: pSCLK = 1;
;	assignBit
	setb	_P1_2
;	SPIGeneric.c:21: pMOSI = 1;
;	assignBit
	setb	_P1_5
;	SPIGeneric.c:22: pMISO = 1;
;	assignBit
	setb	_P1_4
;	SPIGeneric.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_spigeneric_spit_bit'
;------------------------------------------------------------
;	SPIGeneric.c:25: unsigned char _spigeneric_spit_bit(unsigned char bit) {
;	-----------------------------------------
;	 function _spigeneric_spit_bit
;	-----------------------------------------
__spigeneric_spit_bit:
;	SPIGeneric.c:26: pMOSI = bit;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_P1_5,c
;	SPIGeneric.c:27: pSCLK = 1;
;	assignBit
	setb	_P1_2
;	SPIGeneric.c:28: bit = pMISO;
	mov	c,_P1_4
	clr	a
	rlc	a
	mov	dpl,a
;	SPIGeneric.c:29: pSCLK = 0;
;	assignBit
	clr	_P1_2
;	SPIGeneric.c:30: return bit;
;	SPIGeneric.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_spigeneric_spit_byte'
;------------------------------------------------------------
;	SPIGeneric.c:33: unsigned char _spigeneric_spit_byte(unsigned char byte) {
;	-----------------------------------------
;	 function _spigeneric_spit_byte
;	-----------------------------------------
__spigeneric_spit_byte:
	mov	r7,dpl
;	SPIGeneric.c:34: unsigned char i, result = 0;
	mov	r6,#0x00
;	SPIGeneric.c:35: for (i = 0; i < 8; i++) {
	mov	r5,#0x00
00102$:
;	SPIGeneric.c:36: result <<= 1;
	mov	ar4,r6
	mov	a,r4
	add	a,r4
	mov	r4,a
;	SPIGeneric.c:37: result |= _spigeneric_spit_bit((byte >> (7 - i)) & 0x01);
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	r3,a
	mov	b,r3
	inc	b
	mov	a,r7
	sjmp	00118$
00117$:
	clr	c
	rrc	a
00118$:
	djnz	b,00117$
	anl	a,#0x01
	mov	dpl,a
	push	ar7
	push	ar5
	push	ar4
	lcall	__spigeneric_spit_bit
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar7
	mov	a,r3
	orl	a,r4
	mov	r6,a
;	SPIGeneric.c:35: for (i = 0; i < 8; i++) {
	inc	r5
	cjne	r5,#0x08,00119$
00119$:
	jc	00102$
;	SPIGeneric.c:39: return result;
	mov	dpl,r6
;	SPIGeneric.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_spigeneric_reset'
;------------------------------------------------------------
;	SPIGeneric.c:42: void _spigeneric_reset() {
;	-----------------------------------------
;	 function _spigeneric_reset
;	-----------------------------------------
__spigeneric_reset:
;	SPIGeneric.c:43: pRESET = 0;
;	assignBit
	clr	_P1_6
;	SPIGeneric.c:47: __endasm;
	nop
	nop
;	SPIGeneric.c:48: pRESET = 1;
;	assignBit
	setb	_P1_6
;	SPIGeneric.c:49: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
