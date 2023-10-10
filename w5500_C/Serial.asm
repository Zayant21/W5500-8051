;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module Serial
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __serial_interrupt
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
	.globl _newyork_jets
	.globl _bufferlo_bill_counter
	.globl _bufferlo_bill
	.globl _input_buffer
	.globl __serial_begin
	.globl __serial_putstr
	.globl __serial_putbyte_hex
	.globl __serial_putbyte_dec
	.globl __serial_emptybuffer
	.globl __serial_putchar
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
_input_buffer::
	.ds 33
_bufferlo_bill::
	.ds 33
_bufferlo_bill_counter::
	.ds 1
_newyork_jets::
	.ds 1
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
;	Serial.c:5: volatile unsigned char bufferlo_bill_counter = 0;
	mov	r0,#_bufferlo_bill_counter
	clr	a
	movx	@r0,a
;	Serial.c:6: volatile unsigned char newyork_jets = 0;
	mov	r0,#_newyork_jets
	movx	@r0,a
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
;Allocation info for local variables in function '_serial_begin'
;------------------------------------------------------------
;	Serial.c:9: void _serial_begin() {
;	-----------------------------------------
;	 function _serial_begin
;	-----------------------------------------
__serial_begin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	Serial.c:14: __endasm;
;
	MOV	TMOD,#0x20
	MOV	SCON,#0xD8
;MOV	SCON,#0x50
;	Serial.c:15: TH1 = (unsigned char) MAGIC_TH1;
	mov	_TH1,#0xfa
;	Serial.c:24: __endasm;
;
	MOV	A,TCON
	ORL	A,#0x40
	MOV	TCON,A
	MOV	A,SCON
	ORL	A,#0x02
	MOV	SCON,A
	MOV	IE,#0x90
;	Serial.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_serial_putstr'
;------------------------------------------------------------
;	Serial.c:30: void _serial_putstr(unsigned char* s) {
;	-----------------------------------------
;	 function _serial_putstr
;	-----------------------------------------
__serial_putstr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	Serial.c:31: while (*s) _serial_putchar(*(s++));
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	__serial_putchar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	Serial.c:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_serial_putbyte_hex'
;------------------------------------------------------------
;	Serial.c:34: void _serial_putbyte_hex(unsigned char b) {
;	-----------------------------------------
;	 function _serial_putbyte_hex
;	-----------------------------------------
__serial_putbyte_hex:
;	Serial.c:35: _serial_putchar((b >> 4) > 9 ? (b >> 4) + 0x37 : (b >> 4) + 0x30);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov  r6,a
	add	a,#0xff - 0x09
	jnc	00103$
	mov	ar5,r6
	mov	a,#0x37
	add	a,r5
	mov	r5,a
	sjmp	00104$
00103$:
	mov	a,#0x30
	add	a,r6
	mov	r5,a
00104$:
	mov	dpl,r5
	push	ar7
	lcall	__serial_putchar
	pop	ar7
;	Serial.c:36: _serial_putchar((b & 0xF) > 9 ? (b & 0xF) + 0x37 : (b & 0xF) + 0x30);
	mov	ar5,r7
	anl	ar5,#0x0f
	mov	r6,#0x00
	clr	c
	mov	a,#0x09
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	mov	ar6,r7
	mov	a,#0x0f
	anl	a,r6
	add	a,#0x37
	mov	r6,a
	sjmp	00106$
00105$:
	mov	a,#0x0f
	anl	a,r7
	add	a,#0x30
	mov	r6,a
00106$:
	mov	dpl,r6
;	Serial.c:37: }
	ljmp	__serial_putchar
;------------------------------------------------------------
;Allocation info for local variables in function '_serial_putbyte_dec'
;------------------------------------------------------------
;	Serial.c:39: void _serial_putbyte_dec(unsigned char b) {
;	-----------------------------------------
;	 function _serial_putbyte_dec
;	-----------------------------------------
__serial_putbyte_dec:
;	Serial.c:40: if (b / 100) _serial_putchar((b / 100) + 0x30);
	mov	r6,dpl
	mov	r7,#0x00
	mov	r0,#__divsint_PARM_2
	mov	a,#0x64
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	orl	a,r5
	jz	00102$
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	__serial_putchar
	pop	ar6
	pop	ar7
00102$:
;	Serial.c:41: if ((b % 100) / 10) _serial_putchar(((b % 100) / 10) + 0x30);
	mov	r0,#__modsint_PARM_2
	mov	a,#0x64
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r0,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	orl	a,r5
	jz	00104$
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	__serial_putchar
	pop	ar6
	pop	ar7
00104$:
;	Serial.c:42: _serial_putchar((b % 10) + 0x30);
	mov	r0,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
;	Serial.c:43: }
	ljmp	__serial_putchar
;------------------------------------------------------------
;Allocation info for local variables in function '_serial_emptybuffer'
;------------------------------------------------------------
;	Serial.c:73: unsigned char* _serial_emptybuffer() {
;	-----------------------------------------
;	 function _serial_emptybuffer
;	-----------------------------------------
__serial_emptybuffer:
;	Serial.c:77: while (bufferlo_bill[count] != 0) {
	mov	r7,#0x00
00101$:
	mov	a,r7
	add	a,#_bufferlo_bill
	mov	r1,a
	movx	a,@r1
	jz	00103$
;	Serial.c:78: input_buffer[count] = bufferlo_bill[count];
	mov	a,r7
	add	a,#_input_buffer
	mov	r1,a
	mov	a,r7
	add	a,#_bufferlo_bill
	mov	r0,a
	movx	a,@r0
	mov	r6,a
	movx	@r1,a
;	Serial.c:79: ++count;
	inc	r7
	sjmp	00101$
00103$:
;	Serial.c:82: input_buffer[count] = bufferlo_bill[count];
	mov	a,r7
	add	a,#_input_buffer
	mov	r1,a
	mov	a,r7
	add	a,#_bufferlo_bill
	mov	r0,a
	movx	a,@r0
	movx	@r1,a
;	Serial.c:83: bufferlo_bill_counter = 0;
	mov	r0,#_bufferlo_bill_counter
	clr	a
	movx	@r0,a
;	Serial.c:84: bufferlo_bill[0] = 0;
	mov	r0,#_bufferlo_bill
	movx	@r0,a
;	Serial.c:87: return input_buffer;
	mov	dptr,#_input_buffer
	mov	b,#0x60
;	Serial.c:88: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_serial_putchar'
;------------------------------------------------------------
;	Serial.c:92: void _serial_putchar(unsigned char c) {
;	-----------------------------------------
;	 function _serial_putchar
;	-----------------------------------------
__serial_putchar:
	mov	r7,dpl
;	Serial.c:93: newyork_jets = c;
	mov	r0,#_newyork_jets
	mov	a,r7
	movx	@r0,a
;	Serial.c:94: SBUF = newyork_jets;
	mov	r0,#_newyork_jets
	movx	a,@r0
	mov	_SBUF,a
;	Serial.c:95: while (newyork_jets != 0);
00101$:
	mov	r0,#_newyork_jets
	movx	a,@r0
	jnz	00101$
;	Serial.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_serial_interrupt'
;------------------------------------------------------------
;	Serial.c:100: void _serial_interrupt(void) __interrupt (4) {
;	-----------------------------------------
;	 function _serial_interrupt
;	-----------------------------------------
__serial_interrupt:
	push	acc
	push	b
	push	ar0
	push	psw
	mov	psw,#0x00
;	Serial.c:101: if (RI) {
	jnb	_RI,00104$
;	Serial.c:105: __endasm;
;
	CLR	EA
	CLR	RI
;	Serial.c:106: bufferlo_bill[bufferlo_bill_counter] = SBUF;
	mov	r0,#_bufferlo_bill_counter
	movx	a,@r0
	add	a,#_bufferlo_bill
	mov	r0,a
	mov	a,_SBUF
	movx	@r0,a
;	Serial.c:107: ++bufferlo_bill_counter;
	mov	r0,#_bufferlo_bill_counter
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
;	Serial.c:108: bufferlo_bill[bufferlo_bill_counter] = 0;
	mov	r0,#_bufferlo_bill_counter
	movx	a,@r0
	add	a,#_bufferlo_bill
	mov	r0,a
	clr	a
	movx	@r0,a
;	Serial.c:109: if (bufferlo_bill_counter > BUFFER_SIZE) bufferlo_bill_counter = 0;
	mov	r0,#_bufferlo_bill_counter
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0x20
	subb	a,b
	jnc	00102$
	mov	r0,#_bufferlo_bill_counter
	clr	a
	movx	@r0,a
00102$:
;	Serial.c:112: __endasm;
;
	SETB	EA
00104$:
;	Serial.c:115: if (TI ) {
	jnb	_TI,00107$
;	Serial.c:116: newyork_jets = 0;
	mov	r0,#_newyork_jets
	clr	a
	movx	@r0,a
;	Serial.c:117: TI = 0;
;	assignBit
	clr	_TI
00107$:
;	Serial.c:119: }
	pop	psw
	pop	ar0
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
