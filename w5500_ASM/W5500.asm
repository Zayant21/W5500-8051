;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module W5500
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __spigeneric_frame_end
	.globl __spigeneric_frame_start
	.globl __spigeneric_spit_byte
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
	.globl __w5500_write_PARM_4
	.globl __w5500_write_PARM_3
	.globl __w5500_write_PARM_2
	.globl __w5500_read_PARM_4
	.globl __w5500_read_PARM_3
	.globl __w5500_read_PARM_2
	.globl __w5500_writeto_PARM_3
	.globl __w5500_writeto_PARM_2
	.globl __w5500_set_destinationip_PARM_2
	.globl __w5500_set_remoteport_PARM_2
	.globl __w5500_set_sourceport_PARM_2
	.globl __w5500_input_buffer
	.globl _small_buffer
	.globl __w5500_open
	.globl __w5500_reset
	.globl __w5500_close
	.globl __w5500_discon
	.globl __w5500_set_udp
	.globl __w5500_set_tcp
	.globl __w5500_get_IMR
	.globl __w5500_get_SIR
	.globl __w5500_set_IMR
	.globl __w5500_get_SIMR
	.globl __w5500_clear_SNIR
	.globl __w5500_get_SNIR
	.globl __w5500_get_status
	.globl __w5500_listen
	.globl __w5500_set_sourceport
	.globl __w5500_set_remoteport
	.globl __w5500_set_destinationip
	.globl __w5500_writeto
	.globl __w5500_bytesinbuffer
	.globl __w5500_readchar
	.globl __w5500_send
	.globl __w5500_get_version
	.globl __w5500_get_phyconfig
	.globl __w5500_read
	.globl __w5500_write
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
__w5500_read_sloc0_1_0:
	.ds 2
__w5500_write_sloc0_1_0:
	.ds 2
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
_small_buffer::
	.ds 2
__w5500_input_buffer::
	.ds 33
__w5500_set_sourceport_PARM_2:
	.ds 2
__w5500_set_remoteport_PARM_2:
	.ds 2
__w5500_set_destinationip_PARM_2:
	.ds 3
__w5500_writeto_PARM_2:
	.ds 3
__w5500_writeto_PARM_3:
	.ds 1
__w5500_readchar_val_65536_61:
	.ds 1
__w5500_read_PARM_2:
	.ds 1
__w5500_read_PARM_3:
	.ds 3
__w5500_read_PARM_4:
	.ds 2
__w5500_write_PARM_2:
	.ds 1
__w5500_write_PARM_3:
	.ds 3
