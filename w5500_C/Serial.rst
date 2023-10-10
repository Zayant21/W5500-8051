                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module Serial
                                      6 	.optsdcc -mmcs51 --model-medium
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl __serial_interrupt
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _newyork_jets
                                    109 	.globl _bufferlo_bill_counter
                                    110 	.globl _bufferlo_bill
                                    111 	.globl _input_buffer
                                    112 	.globl __serial_begin
                                    113 	.globl __serial_putstr
                                    114 	.globl __serial_putbyte_hex
                                    115 	.globl __serial_putbyte_dec
                                    116 	.globl __serial_emptybuffer
                                    117 	.globl __serial_putchar
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram 
                                    235 ;--------------------------------------------------------
                                    236 ;--------------------------------------------------------
                                    237 ; indirectly addressable internal ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area ISEG    (DATA)
                                    240 ;--------------------------------------------------------
                                    241 ; absolute internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area IABS    (ABS,DATA)
                                    244 	.area IABS    (ABS,DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; bit data
                                    247 ;--------------------------------------------------------
                                    248 	.area BSEG    (BIT)
                                    249 ;--------------------------------------------------------
                                    250 ; paged external ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area PSEG    (PAG,XDATA)
      000069                        253 _input_buffer::
      000069                        254 	.ds 33
      00008A                        255 _bufferlo_bill::
      00008A                        256 	.ds 33
      0000AB                        257 _bufferlo_bill_counter::
      0000AB                        258 	.ds 1
      0000AC                        259 _newyork_jets::
      0000AC                        260 	.ds 1
                                    261 ;--------------------------------------------------------
                                    262 ; external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XSEG    (XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; absolute external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XABS    (ABS,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; external initialized ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XISEG   (XDATA)
                                    273 	.area HOME    (CODE)
                                    274 	.area GSINIT0 (CODE)
                                    275 	.area GSINIT1 (CODE)
                                    276 	.area GSINIT2 (CODE)
                                    277 	.area GSINIT3 (CODE)
                                    278 	.area GSINIT4 (CODE)
                                    279 	.area GSINIT5 (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area CSEG    (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; global & static initialisations
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 ;	Serial.c:5: volatile unsigned char bufferlo_bill_counter = 0;
      0000EE 78 AB            [12]  291 	mov	r0,#_bufferlo_bill_counter
      0000F0 E4               [12]  292 	clr	a
      0000F1 F2               [24]  293 	movx	@r0,a
                                    294 ;	Serial.c:6: volatile unsigned char newyork_jets = 0;
      0000F2 78 AC            [12]  295 	mov	r0,#_newyork_jets
      0000F4 F2               [24]  296 	movx	@r0,a
                                    297 ;--------------------------------------------------------
                                    298 ; Home
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
                                    301 	.area HOME    (CODE)
                                    302 ;--------------------------------------------------------
                                    303 ; code
                                    304 ;--------------------------------------------------------
                                    305 	.area CSEG    (CODE)
                                    306 ;------------------------------------------------------------
                                    307 ;Allocation info for local variables in function '_serial_begin'
                                    308 ;------------------------------------------------------------
                                    309 ;	Serial.c:9: void _serial_begin() {
                                    310 ;	-----------------------------------------
                                    311 ;	 function _serial_begin
                                    312 ;	-----------------------------------------
      000B40                        313 __serial_begin:
                           000007   314 	ar7 = 0x07
                           000006   315 	ar6 = 0x06
                           000005   316 	ar5 = 0x05
                           000004   317 	ar4 = 0x04
                           000003   318 	ar3 = 0x03
                           000002   319 	ar2 = 0x02
                           000001   320 	ar1 = 0x01
                           000000   321 	ar0 = 0x00
                                    322 ;	Serial.c:14: __endasm;
                                    323 ;
      000B40 75 89 20         [24]  324 	MOV	TMOD,#0x20
      000B43 75 98 D8         [24]  325 	MOV	SCON,#0xD8
                                    326 ;MOV	SCON,#0x50
                                    327 ;	Serial.c:15: TH1 = (unsigned char) MAGIC_TH1;
      000B46 75 8D FA         [24]  328 	mov	_TH1,#0xfa
                                    329 ;	Serial.c:24: __endasm;
                                    330 ;
      000B49 E5 88            [12]  331 	MOV	A,TCON
      000B4B 44 40            [12]  332 	ORL	A,#0x40
      000B4D F5 88            [12]  333 	MOV	TCON,A
      000B4F E5 98            [12]  334 	MOV	A,SCON
      000B51 44 02            [12]  335 	ORL	A,#0x02
      000B53 F5 98            [12]  336 	MOV	SCON,A
      000B55 75 A8 90         [24]  337 	MOV	IE,#0x90
                                    338 ;	Serial.c:25: }
      000B58 22               [24]  339 	ret
                                    340 ;------------------------------------------------------------
                                    341 ;Allocation info for local variables in function '_serial_putstr'
                                    342 ;------------------------------------------------------------
                                    343 ;	Serial.c:30: void _serial_putstr(unsigned char* s) {
                                    344 ;	-----------------------------------------
                                    345 ;	 function _serial_putstr
                                    346 ;	-----------------------------------------
      000B59                        347 __serial_putstr:
      000B59 AD 82            [24]  348 	mov	r5,dpl
      000B5B AE 83            [24]  349 	mov	r6,dph
      000B5D AF F0            [24]  350 	mov	r7,b
                                    351 ;	Serial.c:31: while (*s) _serial_putchar(*(s++));
      000B5F                        352 00101$:
      000B5F 8D 82            [24]  353 	mov	dpl,r5
      000B61 8E 83            [24]  354 	mov	dph,r6
      000B63 8F F0            [24]  355 	mov	b,r7
      000B65 12 14 C7         [24]  356 	lcall	__gptrget
      000B68 FC               [12]  357 	mov	r4,a
      000B69 60 18            [24]  358 	jz	00104$
      000B6B 8C 82            [24]  359 	mov	dpl,r4
      000B6D 0D               [12]  360 	inc	r5
      000B6E BD 00 01         [24]  361 	cjne	r5,#0x00,00116$
      000B71 0E               [12]  362 	inc	r6
      000B72                        363 00116$:
      000B72 C0 07            [24]  364 	push	ar7
      000B74 C0 06            [24]  365 	push	ar6
      000B76 C0 05            [24]  366 	push	ar5
      000B78 12 0C 84         [24]  367 	lcall	__serial_putchar
      000B7B D0 05            [24]  368 	pop	ar5
      000B7D D0 06            [24]  369 	pop	ar6
      000B7F D0 07            [24]  370 	pop	ar7
      000B81 80 DC            [24]  371 	sjmp	00101$
      000B83                        372 00104$:
                                    373 ;	Serial.c:32: }
      000B83 22               [24]  374 	ret
                                    375 ;------------------------------------------------------------
                                    376 ;Allocation info for local variables in function '_serial_putbyte_hex'
                                    377 ;------------------------------------------------------------
                                    378 ;	Serial.c:34: void _serial_putbyte_hex(unsigned char b) {
                                    379 ;	-----------------------------------------
                                    380 ;	 function _serial_putbyte_hex
                                    381 ;	-----------------------------------------
      000B84                        382 __serial_putbyte_hex:
                                    383 ;	Serial.c:35: _serial_putchar((b >> 4) > 9 ? (b >> 4) + 0x37 : (b >> 4) + 0x30);
      000B84 E5 82            [12]  384 	mov	a,dpl
      000B86 FF               [12]  385 	mov	r7,a
      000B87 C4               [12]  386 	swap	a
      000B88 54 0F            [12]  387 	anl	a,#0x0f
      000B8A FE               [12]  388 	mov  r6,a
      000B8B 24 F6            [12]  389 	add	a,#0xff - 0x09
      000B8D 50 08            [24]  390 	jnc	00103$
      000B8F 8E 05            [24]  391 	mov	ar5,r6
      000B91 74 37            [12]  392 	mov	a,#0x37
      000B93 2D               [12]  393 	add	a,r5
      000B94 FD               [12]  394 	mov	r5,a
      000B95 80 04            [24]  395 	sjmp	00104$
      000B97                        396 00103$:
      000B97 74 30            [12]  397 	mov	a,#0x30
      000B99 2E               [12]  398 	add	a,r6
      000B9A FD               [12]  399 	mov	r5,a
      000B9B                        400 00104$:
      000B9B 8D 82            [24]  401 	mov	dpl,r5
      000B9D C0 07            [24]  402 	push	ar7
      000B9F 12 0C 84         [24]  403 	lcall	__serial_putchar
      000BA2 D0 07            [24]  404 	pop	ar7
                                    405 ;	Serial.c:36: _serial_putchar((b & 0xF) > 9 ? (b & 0xF) + 0x37 : (b & 0xF) + 0x30);
      000BA4 8F 05            [24]  406 	mov	ar5,r7
      000BA6 53 05 0F         [24]  407 	anl	ar5,#0x0f
      000BA9 7E 00            [12]  408 	mov	r6,#0x00
      000BAB C3               [12]  409 	clr	c
      000BAC 74 09            [12]  410 	mov	a,#0x09
      000BAE 9D               [12]  411 	subb	a,r5
      000BAF 74 80            [12]  412 	mov	a,#(0x00 ^ 0x80)
      000BB1 8E F0            [24]  413 	mov	b,r6
      000BB3 63 F0 80         [24]  414 	xrl	b,#0x80
      000BB6 95 F0            [12]  415 	subb	a,b
      000BB8 50 0A            [24]  416 	jnc	00105$
      000BBA 8F 06            [24]  417 	mov	ar6,r7
      000BBC 74 0F            [12]  418 	mov	a,#0x0f
      000BBE 5E               [12]  419 	anl	a,r6
      000BBF 24 37            [12]  420 	add	a,#0x37
      000BC1 FE               [12]  421 	mov	r6,a
      000BC2 80 06            [24]  422 	sjmp	00106$
      000BC4                        423 00105$:
      000BC4 74 0F            [12]  424 	mov	a,#0x0f
      000BC6 5F               [12]  425 	anl	a,r7
      000BC7 24 30            [12]  426 	add	a,#0x30
      000BC9 FE               [12]  427 	mov	r6,a
      000BCA                        428 00106$:
      000BCA 8E 82            [24]  429 	mov	dpl,r6
                                    430 ;	Serial.c:37: }
      000BCC 02 0C 84         [24]  431 	ljmp	__serial_putchar
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function '_serial_putbyte_dec'
                                    434 ;------------------------------------------------------------
                                    435 ;	Serial.c:39: void _serial_putbyte_dec(unsigned char b) {
                                    436 ;	-----------------------------------------
                                    437 ;	 function _serial_putbyte_dec
                                    438 ;	-----------------------------------------
      000BCF                        439 __serial_putbyte_dec:
                                    440 ;	Serial.c:40: if (b / 100) _serial_putchar((b / 100) + 0x30);
      000BCF AE 82            [24]  441 	mov	r6,dpl
      000BD1 7F 00            [12]  442 	mov	r7,#0x00
      000BD3 78 ED            [12]  443 	mov	r0,#__divsint_PARM_2
      000BD5 74 64            [12]  444 	mov	a,#0x64
      000BD7 F2               [24]  445 	movx	@r0,a
      000BD8 08               [12]  446 	inc	r0
      000BD9 E4               [12]  447 	clr	a
      000BDA F2               [24]  448 	movx	@r0,a
      000BDB 8E 82            [24]  449 	mov	dpl,r6
      000BDD 8F 83            [24]  450 	mov	dph,r7
      000BDF C0 07            [24]  451 	push	ar7
      000BE1 C0 06            [24]  452 	push	ar6
      000BE3 12 13 F1         [24]  453 	lcall	__divsint
      000BE6 AC 82            [24]  454 	mov	r4,dpl
      000BE8 AD 83            [24]  455 	mov	r5,dph
      000BEA D0 06            [24]  456 	pop	ar6
      000BEC D0 07            [24]  457 	pop	ar7
      000BEE EC               [12]  458 	mov	a,r4
      000BEF 4D               [12]  459 	orl	a,r5
      000BF0 60 10            [24]  460 	jz	00102$
      000BF2 74 30            [12]  461 	mov	a,#0x30
      000BF4 2C               [12]  462 	add	a,r4
      000BF5 F5 82            [12]  463 	mov	dpl,a
      000BF7 C0 07            [24]  464 	push	ar7
      000BF9 C0 06            [24]  465 	push	ar6
      000BFB 12 0C 84         [24]  466 	lcall	__serial_putchar
      000BFE D0 06            [24]  467 	pop	ar6
      000C00 D0 07            [24]  468 	pop	ar7
      000C02                        469 00102$:
                                    470 ;	Serial.c:41: if ((b % 100) / 10) _serial_putchar(((b % 100) / 10) + 0x30);
      000C02 78 E9            [12]  471 	mov	r0,#__modsint_PARM_2
      000C04 74 64            [12]  472 	mov	a,#0x64
      000C06 F2               [24]  473 	movx	@r0,a
      000C07 08               [12]  474 	inc	r0
      000C08 E4               [12]  475 	clr	a
      000C09 F2               [24]  476 	movx	@r0,a
      000C0A 8E 82            [24]  477 	mov	dpl,r6
      000C0C 8F 83            [24]  478 	mov	dph,r7
      000C0E C0 07            [24]  479 	push	ar7
      000C10 C0 06            [24]  480 	push	ar6
      000C12 12 13 11         [24]  481 	lcall	__modsint
      000C15 78 ED            [12]  482 	mov	r0,#__divsint_PARM_2
      000C17 74 0A            [12]  483 	mov	a,#0x0a
      000C19 F2               [24]  484 	movx	@r0,a
      000C1A 08               [12]  485 	inc	r0
      000C1B E4               [12]  486 	clr	a
      000C1C F2               [24]  487 	movx	@r0,a
      000C1D 12 13 F1         [24]  488 	lcall	__divsint
      000C20 AC 82            [24]  489 	mov	r4,dpl
      000C22 AD 83            [24]  490 	mov	r5,dph
      000C24 D0 06            [24]  491 	pop	ar6
      000C26 D0 07            [24]  492 	pop	ar7
      000C28 EC               [12]  493 	mov	a,r4
      000C29 4D               [12]  494 	orl	a,r5
      000C2A 60 10            [24]  495 	jz	00104$
      000C2C 74 30            [12]  496 	mov	a,#0x30
      000C2E 2C               [12]  497 	add	a,r4
      000C2F F5 82            [12]  498 	mov	dpl,a
      000C31 C0 07            [24]  499 	push	ar7
      000C33 C0 06            [24]  500 	push	ar6
      000C35 12 0C 84         [24]  501 	lcall	__serial_putchar
      000C38 D0 06            [24]  502 	pop	ar6
      000C3A D0 07            [24]  503 	pop	ar7
      000C3C                        504 00104$:
                                    505 ;	Serial.c:42: _serial_putchar((b % 10) + 0x30);
      000C3C 78 E9            [12]  506 	mov	r0,#__modsint_PARM_2
      000C3E 74 0A            [12]  507 	mov	a,#0x0a
      000C40 F2               [24]  508 	movx	@r0,a
      000C41 08               [12]  509 	inc	r0
      000C42 E4               [12]  510 	clr	a
      000C43 F2               [24]  511 	movx	@r0,a
      000C44 8E 82            [24]  512 	mov	dpl,r6
      000C46 8F 83            [24]  513 	mov	dph,r7
      000C48 12 13 11         [24]  514 	lcall	__modsint
      000C4B AE 82            [24]  515 	mov	r6,dpl
      000C4D 74 30            [12]  516 	mov	a,#0x30
      000C4F 2E               [12]  517 	add	a,r6
      000C50 F5 82            [12]  518 	mov	dpl,a
                                    519 ;	Serial.c:43: }
      000C52 02 0C 84         [24]  520 	ljmp	__serial_putchar
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function '_serial_emptybuffer'
                                    523 ;------------------------------------------------------------
                                    524 ;	Serial.c:73: unsigned char* _serial_emptybuffer() {
                                    525 ;	-----------------------------------------
                                    526 ;	 function _serial_emptybuffer
                                    527 ;	-----------------------------------------
      000C55                        528 __serial_emptybuffer:
                                    529 ;	Serial.c:77: while (bufferlo_bill[count] != 0) {
      000C55 7F 00            [12]  530 	mov	r7,#0x00
      000C57                        531 00101$:
      000C57 EF               [12]  532 	mov	a,r7
      000C58 24 8A            [12]  533 	add	a,#_bufferlo_bill
      000C5A F9               [12]  534 	mov	r1,a
      000C5B E3               [24]  535 	movx	a,@r1
      000C5C 60 0E            [24]  536 	jz	00103$
                                    537 ;	Serial.c:78: input_buffer[count] = bufferlo_bill[count];
      000C5E EF               [12]  538 	mov	a,r7
      000C5F 24 69            [12]  539 	add	a,#_input_buffer
      000C61 F9               [12]  540 	mov	r1,a
      000C62 EF               [12]  541 	mov	a,r7
      000C63 24 8A            [12]  542 	add	a,#_bufferlo_bill
      000C65 F8               [12]  543 	mov	r0,a
      000C66 E2               [24]  544 	movx	a,@r0
      000C67 FE               [12]  545 	mov	r6,a
      000C68 F3               [24]  546 	movx	@r1,a
                                    547 ;	Serial.c:79: ++count;
      000C69 0F               [12]  548 	inc	r7
      000C6A 80 EB            [24]  549 	sjmp	00101$
      000C6C                        550 00103$:
                                    551 ;	Serial.c:82: input_buffer[count] = bufferlo_bill[count];
      000C6C EF               [12]  552 	mov	a,r7
      000C6D 24 69            [12]  553 	add	a,#_input_buffer
      000C6F F9               [12]  554 	mov	r1,a
      000C70 EF               [12]  555 	mov	a,r7
      000C71 24 8A            [12]  556 	add	a,#_bufferlo_bill
      000C73 F8               [12]  557 	mov	r0,a
      000C74 E2               [24]  558 	movx	a,@r0
      000C75 F3               [24]  559 	movx	@r1,a
                                    560 ;	Serial.c:83: bufferlo_bill_counter = 0;
      000C76 78 AB            [12]  561 	mov	r0,#_bufferlo_bill_counter
      000C78 E4               [12]  562 	clr	a
      000C79 F2               [24]  563 	movx	@r0,a
                                    564 ;	Serial.c:84: bufferlo_bill[0] = 0;
      000C7A 78 8A            [12]  565 	mov	r0,#_bufferlo_bill
      000C7C F2               [24]  566 	movx	@r0,a
                                    567 ;	Serial.c:87: return input_buffer;
      000C7D 90 00 69         [24]  568 	mov	dptr,#_input_buffer
      000C80 75 F0 60         [24]  569 	mov	b,#0x60
                                    570 ;	Serial.c:88: }
      000C83 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function '_serial_putchar'
                                    574 ;------------------------------------------------------------
                                    575 ;	Serial.c:92: void _serial_putchar(unsigned char c) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function _serial_putchar
                                    578 ;	-----------------------------------------
      000C84                        579 __serial_putchar:
      000C84 AF 82            [24]  580 	mov	r7,dpl
                                    581 ;	Serial.c:93: newyork_jets = c;
      000C86 78 AC            [12]  582 	mov	r0,#_newyork_jets
      000C88 EF               [12]  583 	mov	a,r7
      000C89 F2               [24]  584 	movx	@r0,a
                                    585 ;	Serial.c:94: SBUF = newyork_jets;
      000C8A 78 AC            [12]  586 	mov	r0,#_newyork_jets
      000C8C E2               [24]  587 	movx	a,@r0
      000C8D F5 99            [12]  588 	mov	_SBUF,a
                                    589 ;	Serial.c:95: while (newyork_jets != 0);
      000C8F                        590 00101$:
      000C8F 78 AC            [12]  591 	mov	r0,#_newyork_jets
      000C91 E2               [24]  592 	movx	a,@r0
      000C92 70 FB            [24]  593 	jnz	00101$
                                    594 ;	Serial.c:96: }
      000C94 22               [24]  595 	ret
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function '_serial_interrupt'
                                    598 ;------------------------------------------------------------
                                    599 ;	Serial.c:100: void _serial_interrupt(void) __interrupt (4) {
                                    600 ;	-----------------------------------------
                                    601 ;	 function _serial_interrupt
                                    602 ;	-----------------------------------------
      000C95                        603 __serial_interrupt:
      000C95 C0 E0            [24]  604 	push	acc
      000C97 C0 F0            [24]  605 	push	b
      000C99 C0 00            [24]  606 	push	ar0
      000C9B C0 D0            [24]  607 	push	psw
      000C9D 75 D0 00         [24]  608 	mov	psw,#0x00
                                    609 ;	Serial.c:101: if (RI) {
      000CA0 30 98 2D         [24]  610 	jnb	_RI,00104$
                                    611 ;	Serial.c:105: __endasm;
                                    612 ;
      000CA3 C2 AF            [12]  613 	CLR	EA
      000CA5 C2 98            [12]  614 	CLR	RI
                                    615 ;	Serial.c:106: bufferlo_bill[bufferlo_bill_counter] = SBUF;
      000CA7 78 AB            [12]  616 	mov	r0,#_bufferlo_bill_counter
      000CA9 E2               [24]  617 	movx	a,@r0
      000CAA 24 8A            [12]  618 	add	a,#_bufferlo_bill
      000CAC F8               [12]  619 	mov	r0,a
      000CAD E5 99            [12]  620 	mov	a,_SBUF
      000CAF F2               [24]  621 	movx	@r0,a
                                    622 ;	Serial.c:107: ++bufferlo_bill_counter;
      000CB0 78 AB            [12]  623 	mov	r0,#_bufferlo_bill_counter
      000CB2 E2               [24]  624 	movx	a,@r0
      000CB3 24 01            [12]  625 	add	a,#0x01
      000CB5 F2               [24]  626 	movx	@r0,a
                                    627 ;	Serial.c:108: bufferlo_bill[bufferlo_bill_counter] = 0;
      000CB6 78 AB            [12]  628 	mov	r0,#_bufferlo_bill_counter
      000CB8 E2               [24]  629 	movx	a,@r0
      000CB9 24 8A            [12]  630 	add	a,#_bufferlo_bill
      000CBB F8               [12]  631 	mov	r0,a
      000CBC E4               [12]  632 	clr	a
      000CBD F2               [24]  633 	movx	@r0,a
                                    634 ;	Serial.c:109: if (bufferlo_bill_counter > BUFFER_SIZE) bufferlo_bill_counter = 0;
      000CBE 78 AB            [12]  635 	mov	r0,#_bufferlo_bill_counter
      000CC0 C3               [12]  636 	clr	c
      000CC1 E2               [24]  637 	movx	a,@r0
      000CC2 F5 F0            [12]  638 	mov	b,a
      000CC4 74 20            [12]  639 	mov	a,#0x20
      000CC6 95 F0            [12]  640 	subb	a,b
      000CC8 50 04            [24]  641 	jnc	00102$
      000CCA 78 AB            [12]  642 	mov	r0,#_bufferlo_bill_counter
      000CCC E4               [12]  643 	clr	a
      000CCD F2               [24]  644 	movx	@r0,a
      000CCE                        645 00102$:
                                    646 ;	Serial.c:112: __endasm;
                                    647 ;
      000CCE D2 AF            [12]  648 	SETB	EA
      000CD0                        649 00104$:
                                    650 ;	Serial.c:115: if (TI ) {
      000CD0 30 99 06         [24]  651 	jnb	_TI,00107$
                                    652 ;	Serial.c:116: newyork_jets = 0;
      000CD3 78 AC            [12]  653 	mov	r0,#_newyork_jets
      000CD5 E4               [12]  654 	clr	a
      000CD6 F2               [24]  655 	movx	@r0,a
                                    656 ;	Serial.c:117: TI = 0;
                                    657 ;	assignBit
      000CD7 C2 99            [12]  658 	clr	_TI
      000CD9                        659 00107$:
                                    660 ;	Serial.c:119: }
      000CD9 D0 D0            [24]  661 	pop	psw
      000CDB D0 00            [24]  662 	pop	ar0
      000CDD D0 F0            [24]  663 	pop	b
      000CDF D0 E0            [24]  664 	pop	acc
      000CE1 32               [24]  665 	reti
                                    666 ;	eliminated unneeded push/pop ar1
                                    667 ;	eliminated unneeded push/pop dpl
                                    668 ;	eliminated unneeded push/pop dph
                                    669 	.area CSEG    (CODE)
                                    670 	.area CONST   (CODE)
                                    671 	.area XINIT   (CODE)
                                    672 	.area CABS    (ABS,CODE)
