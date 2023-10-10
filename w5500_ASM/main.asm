;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _loop
	.globl _setup
	.globl _setuptcp
	.globl _menudisplay
	.globl _displayMACAddress
	.globl _displayIPAddress
	.globl _extractAndAssign
	.globl _parseMAC
	.globl _hexCharToInt
	.globl _strcmp
	.globl _strlen
	.globl _toupper
	.globl __w5500_write
	.globl __w5500_readchar
	.globl __w5500_listen
	.globl __w5500_close
	.globl __w5500_open
	.globl __w5500_set_tcp
	.globl __w5500_set_udp
	.globl __w5500_send
	.globl __w5500_clear_SNIR
	.globl __w5500_get_SIR
	.globl __w5500_get_SIMR
	.globl __w5500_set_IMR
	.globl __w5500_get_IMR
	.globl __w5500_get_status
	.globl __w5500_bytesinbuffer
	.globl __w5500_writeto
	.globl __w5500_set_destinationip
	.globl __w5500_set_remoteport
	.globl __w5500_set_sourceport
	.globl __spigeneric_reset
	.globl __serial_putbyte_dec
	.globl __serial_putbyte_hex
	.globl __serial_emptybuffer
	.globl __serial_putstr
	.globl __serial_putchar
	.globl __serial_begin
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
	.globl _strcmp_PARM_2
	.globl _serialInput
	.globl _RTU_Address
	.globl _dest_ip
	.globl _mac
	.globl _ip
	.globl _subnet
	.globl _gateway
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
	.area	OSEG    (OVR,DATA)
_strcmp_sloc0_1_0:
	.ds 1
_strcmp_sloc1_1_0:
	.ds 1
_strcmp_sloc2_1_0:
	.ds 3
	.area	OSEG    (OVR,DATA)
_extractAndAssign_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_gateway::
	.ds 4
_subnet::
	.ds 4
_ip::
	.ds 4
_mac::
	.ds 6
_dest_ip::
	.ds 4
_RTU_Address::
	.ds 1
_serialInput::
	.ds 3
_strcmp_PARM_2:
	.ds 3
_parseMAC_str_65536_57:
	.ds 3
_extractAndAssign_arr_65536_62:
	.ds 3
_extractAndAssign_curr_address_65536_63:
	.ds 3
_extractAndAssign_octet_65536_63:
	.ds 1
_extractAndAssign_value_65536_63:
	.ds 1
_loop_recieved_udp_65536_83:
	.ds 1
_loop_recieved_tcp_65536_83:
	.ds 1
_loop_input_buffer_65536_83:
	.ds 20
_loop_arrbuf_65536_83:
	.ds 20
_loop_serial_buffer_65536_83:
	.ds 20
_loop_serial_index_65536_83:
	.ds 1
_loop_inputLength_131073_85:
	.ds 1
_loop_fail_262145_107:
	.ds 14
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	__serial_interrupt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:8: unsigned char gateway[4] = {192, 168, 16, 1};
	mov	r0,#_gateway
	mov	a,#0xc0
	movx	@r0,a
	mov	r0,#(_gateway + 0x0001)
	mov	a,#0xa8
	movx	@r0,a
	mov	r0,#(_gateway + 0x0002)
	mov	a,#0x10
	movx	@r0,a
	mov	r0,#(_gateway + 0x0003)
	swap	a
	movx	@r0,a
;	main.c:9: unsigned char subnet[4] = {255, 255, 255, 0};
	mov	r0,#_subnet
	mov	a,#0xff
	movx	@r0,a
	mov	r0,#(_subnet + 0x0001)
	movx	@r0,a
	mov	r0,#(_subnet + 0x0002)
	movx	@r0,a
	mov	r0,#(_subnet + 0x0003)
	clr	a
	movx	@r0,a
;	main.c:10: unsigned char ip[4] = {192, 168, 16, 69};
	mov	r0,#_ip
	mov	a,#0xc0
	movx	@r0,a
	mov	r0,#(_ip + 0x0001)
	mov	a,#0xa8
	movx	@r0,a
	mov	r0,#(_ip + 0x0002)
	mov	a,#0x10
	movx	@r0,a
	mov	r0,#(_ip + 0x0003)
	mov	a,#0x45
	movx	@r0,a
;	main.c:11: unsigned char mac[6] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
	mov	r0,#_mac
	mov	a,#0xde
	movx	@r0,a
	mov	r0,#(_mac + 0x0001)
	mov	a,#0xad
	movx	@r0,a
	mov	r0,#(_mac + 0x0002)
	mov	a,#0xbe
	movx	@r0,a
	mov	r0,#(_mac + 0x0003)
	mov	a,#0xef
	movx	@r0,a
	mov	r0,#(_mac + 0x0004)
	swap	a
	movx	@r0,a
	mov	r0,#(_mac + 0x0005)
	mov	a,#0xed
	movx	@r0,a
;	main.c:12: unsigned char dest_ip[4] = {192, 168, 16, 151};
	mov	r0,#_dest_ip
	mov	a,#0xc0
	movx	@r0,a
	mov	r0,#(_dest_ip + 0x0001)
	mov	a,#0xa8
	movx	@r0,a
	mov	r0,#(_dest_ip + 0x0002)
	mov	a,#0x10
	movx	@r0,a
	mov	r0,#(_dest_ip + 0x0003)
	mov	a,#0x97
	movx	@r0,a
;	main.c:16: unsigned char RTU_Address = '3';
	mov	r0,#_RTU_Address
	mov	a,#0x33
	movx	@r0,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'strlen'