__w5500_write_PARM_4:
	.ds 2
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
;Allocation info for local variables in function '_w5500_open'
;------------------------------------------------------------
;	W5500.c:6: void _w5500_open(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_open
;	-----------------------------------------
__w5500_open:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	W5500.c:7: small_buffer[0] = 0x1;
	mov	r0,#_small_buffer
	mov	a,#0x01
	movx	@r0,a
;	W5500.c:8: _w5500_write(SOCKETN_COMMAND, (socket * 4) + 1, small_buffer, 1);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0001
;	W5500.c:9: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_reset'
;------------------------------------------------------------
;	W5500.c:11: void _w5500_reset() {
;	-----------------------------------------
;	 function _w5500_reset
;	-----------------------------------------
__w5500_reset:
;	W5500.c:12: small_buffer[0] = 0x80;
	mov	r0,#_small_buffer
	mov	a,#0x80
	movx	@r0,a
;	W5500.c:13: _w5500_write(0x00, 0x00, small_buffer, 1);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
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
	inc	a
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0000
;	W5500.c:14: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_close'
;------------------------------------------------------------
;	W5500.c:16: void _w5500_close(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_close
;	-----------------------------------------
__w5500_close:
	mov	r7,dpl
;	W5500.c:17: small_buffer[0] = 0x10;
	mov	r0,#_small_buffer
	mov	a,#0x10
	movx	@r0,a
;	W5500.c:18: _w5500_write(SOCKETN_COMMAND, (socket * 4) + 1, small_buffer, 1);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0001
;	W5500.c:19: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_discon'
;------------------------------------------------------------
;	W5500.c:21: void _w5500_discon(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_discon
;	-----------------------------------------
__w5500_discon:
	mov	r7,dpl
;	W5500.c:22: small_buffer[0] = 0x08;
	mov	r0,#_small_buffer
	mov	a,#0x08
	movx	@r0,a
;	W5500.c:23: _w5500_write(SOCKETN_COMMAND, (socket * 4) + 1, small_buffer, 1);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0001
;	W5500.c:24: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_set_udp'
;------------------------------------------------------------
;	W5500.c:26: void _w5500_set_udp(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_set_udp
;	-----------------------------------------
__w5500_set_udp:
;	W5500.c:27: _w5500_read(0x00, (socket * 4) + 1, small_buffer, 1);
	mov	a,dpl
	add	a,dpl
	add	a,acc
	mov	r7,a
	inc	r7
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_2
	mov	a,r7
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0000
	push	ar7
	lcall	__w5500_read
	pop	ar7
;	W5500.c:28: small_buffer[0] &= 0xF0;
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	r6,a
	anl	ar6,#0xf0
	mov	r0,#_small_buffer
	mov	a,r6
	movx	@r0,a
;	W5500.c:29: small_buffer[0] |= PROTOCOL_UDP;
	mov	a,#0x02
	orl	a,r6
	mov	r0,#_small_buffer
	movx	@r0,a
;	W5500.c:30: _w5500_write(0x00, (socket * 4) + 1, small_buffer, 1);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	mov	a,r7
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0000
;	W5500.c:31: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_set_tcp'
;------------------------------------------------------------
;	W5500.c:33: void _w5500_set_tcp(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_set_tcp
;	-----------------------------------------
__w5500_set_tcp:
;	W5500.c:34: _w5500_read(0x00, (socket * 4) + 1, small_buffer, 1);
	mov	a,dpl
	add	a,dpl
	add	a,acc
	mov	r7,a
	inc	r7
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_2
	mov	a,r7
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0000
	push	ar7
	lcall	__w5500_read
	pop	ar7
;	W5500.c:35: small_buffer[0] &= 0xF0;
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	r6,a
	anl	ar6,#0xf0
	mov	r0,#_small_buffer
	mov	a,r6
	movx	@r0,a
;	W5500.c:36: small_buffer[0] |= PROTOCOL_TCP;
	mov	a,#0x01
	orl	a,r6
	mov	r0,#_small_buffer
	movx	@r0,a
;	W5500.c:37: _w5500_write(0x00, (socket * 4) + 1, small_buffer, 1);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	mov	a,r7
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0000
;	W5500.c:38: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_get_IMR'
;------------------------------------------------------------
;	W5500.c:41: unsigned char _w5500_get_IMR(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_get_IMR
;	-----------------------------------------
__w5500_get_IMR:
;	W5500.c:42: _w5500_read(SOCKETN_IMR, (socket * 4) + 1, small_buffer, 1);
	mov	a,dpl
	add	a,dpl
	add	a,acc
	mov	r0,#__w5500_read_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x002c
	lcall	__w5500_read
;	W5500.c:43: return (small_buffer[0]);
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	dpl,a
;	W5500.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_get_SIR'
;------------------------------------------------------------
;	W5500.c:46: unsigned char _w5500_get_SIR() {
;	-----------------------------------------
;	 function _w5500_get_SIR
;	-----------------------------------------
__w5500_get_SIR:
;	W5500.c:47: _w5500_read(0x0017, 0x00, small_buffer, 1);
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	inc	a
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0017
	lcall	__w5500_read
;	W5500.c:48: return (small_buffer[0]);
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	dpl,a
;	W5500.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_set_IMR'
;------------------------------------------------------------
;	W5500.c:52: void _w5500_set_IMR(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_set_IMR
;	-----------------------------------------
__w5500_set_IMR:
	mov	r7,dpl
;	W5500.c:53: small_buffer[0] = 0x04;
	mov	r0,#_small_buffer
	mov	a,#0x04
	movx	@r0,a
;	W5500.c:54: _w5500_write(SOCKETN_IMR, (socket * 4) + 1, small_buffer, 1);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x002c
;	W5500.c:55: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_get_SIMR'
;------------------------------------------------------------
;	W5500.c:58: unsigned char _w5500_get_SIMR() {
;	-----------------------------------------
;	 function _w5500_get_SIMR
;	-----------------------------------------
__w5500_get_SIMR:
;	W5500.c:59: _w5500_read(0x0018, 0x00, small_buffer, 1);
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	inc	a
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0018
	lcall	__w5500_read
;	W5500.c:60: return (small_buffer[0]);
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	dpl,a
;	W5500.c:61: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_clear_SNIR'
;------------------------------------------------------------
;	W5500.c:63: void _w5500_clear_SNIR(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_clear_SNIR
;	-----------------------------------------
__w5500_clear_SNIR:
	mov	r7,dpl
;	W5500.c:64: small_buffer[0] = 0xFF;
	mov	r0,#_small_buffer
	mov	a,#0xff
	movx	@r0,a
;	W5500.c:65: _w5500_write(0x0002, (socket * 4) + 1, small_buffer, 1);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0002
;	W5500.c:66: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_get_SNIR'
;------------------------------------------------------------
;	W5500.c:68: unsigned char _w5500_get_SNIR(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_get_SNIR
;	-----------------------------------------
__w5500_get_SNIR:
;	W5500.c:69: _w5500_read(0x0002, (socket * 4) + 1, small_buffer, 1);
	mov	a,dpl
	add	a,dpl
	add	a,acc
	mov	r0,#__w5500_read_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0002
	lcall	__w5500_read
;	W5500.c:70: return (small_buffer[0]);
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	dpl,a
;	W5500.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_get_status'
;------------------------------------------------------------
;	W5500.c:74: unsigned char _w5500_get_status(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_get_status
;	-----------------------------------------
__w5500_get_status:
;	W5500.c:75: _w5500_read(0x03, (socket * 4) + 1, small_buffer, 1);
	mov	a,dpl
	add	a,dpl
	add	a,acc
	mov	r0,#__w5500_read_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0003
	lcall	__w5500_read
;	W5500.c:76: return small_buffer[0];
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	dpl,a
;	W5500.c:77: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_listen'
;------------------------------------------------------------
;	W5500.c:79: void _w5500_listen(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_listen
;	-----------------------------------------
__w5500_listen:
	mov	r7,dpl
;	W5500.c:80: small_buffer[0] = 0x02;
	mov	r0,#_small_buffer
	mov	a,#0x02
	movx	@r0,a
;	W5500.c:81: _w5500_write(SOCKETN_COMMAND, (socket * 4) + 1, small_buffer, 1);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0001
;	W5500.c:82: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_set_sourceport'
;------------------------------------------------------------
;	W5500.c:89: void _w5500_set_sourceport(unsigned char socket, unsigned int port) {
;	-----------------------------------------
;	 function _w5500_set_sourceport
;	-----------------------------------------
__w5500_set_sourceport:
	mov	r7,dpl
;	W5500.c:90: small_buffer[0] = port >> 8;
	mov	r0,#(__w5500_set_sourceport_PARM_2 + 1)
	movx	a,@r0
	mov	r0,#_small_buffer
	movx	@r0,a
;	W5500.c:91: small_buffer[1] = port & 0xFF;
	mov	r0,#__w5500_set_sourceport_PARM_2
	movx	a,@r0
	mov	r6,a
	mov	r0,#(_small_buffer + 0x0001)
	movx	@r0,a
;	W5500.c:92: _w5500_write(SOCKETN_SOURCEPORT, (socket * 4) + 1, small_buffer, 2);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0004
;	W5500.c:93: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_set_remoteport'
;------------------------------------------------------------
;	W5500.c:95: void _w5500_set_remoteport(unsigned char socket, unsigned int port) {
;	-----------------------------------------
;	 function _w5500_set_remoteport
;	-----------------------------------------
__w5500_set_remoteport:
	mov	r7,dpl
;	W5500.c:96: small_buffer[0] = port >> 8;
	mov	r0,#(__w5500_set_remoteport_PARM_2 + 1)
	movx	a,@r0
	mov	r0,#_small_buffer
	movx	@r0,a
;	W5500.c:97: small_buffer[1] = port & 0xFF;
	mov	r0,#__w5500_set_remoteport_PARM_2
	movx	a,@r0
	mov	r6,a
	mov	r0,#(_small_buffer + 0x0001)
	movx	@r0,a
;	W5500.c:98: _w5500_write(SOCKETN_DEST_PORT, (socket * 4) + 1, small_buffer, 2);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0010
;	W5500.c:99: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_set_destinationip'
;------------------------------------------------------------
;	W5500.c:101: void _w5500_set_destinationip(unsigned char socket, unsigned char* ip) {
;	-----------------------------------------
;	 function _w5500_set_destinationip
;	-----------------------------------------
__w5500_set_destinationip:
;	W5500.c:102: _w5500_write(SOCKETN_DEST_IP, (socket * 4) + 1, ip, 4);
	mov	a,dpl
	add	a,dpl
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_set_destinationip_PARM_2
	mov	r1,#__w5500_write_PARM_3
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x04
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x000c
;	W5500.c:103: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_writeto'
;------------------------------------------------------------
;	W5500.c:106: void _w5500_writeto(unsigned char socket, const unsigned char* data, unsigned char length) {
;	-----------------------------------------
;	 function _w5500_writeto
;	-----------------------------------------
__w5500_writeto:
;	W5500.c:108: _w5500_read(0x24, (socket * 4) + 1, small_buffer, 2);
	mov	a,dpl
	add	a,dpl
	add	a,acc
	mov	r7,a
	inc	a
	mov	r6,a
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_2
	mov	a,r6
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0024
	push	ar7
	push	ar6
	lcall	__w5500_read
	pop	ar6
	pop	ar7
;	W5500.c:109: easy_math = (small_buffer[0] << 8) | small_buffer[1];
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	r0,#(_small_buffer + 0x0001)
	movx	a,@r0
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	W5500.c:110: _w5500_write(easy_math, (socket * 4) + 2, data, length);
	mov	r0,#__w5500_write_PARM_2
	mov	a,#0x02
	add	a,r7
	movx	@r0,a
	mov	r0,#__w5500_writeto_PARM_3
	mov	r1,#__w5500_write_PARM_4
	movx	a,@r0
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	mov	r0,#__w5500_writeto_PARM_2
	mov	r1,#__w5500_write_PARM_3
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r5
	mov	dph,r4
	push	ar6
	push	ar5
	push	ar4
	lcall	__w5500_write
	pop	ar4
	pop	ar5
	pop	ar6
;	W5500.c:111: easy_math += length;
	mov	r0,#__w5500_writeto_PARM_3
	movx	a,@r0
	mov	r7,#0x00
	add	a,r5
	mov	r3,a
	mov	a,r7
	addc	a,r4
;	W5500.c:112: small_buffer[0] = easy_math >> 8;
	mov	r5,a
	mov	r0,#_small_buffer
	movx	@r0,a
;	W5500.c:113: small_buffer[1] = easy_math & 0xFF;
	mov	r0,#(_small_buffer + 0x0001)
	mov	a,r3
	movx	@r0,a
;	W5500.c:114: _w5500_write(0x24, (socket * 4) + 1, small_buffer, 2);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	mov	a,r6
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0024
;	W5500.c:115: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_bytesinbuffer'
;------------------------------------------------------------
;	W5500.c:117: unsigned int _w5500_bytesinbuffer(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_bytesinbuffer
;	-----------------------------------------
__w5500_bytesinbuffer:
;	W5500.c:118: _w5500_read(0x26, (socket * 4) + 1, small_buffer, 2);
	mov	a,dpl
	add	a,dpl
	add	a,acc
	mov	r0,#__w5500_read_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0026
	lcall	__w5500_read
;	W5500.c:119: return (small_buffer[0] << 8) | small_buffer[1];
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	r0,#(_small_buffer + 0x0001)
	movx	a,@r0
	mov	r4,#0x00
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r6
	mov	dph,a
;	W5500.c:120: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_readchar'
;------------------------------------------------------------
;	W5500.c:189: unsigned char _w5500_readchar(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_readchar
;	-----------------------------------------
__w5500_readchar:
	mov	r7,dpl
;	W5500.c:190: unsigned char val = 0;
	mov	r0,#__w5500_readchar_val_65536_61
	clr	a
	movx	@r0,a
;	W5500.c:192: _w5500_read(0x28, (socket * 4) + 1, small_buffer, 2);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r7,a
	inc	a
	mov	r6,a
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_2
	mov	a,r6
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0028
	push	ar7
	push	ar6
	lcall	__w5500_read
	pop	ar6
	pop	ar7
;	W5500.c:193: starting_addr = (small_buffer[0] << 8) | small_buffer[1];
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	r0,#(_small_buffer + 0x0001)
	movx	a,@r0
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	W5500.c:194: _w5500_read(starting_addr, (socket * 4) + 3, &val, 1);
	mov	r0,#__w5500_read_PARM_2
	mov	a,#0x03
	add	a,r7
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_3
	mov	a,#__w5500_readchar_val_65536_61
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r4
	push	ar6
	push	ar5
	push	ar4
	lcall	__w5500_read
	pop	ar4
	pop	ar5
	pop	ar6
;	W5500.c:195: starting_addr++;
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r4
00103$:
;	W5500.c:196: small_buffer[0] = starting_addr >> 8;
	mov	ar7,r4
	mov	r0,#_small_buffer
	mov	a,r7
	movx	@r0,a
;	W5500.c:197: small_buffer[1] = starting_addr & 0xFF;
	mov	r0,#(_small_buffer + 0x0001)
	mov	a,r5
	movx	@r0,a
;	W5500.c:198: _w5500_write(0x28, (socket  * 4) + 1, small_buffer, 2);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	mov	a,r6
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0028
	push	ar6
	lcall	__w5500_write
	pop	ar6
;	W5500.c:199: small_buffer[0] = 0x40;
	mov	r0,#_small_buffer
	mov	a,#0x40
	movx	@r0,a
;	W5500.c:200: _w5500_write(SOCKETN_COMMAND, (socket * 4) + 1, small_buffer, 1);
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_2
	mov	a,r6
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0001
	lcall	__w5500_write
;	W5500.c:201: return val;
	mov	r0,#__w5500_readchar_val_65536_61
	movx	a,@r0
	mov	dpl,a
;	W5500.c:202: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_send'
;------------------------------------------------------------
;	W5500.c:204: void _w5500_send(unsigned char socket) {
;	-----------------------------------------
;	 function _w5500_send
;	-----------------------------------------
__w5500_send:
	mov	r7,dpl
;	W5500.c:205: small_buffer[0] = 0x20;
	mov	r0,#_small_buffer
	mov	a,#0x20
	movx	@r0,a
;	W5500.c:206: _w5500_write(SOCKETN_COMMAND, (socket * 4) + 1, small_buffer, 1);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r0,#__w5500_write_PARM_2
	inc	a
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_write_PARM_4
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0001
;	W5500.c:207: }
	ljmp	__w5500_write
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_get_version'
;------------------------------------------------------------
;	W5500.c:209: unsigned char _w5500_get_version() {
;	-----------------------------------------
;	 function _w5500_get_version
;	-----------------------------------------
__w5500_get_version:
;	W5500.c:210: _w5500_read(0x0039, 0x00, small_buffer, 1);
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	inc	a
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x0039
	lcall	__w5500_read
;	W5500.c:211: return small_buffer[0];
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	dpl,a
;	W5500.c:212: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_get_phyconfig'
;------------------------------------------------------------
;	W5500.c:214: unsigned char _w5500_get_phyconfig() {
;	-----------------------------------------
;	 function _w5500_get_phyconfig
;	-----------------------------------------
__w5500_get_phyconfig:
;	W5500.c:215: _w5500_read(0x002E, 0x00, small_buffer, 1);
	mov	r0,#__w5500_read_PARM_3
	mov	a,#_small_buffer
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x60
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#__w5500_read_PARM_4
	inc	a
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x002e
	lcall	__w5500_read
;	W5500.c:216: return small_buffer[0];
	mov	r0,#_small_buffer
	movx	a,@r0
	mov	dpl,a
;	W5500.c:217: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_read'
;------------------------------------------------------------
;sloc0                     Allocated with name '__w5500_read_sloc0_1_0'
;------------------------------------------------------------
;	W5500.c:219: void _w5500_read(unsigned int oa, unsigned char bsb, unsigned char* data, unsigned int length) {
;	-----------------------------------------
;	 function _w5500_read
;	-----------------------------------------
__w5500_read:
	mov	r6,dpl
	mov	r7,dph
;	W5500.c:220: unsigned char oa_high = oa >> 8;
	mov	ar5,r7
;	W5500.c:221: unsigned char oa_low = oa & 0xFF;
;	W5500.c:222: unsigned char true_bsb = ((bsb << 3) | (0 << 2)); // | om, this was removed because om always == 0 in my use cases
	mov	r0,#__w5500_read_PARM_2
	movx	a,@r0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
;	W5500.c:224: _spigeneric_frame_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	__spigeneric_frame_start
	pop	ar5
;	W5500.c:226: _spigeneric_spit_byte(oa_high);
	mov	dpl,r5
	lcall	__spigeneric_spit_byte
	pop	ar6
;	W5500.c:227: _spigeneric_spit_byte(oa_low);
	mov	dpl,r6
	lcall	__spigeneric_spit_byte
	pop	ar7
;	W5500.c:228: _spigeneric_spit_byte(true_bsb);
	mov	dpl,r7
	lcall	__spigeneric_spit_byte
;	W5500.c:229: while (length--)    *(data++) = _spigeneric_spit_byte(0x00);
	mov	r0,#__w5500_read_PARM_3
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#__w5500_read_PARM_4
	movx	a,@r0
	mov	__w5500_read_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(__w5500_read_sloc0_1_0 + 1),a
00101$:
	mov	r2,__w5500_read_sloc0_1_0
	mov	r4,(__w5500_read_sloc0_1_0 + 1)
	dec	__w5500_read_sloc0_1_0
	mov	a,#0xff
	cjne	a,__w5500_read_sloc0_1_0,00115$
	dec	(__w5500_read_sloc0_1_0 + 1)
00115$:
	mov	a,r2
	orl	a,r4
	jz	00103$
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	__spigeneric_spit_byte
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00101$
00103$:
;	W5500.c:231: _spigeneric_frame_end();
;	W5500.c:232: }
	ljmp	__spigeneric_frame_end
;------------------------------------------------------------
;Allocation info for local variables in function '_w5500_write'
;------------------------------------------------------------
;sloc0                     Allocated with name '__w5500_write_sloc0_1_0'
;------------------------------------------------------------
;	W5500.c:234: void _w5500_write(unsigned int oa, unsigned char bsb, const unsigned char* data, unsigned int length) {
;	-----------------------------------------
;	 function _w5500_write
;	-----------------------------------------
__w5500_write:
	mov	r6,dpl
	mov	r7,dph
;	W5500.c:235: unsigned char oa_high = oa >> 8;
	mov	ar5,r7
;	W5500.c:236: unsigned char oa_low = oa & 0xFF;
;	W5500.c:237: unsigned char true_bsb = ((bsb << 3) | (1 << 2)); // | om, this was removed because om always == 0 in my use cases
	mov	r0,#__w5500_write_PARM_2
	movx	a,@r0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r7,a
	orl	ar7,#0x04
;	W5500.c:239: _spigeneric_frame_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	__spigeneric_frame_start
	pop	ar5
;	W5500.c:241: _spigeneric_spit_byte(oa_high);
	mov	dpl,r5
	lcall	__spigeneric_spit_byte
	pop	ar6
;	W5500.c:242: _spigeneric_spit_byte(oa_low);
	mov	dpl,r6
	lcall	__spigeneric_spit_byte
	pop	ar7
;	W5500.c:243: _spigeneric_spit_byte(true_bsb);
	mov	dpl,r7
	lcall	__spigeneric_spit_byte
;	W5500.c:244: while (length--) _spigeneric_spit_byte(*(data++));
	mov	r0,#__w5500_write_PARM_3
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#__w5500_write_PARM_4
	movx	a,@r0
	mov	__w5500_write_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(__w5500_write_sloc0_1_0 + 1),a
00101$:
	mov	r2,__w5500_write_sloc0_1_0
	mov	r4,(__w5500_write_sloc0_1_0 + 1)
	dec	__w5500_write_sloc0_1_0
	mov	a,#0xff
	cjne	a,__w5500_write_sloc0_1_0,00115$
	dec	(__w5500_write_sloc0_1_0 + 1)
00115$:
	mov	a,r2
	orl	a,r4
	jz	00103$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	__spigeneric_spit_byte
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	W5500.c:246: _spigeneric_frame_end();
;	W5500.c:247: }
	ljmp	__spigeneric_frame_end
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