;------------------------------------------------------------
;	main.c:27: unsigned char strlen(const unsigned char* str) {
;	-----------------------------------------
;	 function strlen
;	-----------------------------------------
_strlen:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:29: while (*(str++)) ++ret;
	mov	r4,#0x00
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r3
	jz	00103$
	inc	r4
	sjmp	00101$
00103$:
;	main.c:30: return ret;
	mov	dpl,r4
;	main.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strcmp'
;------------------------------------------------------------
;sloc0                     Allocated with name '_strcmp_sloc0_1_0'
;sloc1                     Allocated with name '_strcmp_sloc1_1_0'
;sloc2                     Allocated with name '_strcmp_sloc2_1_0'
;------------------------------------------------------------
;	main.c:33: unsigned char strcmp(unsigned char* first, unsigned char* second) {
;	-----------------------------------------
;	 function strcmp
;	-----------------------------------------
_strcmp:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:34: while (*first && *second) if (*(first++) != *(second++)) return 0;
	mov	r0,#_strcmp_PARM_2
	movx	a,@r0
	mov	_strcmp_sloc2_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_strcmp_sloc2_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_strcmp_sloc2_1_0 + 2),a
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_strcmp_sloc0_1_0,a
	jz	00106$
	mov	dpl,_strcmp_sloc2_1_0
	mov	dph,(_strcmp_sloc2_1_0 + 1)
	mov	b,(_strcmp_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	_strcmp_sloc1_1_0,a
	jz	00106$
	mov	r4,_strcmp_sloc0_1_0
	inc	r5
	cjne	r5,#0x00,00127$
	inc	r6
00127$:
	mov	r3,_strcmp_sloc1_1_0
	inc	_strcmp_sloc2_1_0
	clr	a
	cjne	a,_strcmp_sloc2_1_0,00128$
	inc	(_strcmp_sloc2_1_0 + 1)
00128$:
	mov	a,r4
	cjne	a,ar3,00129$
	sjmp	00104$
00129$:
	mov	dpl,#0x00
	ret
00106$:
;	main.c:35: return 1;
	mov	dpl,#0x01
;	main.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hexCharToInt'
;------------------------------------------------------------
;	main.c:38: unsigned char hexCharToInt(char c) {
;	-----------------------------------------
;	 function hexCharToInt
;	-----------------------------------------
_hexCharToInt:
;	main.c:39: return c <= '9' ? c - '0' : c <= 'F' ? c - 'A' + 10 : c - 'a' + 10;
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x39
	jc	00103$
	mov	ar6,r7
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	sjmp	00104$
00103$:
	mov	a,r7
	add	a,#0xff - 0x46
	jc	00105$
	mov	ar5,r7
	mov	a,#0xc9
	add	a,r5
	mov	r5,a
	sjmp	00106$
00105$:
	mov	a,#0xa9
	add	a,r7
	mov	r5,a
00106$:
	mov	ar6,r5
00104$:
	mov	dpl,r6
;	main.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parseMAC'
;------------------------------------------------------------
;	main.c:42: void parseMAC(const char* str) {
;	-----------------------------------------
;	 function parseMAC
;	-----------------------------------------
_parseMAC:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#_parseMAC_str_65536_57
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	main.c:43: if(str[0] == 'M' && str[1] == 'A' && str[2] == 'C' && str[3] == '=') {
	mov	r0,#_parseMAC_str_65536_57
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x4d,00137$
	sjmp	00138$
00137$:
	ret
00138$:
	mov	r0,#_parseMAC_str_65536_57
	movx	a,@r0
	add	a,#0x01
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x41,00139$
	sjmp	00140$
00139$:
	ret
00140$:
	mov	r0,#_parseMAC_str_65536_57
	movx	a,@r0
	add	a,#0x02
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x43,00141$
	sjmp	00142$
00141$:
	ret
00142$:
	mov	r0,#_parseMAC_str_65536_57
	movx	a,@r0
	add	a,#0x03
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x3d,00143$
	sjmp	00144$
00143$:
	ret
00144$:
;	main.c:44: for(unsigned char i = 0; i < 6; i++) {
	mov	r5,#0x00
00108$:
	cjne	r5,#0x06,00145$
00145$:
	jc	00146$
	ret
00146$:
;	main.c:45: mac[i] = (hexCharToInt(str[4 + i*2]) << 4) + hexCharToInt(str[5 + i*2]);
	mov	a,r5
	add	a,#_mac
	mov	r1,a
	mov	ar2,r5
	mov	r3,#0x00
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,#0x04
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	r0,#_parseMAC_str_65536_57
	movx	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	mov	r7,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	dpl,r4
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_hexCharToInt
	mov	r7,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	a,#0x05
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r0,#_parseMAC_str_65536_57
	movx	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar5
	push	ar1
	lcall	_hexCharToInt
	mov	r6,dpl
	pop	ar1
	pop	ar5
	pop	ar7
	mov	a,r6
	add	a,r7
	movx	@r1,a
;	main.c:44: for(unsigned char i = 0; i < 6; i++) {
	inc	r5
;	main.c:48: }
	ljmp	00108$
;------------------------------------------------------------
;Allocation info for local variables in function 'extractAndAssign'
;------------------------------------------------------------
;sloc0                     Allocated with name '_extractAndAssign_sloc0_1_0'
;------------------------------------------------------------
;	main.c:50: void extractAndAssign(char *arr)
;	-----------------------------------------
;	 function extractAndAssign
;	-----------------------------------------
_extractAndAssign:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:52: unsigned char *curr_address = NULL;
	mov	r0,#_extractAndAssign_curr_address_65536_63
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	main.c:53: unsigned char octet = 0;
	mov	r0,#_extractAndAssign_octet_65536_63
	movx	@r0,a
;	main.c:56: while (*arr)
00128$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	jnz	00234$
	ret
00234$:
;	main.c:58: if (arr[0] == 'I' && arr[1] == 'P' && arr[2] == '=')
	cjne	r3,#0x49,00114$
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x50,00114$
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x3d,00114$
;	main.c:60: curr_address = ip;
	mov	r0,#_extractAndAssign_curr_address_65536_63
	mov	a,#_ip
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
;	main.c:61: arr += 3;
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	ljmp	00115$
00114$:
;	main.c:63: else if (arr[0] == 'S' && arr[1] == 'U' && arr[2] == 'B' && arr[3] == '=')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x53,00108$
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x55,00108$
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x42,00108$
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x3d,00108$
;	main.c:65: curr_address = subnet;
	mov	r0,#_extractAndAssign_curr_address_65536_63
	mov	a,#_subnet
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
;	main.c:66: arr += 4;
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	ljmp	00115$
00108$:
;	main.c:68: else if (arr[0] == 'G' && arr[1] == 'A' && arr[2] == 'T' && arr[3] == 'E' && arr[4] == '=')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x47,00249$
	sjmp	00250$
00249$:
	ljmp	00115$
00250$:
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x41,00115$
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x54,00115$
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x45,00115$
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x3d,00115$
;	main.c:70: curr_address = gateway;
	mov	r0,#_extractAndAssign_curr_address_65536_63
	mov	a,#_gateway
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
;	main.c:71: arr += 5;
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
00115$:
;	main.c:73: value = 0;
	mov	r0,#_extractAndAssign_value_65536_63
	clr	a
	movx	@r0,a
;	main.c:74: while (*arr >= '0' && *arr <= '9')
	mov	_extractAndAssign_sloc0_1_0,r5
	mov	(_extractAndAssign_sloc0_1_0 + 1),r6
	mov	(_extractAndAssign_sloc0_1_0 + 2),r7
00119$:
	mov	dpl,_extractAndAssign_sloc0_1_0
	mov	dph,(_extractAndAssign_sloc0_1_0 + 1)
	mov	b,(_extractAndAssign_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x30,00259$
00259$:
	jc	00153$
	mov	a,r2
	add	a,#0xff - 0x39
	jc	00153$
;	main.c:76: value = value * 10 + (*arr - '0');
	mov	r0,#_extractAndAssign_value_65536_63
	movx	a,@r0
	mov	b,#0x0a
	mul	ab
	mov	r4,a
	mov	a,r2
	add	a,#0xd0
	mov	r0,#_extractAndAssign_value_65536_63
	add	a,r4
	movx	@r0,a
;	main.c:77: arr++;
	inc	_extractAndAssign_sloc0_1_0
	clr	a
	cjne	a,_extractAndAssign_sloc0_1_0,00119$
	inc	(_extractAndAssign_sloc0_1_0 + 1)
	sjmp	00119$
00153$:
	mov	r0,#_extractAndAssign_arr_65536_62
	mov	a,_extractAndAssign_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(_extractAndAssign_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(_extractAndAssign_sloc0_1_0 + 2)
	movx	@r0,a
;	main.c:80: if (curr_address && octet < 4)
	mov	r0,#_extractAndAssign_curr_address_65536_63
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00126$
	mov	r0,#_extractAndAssign_octet_65536_63
	movx	a,@r0
	cjne	a,#0x04,00264$
00264$:
	jnc	00126$
;	main.c:82: curr_address[octet] = value;
	mov	r0,#_extractAndAssign_curr_address_65536_63
	mov	r1,#_extractAndAssign_octet_65536_63
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_extractAndAssign_value_65536_63
	movx	a,@r0
	lcall	__gptrput
;	main.c:83: octet++;
	mov	r0,#_extractAndAssign_octet_65536_63
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
;	main.c:85: if (*arr == '.')
	mov	dpl,_extractAndAssign_sloc0_1_0
	mov	dph,(_extractAndAssign_sloc0_1_0 + 1)
	mov	b,(_extractAndAssign_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2e,00123$
;	main.c:87: arr++;
	mov	a,#0x01
	add	a,_extractAndAssign_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_extractAndAssign_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_extractAndAssign_sloc0_1_0 + 2)
;	main.c:88: continue;
	ljmp	00128$
00123$:
;	main.c:92: octet = 0; // Reset octet count for the next IP address
	mov	r0,#_extractAndAssign_octet_65536_63
	clr	a
	movx	@r0,a
00126$:
;	main.c:95: arr++;
	mov	r0,#_extractAndAssign_arr_65536_62
	movx	a,@r0
	add	a,#0x01
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
;	main.c:97: }
	ljmp	00128$
;------------------------------------------------------------
;Allocation info for local variables in function 'displayIPAddress'
;------------------------------------------------------------
;	main.c:101: void displayIPAddress(unsigned char *address)
;	-----------------------------------------
;	 function displayIPAddress
;	-----------------------------------------
_displayIPAddress:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:103: for (unsigned char i = 0; i < 4; i++)
	mov	r4,#0x00
00105$:
	cjne	r4,#0x04,00122$
00122$:
	jnc	00107$
;	main.c:105: _serial_putbyte_dec(address[i]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__serial_putbyte_dec
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:106: if (i != 3)
	cjne	r4,#0x03,00124$
	sjmp	00106$
00124$:
;	main.c:107: _serial_putchar('.');
	mov	dpl,#0x2e
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__serial_putchar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00106$:
;	main.c:103: for (unsigned char i = 0; i < 4; i++)
	inc	r4
	sjmp	00105$
00107$:
;	main.c:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'displayMACAddress'
;------------------------------------------------------------
;	main.c:112: void displayMACAddress(unsigned char *address)
;	-----------------------------------------
;	 function displayMACAddress
;	-----------------------------------------
_displayMACAddress:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:114: for (unsigned char i = 0; i < 6; i++)
	mov	r4,#0x00
00105$:
	cjne	r4,#0x06,00122$
00122$:
	jnc	00107$
;	main.c:116: _serial_putbyte_hex(address[i]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__serial_putbyte_hex
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:117: if (i != 5)
	cjne	r4,#0x05,00124$
	sjmp	00106$
00124$:
;	main.c:118: _serial_putstr(" ");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__serial_putstr
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00106$:
;	main.c:114: for (unsigned char i = 0; i < 6; i++)
	inc	r4
	sjmp	00105$
00107$:
;	main.c:120: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'menudisplay'
;------------------------------------------------------------
;	main.c:124: void menudisplay()
;	-----------------------------------------
;	 function menudisplay
;	-----------------------------------------
_menudisplay:
;	main.c:128: _serial_putstr("\n\rCURRENT CONFIG:                    CHANGE CMD:\n\r");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:129: _serial_putstr("RTU Addr (0-9): ");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:130: _serial_putchar(RTU_Address);
	mov	r0,#_RTU_Address
	movx	a,@r0
	mov	dpl,a
	lcall	__serial_putchar
;	main.c:131: _serial_putstr("                  RTU=#\n\r");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:134: _serial_putstr("IP Addr: ");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:135: displayIPAddress(ip);
	mov	dptr,#_ip
	mov	b,#0x60
	lcall	_displayIPAddress
;	main.c:136: _serial_putstr("             IP=###.###.###.###\n\r");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:139: _serial_putstr("Subnet Mask: ");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:140: displayIPAddress(subnet);
	mov	dptr,#_subnet
	mov	b,#0x60
	lcall	_displayIPAddress
;	main.c:141: _serial_putstr("         SUB=###.###.###.###\n\r");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:144: _serial_putstr("Gateway: ");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:145: displayIPAddress(gateway);
	mov	dptr,#_gateway
	mov	b,#0x60
	lcall	_displayIPAddress
;	main.c:146: _serial_putstr("              GATE=###.###.###.###\n\r");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:149: _serial_putstr("MAC Addr: ");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:150: displayMACAddress(mac);
	mov	dptr,#_mac
	mov	b,#0x60
	lcall	_displayMACAddress
;	main.c:151: _serial_putstr("        MAC=FF FF FF FF FF FF\n\r");
	mov	dptr,#___str_11
	mov	b,#0x80
;	main.c:152: }
	ljmp	__serial_putstr
;------------------------------------------------------------
;Allocation info for local variables in function 'setuptcp'
;------------------------------------------------------------
;	main.c:155: void setuptcp(){
;	-----------------------------------------
;	 function setuptcp
;	-----------------------------------------
_setuptcp:
;	main.c:156: _w5500_set_tcp(SOCKET1);
	mov	dpl,#0x01
	lcall	__w5500_set_tcp
;	main.c:157: _w5500_set_sourceport(SOCKET1, 5002);
	mov	r0,#__w5500_set_sourceport_PARM_2
	mov	a,#0x8a
	movx	@r0,a
	inc	r0
	mov	a,#0x13
	movx	@r0,a
	mov	dpl,#0x01
	lcall	__w5500_set_sourceport
;	main.c:158: _w5500_open(SOCKET1);
	mov	dpl,#0x01
	lcall	__w5500_open
;	main.c:159: _w5500_listen(SOCKET1);
	mov	dpl,#0x01
	lcall	__w5500_listen
;	main.c:160: _w5500_set_IMR(SOCKET1);
	mov	dpl,#0x01
;	main.c:161: }
	ljmp	__w5500_set_IMR
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;	main.c:164: void setup() {
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
;	main.c:165: _serial_begin();
	lcall	__serial_begin
;	main.c:166: _spigeneric_reset();
	lcall	__spigeneric_reset
;	main.c:167: _w5500_set_gateway(gateway);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_gateway
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x04
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0001
	lcall	__w5500_write
;	main.c:168: _w5500_set_subnet(subnet);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_subnet
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x04
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0005
	lcall	__w5500_write
;	main.c:169: _w5500_set_ip(ip);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_ip
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x04
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x000f
	lcall	__w5500_write
;	main.c:170: _w5500_set_mac(mac);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_mac
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x06
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0009
	lcall	__w5500_write
;	main.c:171: _w5500_set_SIMR();
	mov	r0,#__w5500_write_PARM_3
	mov	a,#___str_12
	movx	@r0,a
	inc	r0
	mov	a,#(___str_12 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	inc	a
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0018
	lcall	__w5500_write
;	main.c:172: _serial_putstr("\n\rget_smir: ");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:173: _serial_putbyte_hex(_w5500_get_SIMR());
	lcall	__w5500_get_SIMR
	lcall	__serial_putbyte_hex
;	main.c:174: _serial_putstr("\n\rget_sir: ");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:175: _serial_putbyte_hex(_w5500_get_SIR());
	lcall	__w5500_get_SIR
	lcall	__serial_putbyte_hex
;	main.c:176: _serial_putstr("\n\rget_imr_socket0: ");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:177: _serial_putbyte_hex(_w5500_get_IMR(SOCKET0));
	mov	dpl,#0x00
	lcall	__w5500_get_IMR
	lcall	__serial_putbyte_hex
;	main.c:178: _serial_putstr("\n\rget_imr_socket1:");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	__serial_putstr
;	main.c:179: _serial_putbyte_hex(_w5500_get_IMR(SOCKET1));
	mov	dpl,#0x01
	lcall	__w5500_get_IMR
	lcall	__serial_putbyte_hex
;	main.c:181: setuptcp();
	lcall	_setuptcp
;	main.c:182: _w5500_set_destinationip(SOCKET0, dest_ip);
	mov	r0,#__w5500_set_destinationip_PARM_2
	mov	a,#_dest_ip
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	dpl,#0x00
	lcall	__w5500_set_destinationip
;	main.c:183: _w5500_set_sourceport(SOCKET0, 5001);
	mov	r0,#__w5500_set_sourceport_PARM_2
	mov	a,#0x89
	movx	@r0,a
	inc	r0
	rl	a
	movx	@r0,a
	mov	dpl,#0x00
	lcall	__w5500_set_sourceport
;	main.c:184: _w5500_set_remoteport(SOCKET0, 37052);
	mov	r0,#__w5500_set_remoteport_PARM_2
	mov	a,#0xbc
	movx	@r0,a
	inc	r0
	mov	a,#0x90
	movx	@r0,a
	mov	dpl,#0x00
	lcall	__w5500_set_remoteport
;	main.c:185: _w5500_set_udp(SOCKET0);
	mov	dpl,#0x00
	lcall	__w5500_set_udp
;	main.c:186: _w5500_open(SOCKET0);
	mov	dpl,#0x00
	lcall	__w5500_open
;	main.c:187: _w5500_set_IMR(SOCKET0);
	mov	dpl,#0x00
	lcall	__w5500_set_IMR
;	main.c:189: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	main.c:190: P1_1 = 1;
;	assignBit
	setb	_P1_1
;	main.c:191: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loop'
;------------------------------------------------------------
;	main.c:193: void loop() {
;	-----------------------------------------
;	 function loop
;	-----------------------------------------
_loop:
;	main.c:196: unsigned char recieved_udp = 0;
	mov	r0,#_loop_recieved_udp_65536_83
	clr	a
	movx	@r0,a
;	main.c:197: unsigned char recieved_tcp = 0;
	mov	r0,#_loop_recieved_tcp_65536_83
	movx	@r0,a
;	main.c:199: unsigned char input_index = 0;
	mov	r5,#0x00
;	main.c:203: unsigned char serial_index = 0;
	mov	r0,#_loop_serial_index_65536_83
	movx	@r0,a
;	main.c:207: while(1){
00167$:
;	main.c:209: serialInput = _serial_emptybuffer();
	push	ar5
	lcall	__serial_emptybuffer
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r0,#_serialInput
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
;	main.c:210: unsigned char inputLength = strlen(serialInput);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_strlen
	mov	r4,dpl
	pop	ar5
	mov	r0,#_loop_inputLength_131073_85
	mov	a,r4
	movx	@r0,a
;	main.c:211: if (inputLength) {
	mov	a,r4
	jnz	00353$
	ljmp	00207$
00353$:
;	main.c:212: if(strcmp(serialInput, "?")){
	mov	r0,#_strcmp_PARM_2
	mov	a,#___str_18
	movx	@r0,a
	inc	r0
	mov	a,#(___str_18 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	r0,#_serialInput
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	pop	ar5
	jz	00127$
;	main.c:213: menudisplay();
	push	ar5
	lcall	_menudisplay
	pop	ar5
	ljmp	00207$
00127$:
;	main.c:217: if(strcmp(serialInput, "\r")){
	mov	r0,#_strcmp_PARM_2
	mov	a,#___str_19
	movx	@r0,a
	inc	r0
	mov	a,#(___str_19 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	r0,#_serialInput
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	push	ar5
	lcall	_strcmp
	mov	a,dpl
	pop	ar5
	jnz	00355$
	ljmp	00204$
00355$:
;	main.c:218: if(serial_buffer[0]=='I' && serial_buffer[2]=='='){
	mov	r0,#_loop_serial_buffer_65536_83
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x49,00118$
	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0002)
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x3d,00118$
;	main.c:219: extractAndAssign(serial_buffer);
	mov	dptr,#_loop_serial_buffer_65536_83
	mov	b,#0x60
	push	ar5
	lcall	_extractAndAssign
;	main.c:220: _w5500_set_ip(ip);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_ip
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x04
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x000f
	lcall	__w5500_write
	pop	ar5
	ljmp	00202$
00118$:
;	main.c:221: } else if(serial_buffer[0]=='R' && serial_buffer[3]=='='){
	mov	r0,#_loop_serial_buffer_65536_83
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x52,00114$
	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0003)
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x3d,00114$
;	main.c:222: RTU_Address = serial_buffer[4];
	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0004)
	mov	r1,#_RTU_Address
	movx	a,@r0
	movx	@r1,a
	ljmp	00202$
00114$:
;	main.c:223: } else if(serial_buffer[0]=='G' && serial_buffer[4]=='='){
	mov	r0,#_loop_serial_buffer_65536_83
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x47,00110$
	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0004)
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x3d,00110$
;	main.c:224: extractAndAssign(serial_buffer);
	mov	dptr,#_loop_serial_buffer_65536_83
	mov	b,#0x60
	push	ar5
	lcall	_extractAndAssign
;	main.c:225: _w5500_set_gateway(gateway);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_gateway
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x04
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0001
	lcall	__w5500_write
	pop	ar5
	ljmp	00202$
00110$:
;	main.c:226: } else if(serial_buffer[0]=='S' && serial_buffer[3]=='='){
	mov	r0,#_loop_serial_buffer_65536_83
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x53,00106$
	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0003)
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x3d,00106$
;	main.c:227: extractAndAssign(serial_buffer);
	mov	dptr,#_loop_serial_buffer_65536_83
	mov	b,#0x60
	push	ar5
	lcall	_extractAndAssign
;	main.c:228: _w5500_set_subnet(subnet);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_subnet
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x04
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0005
	lcall	__w5500_write
	pop	ar5
	sjmp	00202$
00106$:
;	main.c:229: } else if(serial_buffer[0]=='M' && serial_buffer[3]=='='){
	mov	r0,#_loop_serial_buffer_65536_83
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x4d,00102$
	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0003)
	movx	a,@r0
	mov	r3,a
	cjne	r3,#0x3d,00102$
;	main.c:230: parseMAC(serial_buffer);
	mov	dptr,#_loop_serial_buffer_65536_83
	mov	b,#0x60
	push	ar5
	lcall	_parseMAC
;	main.c:231: _w5500_set_mac(mac);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_mac
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x06
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0009
	lcall	__w5500_write
	pop	ar5
	sjmp	00202$
00102$:
;	main.c:233: _serial_putstr("\n\rInvalid Command");
	mov	dptr,#___str_20
	mov	b,#0x80
	push	ar5
	lcall	__serial_putstr
	pop	ar5
;	main.c:236: for(unsigned char i = 0; i< 20; i++){
00202$:
	mov	r3,#0x00
00172$:
	cjne	r3,#0x14,00376$
00376$:
	jnc	00121$
;	main.c:237: serial_buffer[i] = '\0';
	mov	a,r3
	add	a,#_loop_serial_buffer_65536_83
	mov	r0,a
	clr	a
	movx	@r0,a
;	main.c:236: for(unsigned char i = 0; i< 20; i++){
	inc	r3
	sjmp	00172$
00121$:
;	main.c:239: _serial_putstr("\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	push	ar5
	lcall	__serial_putstr
	pop	ar5
;	main.c:240: serial_index=0;
	mov	r0,#_loop_serial_index_65536_83
	clr	a
	movx	@r0,a
;	main.c:242: for (unsigned char charIndex = 0; charIndex < inputLength; charIndex++)
	sjmp	00125$
00204$:
	mov	r0,#_loop_serial_index_65536_83
	movx	a,@r0
	mov	r3,a
	mov	r2,#0x00
00175$:
	mov	r0,#_loop_inputLength_131073_85
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r2
	subb	a,b
	jnc	00229$
;	main.c:244: serial_buffer[serial_index] = serialInput[charIndex];
	push	ar5
	mov	a,r3
	add	a,#_loop_serial_buffer_65536_83
	mov	r1,a
	mov	r0,#_serialInput
	movx	a,@r0
	add	a,r2
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	movx	@r1,a
;	main.c:245: serial_index++;
	inc	r3
;	main.c:242: for (unsigned char charIndex = 0; charIndex < inputLength; charIndex++)
	inc	r2
	pop	ar5
	sjmp	00175$
00229$:
	mov	r0,#_loop_serial_index_65536_83
	mov	a,r3
	movx	@r0,a
00125$:
;	main.c:248: _serial_putstr(serialInput);
	mov	r0,#_serialInput
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	push	ar5
	lcall	__serial_putstr
	pop	ar5
;	main.c:256: while (_w5500_bytesinbuffer(SOCKET0)) {
00207$:
	mov	r7,#0x00
	mov	ar6,r5
00135$:
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	__w5500_bytesinbuffer
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00230$
;	main.c:257: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	main.c:258: P1_1 = 1;
;	assignBit
	setb	_P1_1
;	main.c:259: ++read;
	inc	r7
;	main.c:260: if (read < 9) {
	cjne	r7,#0x09,00380$
00380$:
	jnc	00132$
;	main.c:261: _w5500_readchar(SOCKET0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	__w5500_readchar
	pop	ar6
	pop	ar7
;	main.c:262: continue;
	sjmp	00135$
00132$:
;	main.c:264: rec_char_byte = _w5500_readchar(SOCKET0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	__w5500_readchar
	mov	r3,dpl
	pop	ar6
	pop	ar7
;	main.c:265: if (islower(rec_char_byte)) {
	mov	ar2,r3
;	/usr/bin/../share/sdcc/include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	cjne	r2,#0x61,00382$
00382$:
	jc	00134$
	mov	a,r2
	add	a,#0xff - 0x7a
	jc	00134$
;	main.c:266: rec_char_byte = toupper(rec_char_byte);
	mov	ar2,r3
	mov	r4,#0x00
	mov	dpl,r2
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	_toupper
	mov	r2,dpl
	mov	r4,dph
	pop	ar6
	pop	ar7
	mov	ar3,r2
00134$:
;	main.c:268: input_buffer[input_index] = rec_char_byte;
	mov	a,r6
	add	a,#_loop_input_buffer_65536_83
	mov	r0,a
	mov	a,r3
	movx	@r0,a
;	main.c:269: input_index++;
	inc	r6
;	main.c:270: recieved_udp = 1;
	mov	r0,#_loop_recieved_udp_65536_83
	mov	a,#0x01
	movx	@r0,a
	sjmp	00135$
00230$:
	mov	ar5,r6
;	main.c:272: if(recieved_udp){
	mov	r0,#_loop_recieved_udp_65536_83
	movx	a,@r0
	jnz	00385$
	ljmp	00147$
00385$:
;	main.c:273: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	main.c:274: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	main.c:275: if(input_buffer[0] == ':' && input_buffer[1] == '<' && input_buffer[input_index-1] == '>'){
	mov	r0,#_loop_input_buffer_65536_83
	movx	a,@r0
	mov	r7,a
	cjne	r7,#0x3a,00141$
	mov	r0,#(_loop_input_buffer_65536_83 + 0x0001)
	movx	a,@r0
	mov	r7,a
	cjne	r7,#0x3c,00141$
	mov	ar7,r6
	mov	a,r7
	dec	a
	add	a,#_loop_input_buffer_65536_83
	mov	r1,a
	movx	a,@r1
	mov	r4,a
	cjne	r4,#0x3e,00141$
;	main.c:276: input_buffer[1] = '[';
	mov	r0,#(_loop_input_buffer_65536_83 + 0x0001)
	mov	a,#0x5b
	movx	@r0,a
;	main.c:277: input_buffer[input_index-1] = ']';
	mov	a,r7
	dec	a
	add	a,#_loop_input_buffer_65536_83
	mov	r0,a
	mov	a,#0x5d
	movx	@r0,a
;	main.c:278: if(input_buffer[2] == RTU_Address){
	mov	r0,#(_loop_input_buffer_65536_83 + 0x0002)
	movx	a,@r0
	mov	r7,a
	mov	r0,#_RTU_Address
	movx	a,@r0
	cjne	a,ar7,00392$
	sjmp	00393$
00392$:
	ljmp	00216$
00393$:
;	main.c:279: _w5500_writeto(SOCKET0, input_buffer, input_index);
	mov	r0,#__w5500_writeto_PARM_2
	mov	a,#_loop_input_buffer_65536_83
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_writeto_PARM_3
	mov	a,r6
	movx	@r0,a
	mov	dpl,#0x00
	lcall	__w5500_writeto
;	main.c:280: _w5500_send(SOCKET0);
	mov	dpl,#0x00
	lcall	__w5500_send
	sjmp	00216$
00141$:
;	main.c:283: unsigned char fail[14] = "Invalid Format";
	mov	r0,#_loop_fail_262145_107
	mov	a,#0x49
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x0001)
	mov	a,#0x6e
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x0002)
	mov	a,#0x76
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x0003)
	mov	a,#0x61
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x0004)
	mov	a,#0x6c
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x0005)
	mov	a,#0x69
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x0006)
	mov	a,#0x64
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x0007)
	mov	a,#0x20
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x0008)
	mov	a,#0x46
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x0009)
	mov	a,#0x6f
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x000a)
	mov	a,#0x72
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x000b)
	mov	a,#0x6d
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x000c)
	mov	a,#0x61
	movx	@r0,a
	mov	r0,#(_loop_fail_262145_107 + 0x000d)
	mov	a,#0x74
	movx	@r0,a
;	main.c:284: _w5500_writeto(SOCKET0, fail, 13);
	mov	r0,#__w5500_writeto_PARM_2
	mov	a,#_loop_fail_262145_107
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_writeto_PARM_3
	mov	a,#0x0d
	movx	@r0,a
	mov	dpl,#0x00
	lcall	__w5500_writeto
;	main.c:285: _w5500_send(SOCKET0);
	mov	dpl,#0x00
	lcall	__w5500_send
;	main.c:287: for(unsigned char j = 0; j < 20; j++){
00216$:
	mov	r7,#0x00
00178$:
	cjne	r7,#0x14,00394$
00394$:
	jnc	00145$
;	main.c:288: P2_4 = !P2_4;
	cpl	_P2_4
;	main.c:289: input_buffer[j] = '\0';
	mov	a,r7
	add	a,#_loop_input_buffer_65536_83
	mov	r0,a
	clr	a
	movx	@r0,a
;	main.c:287: for(unsigned char j = 0; j < 20; j++){
	inc	r7
	sjmp	00178$
00145$:
;	main.c:291: input_index = 0;
	mov	r5,#0x00
;	main.c:292: recieved_udp = 0;
	mov	r0,#_loop_recieved_udp_65536_83
	clr	a
	movx	@r0,a
;	main.c:293: _w5500_clear_SNIR(SOCKET1);
	mov	dpl,#0x01
	push	ar5
	lcall	__w5500_clear_SNIR
;	main.c:294: _w5500_clear_SNIR(SOCKET0);
	mov	dpl,#0x00
	lcall	__w5500_clear_SNIR
	pop	ar5
00147$:
;	main.c:300: unsigned char status = _w5500_get_status(SOCKET1);
	mov	dpl,#0x01
	push	ar5
	lcall	__w5500_get_status
	mov	r7,dpl
	pop	ar5
;	main.c:301: count=0;
	mov	r6,#0x00
;	main.c:303: if (status == SOCK_ESTABLISHED) {
	cjne	r7,#0x17,00396$
	sjmp	00397$
00396$:
	ljmp	00163$
00397$:
;	main.c:304: while (_w5500_bytesinbuffer(SOCKET1)) {
00150$:
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	__w5500_bytesinbuffer
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00152$
;	main.c:305: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	main.c:306: P1_1 = 1;
;	assignBit
	setb	_P1_1
;	main.c:307: rec_char_byte_tcp = _w5500_readchar(SOCKET1);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	__w5500_readchar
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:308: if (islower(rec_char_byte_tcp)) {
	mov	ar3,r4
;	/usr/bin/../share/sdcc/include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	cjne	r3,#0x61,00399$
00399$:
	jc	00149$
	mov	a,r3
	add	a,#0xff - 0x7a
	jc	00149$
;	main.c:309: rec_char_byte_tcp = toupper(rec_char_byte_tcp);
	mov	ar2,r4
	mov	r3,#0x00
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	lcall	_toupper
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar4,r2
00149$:
;	main.c:311: arrbuf[count] = rec_char_byte_tcp;
	mov	a,r6
	add	a,#_loop_arrbuf_65536_83
	mov	r0,a
	mov	a,r4
	movx	@r0,a
;	main.c:312: recieved_tcp = 1;
	mov	r0,#_loop_recieved_tcp_65536_83
	mov	a,#0x01
	movx	@r0,a
;	main.c:313: count = count + 1;
	mov	ar4,r6
	mov	a,r4
	inc	a
	mov	r6,a
	sjmp	00150$
00152$:
;	main.c:315: if(recieved_tcp){
	mov	r0,#_loop_recieved_tcp_65536_83
	movx	a,@r0
	jnz	00402$
	ljmp	00163$
00402$:
;	main.c:316: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	main.c:317: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	main.c:318: if (arrbuf[0] == ':' && arrbuf[1] == '<' && arrbuf[count-1] == '>') {
	mov	r0,#_loop_arrbuf_65536_83
	movx	a,@r0
	mov	r4,a
	cjne	r4,#0x3a,00403$
	sjmp	00404$
00403$:
	ljmp	00163$
00404$:
	mov	r0,#(_loop_arrbuf_65536_83 + 0x0001)
	movx	a,@r0
	mov	r4,a
	cjne	r4,#0x3c,00163$
	mov	ar4,r6
	mov	a,r4
	dec	a
	add	a,#_loop_arrbuf_65536_83
	mov	r1,a
	movx	a,@r1
	mov	r3,a
	cjne	r3,#0x3e,00163$
;	main.c:319: arrbuf[1] = '[';
	mov	r0,#(_loop_arrbuf_65536_83 + 0x0001)
	mov	a,#0x5b
	movx	@r0,a
;	main.c:320: arrbuf[count - 1] = ']';
	mov	a,r4
	dec	a
	add	a,#_loop_arrbuf_65536_83
	mov	r0,a
	mov	a,#0x5d
	movx	@r0,a
;	main.c:321: if(arrbuf[2] == RTU_Address){
	mov	r0,#(_loop_arrbuf_65536_83 + 0x0002)
	movx	a,@r0
	mov	r4,a
	mov	r0,#_RTU_Address
	movx	a,@r0
	cjne	a,ar4,00154$
;	main.c:322: _w5500_writeto(SOCKET1, arrbuf, count);  
	mov	r0,#__w5500_writeto_PARM_2
	mov	a,#_loop_arrbuf_65536_83
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_writeto_PARM_3
	mov	a,r6
	movx	@r0,a
	mov	dpl,#0x01
	push	ar7
	push	ar5
	lcall	__w5500_writeto
	pop	ar5
	pop	ar7
	sjmp	00155$
00154$:
;	main.c:324: _w5500_writeto(SOCKET1, arrbuf, count);  
	mov	r0,#__w5500_writeto_PARM_2
	mov	a,#_loop_arrbuf_65536_83
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_writeto_PARM_3
	mov	a,r6
	movx	@r0,a
	mov	dpl,#0x01
	push	ar7
	push	ar5
	lcall	__w5500_writeto
	pop	ar5
	pop	ar7
00155$:
;	main.c:326: _w5500_send(SOCKET1);
	mov	dpl,#0x01
	push	ar7
	push	ar5
	lcall	__w5500_send
	pop	ar5
	pop	ar7
;	main.c:327: recieved_tcp = 0;
	mov	r0,#_loop_recieved_tcp_65536_83
	clr	a
	movx	@r0,a
00163$:
;	main.c:331: if(status == SOCK_CLOSE_WAIT){
	cjne	r7,#0x1c,00411$
	sjmp	00412$
00411$:
	ljmp	00167$
00412$:
;	main.c:333: _w5500_clear_SNIR(SOCKET1);
	mov	dpl,#0x01
	push	ar5
	lcall	__w5500_clear_SNIR
;	main.c:334: _w5500_clear_SNIR(SOCKET0);
	mov	dpl,#0x00
	lcall	__w5500_clear_SNIR
;	main.c:335: _w5500_close(SOCKET1);
	mov	dpl,#0x01
	lcall	__w5500_close
;	main.c:336: setuptcp();
	lcall	_setuptcp
	pop	ar5
;	main.c:340: }
	ljmp	00167$
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:342: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:343: setup();
	lcall	_setup
;	main.c:344: while(1) {
00102$:
;	main.c:345: loop();
	lcall	_loop
;	main.c:347: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "CURRENT CONFIG:                    CHANGE CMD:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "RTU Addr (0-9): "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "                  RTU=#"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "IP Addr: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "             IP=###.###.###.###"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Subnet Mask: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "         SUB=###.###.###.###"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Gateway: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "              GATE=###.###.###.###"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "MAC Addr: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "        MAC=FF FF FF FF FF FF"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.db 0x03
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "get_smir: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii "get_sir: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii "get_imr_socket0: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "get_imr_socket1:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "?"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Command"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
