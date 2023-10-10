                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-medium
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _loop
                                     13 	.globl _setup
                                     14 	.globl _setuptcp
                                     15 	.globl _menudisplay
                                     16 	.globl _displayMACAddress
                                     17 	.globl _displayIPAddress
                                     18 	.globl _extractAndAssign
                                     19 	.globl _parseMAC
                                     20 	.globl _hexCharToInt
                                     21 	.globl _strcmp
                                     22 	.globl _strlen
                                     23 	.globl _toupper
                                     24 	.globl __w5500_write
                                     25 	.globl __w5500_readchar
                                     26 	.globl __w5500_listen
                                     27 	.globl __w5500_close
                                     28 	.globl __w5500_open
                                     29 	.globl __w5500_set_tcp
                                     30 	.globl __w5500_set_udp
                                     31 	.globl __w5500_send
                                     32 	.globl __w5500_get_status
                                     33 	.globl __w5500_bytesinbuffer
                                     34 	.globl __w5500_writeto
                                     35 	.globl __w5500_set_destinationip
                                     36 	.globl __w5500_set_remoteport
                                     37 	.globl __w5500_set_sourceport
                                     38 	.globl __serial_putbyte_dec
                                     39 	.globl __serial_putbyte_hex
                                     40 	.globl __serial_emptybuffer
                                     41 	.globl __serial_putstr
                                     42 	.globl __serial_putchar
                                     43 	.globl __serial_begin
                                     44 	.globl _CY
                                     45 	.globl _AC
                                     46 	.globl _F0
                                     47 	.globl _RS1
                                     48 	.globl _RS0
                                     49 	.globl _OV
                                     50 	.globl _F1
                                     51 	.globl _P
                                     52 	.globl _PS
                                     53 	.globl _PT1
                                     54 	.globl _PX1
                                     55 	.globl _PT0
                                     56 	.globl _PX0
                                     57 	.globl _RD
                                     58 	.globl _WR
                                     59 	.globl _T1
                                     60 	.globl _T0
                                     61 	.globl _INT1
                                     62 	.globl _INT0
                                     63 	.globl _TXD
                                     64 	.globl _RXD
                                     65 	.globl _P3_7
                                     66 	.globl _P3_6
                                     67 	.globl _P3_5
                                     68 	.globl _P3_4
                                     69 	.globl _P3_3
                                     70 	.globl _P3_2
                                     71 	.globl _P3_1
                                     72 	.globl _P3_0
                                     73 	.globl _EA
                                     74 	.globl _ES
                                     75 	.globl _ET1
                                     76 	.globl _EX1
                                     77 	.globl _ET0
                                     78 	.globl _EX0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _SM0
                                     88 	.globl _SM1
                                     89 	.globl _SM2
                                     90 	.globl _REN
                                     91 	.globl _TB8
                                     92 	.globl _RB8
                                     93 	.globl _TI
                                     94 	.globl _RI
                                     95 	.globl _P1_7
                                     96 	.globl _P1_6
                                     97 	.globl _P1_5
                                     98 	.globl _P1_4
                                     99 	.globl _P1_3
                                    100 	.globl _P1_2
                                    101 	.globl _P1_1
                                    102 	.globl _P1_0
                                    103 	.globl _TF1
                                    104 	.globl _TR1
                                    105 	.globl _TF0
                                    106 	.globl _TR0
                                    107 	.globl _IE1
                                    108 	.globl _IT1
                                    109 	.globl _IE0
                                    110 	.globl _IT0
                                    111 	.globl _P0_7
                                    112 	.globl _P0_6
                                    113 	.globl _P0_5
                                    114 	.globl _P0_4
                                    115 	.globl _P0_3
                                    116 	.globl _P0_2
                                    117 	.globl _P0_1
                                    118 	.globl _P0_0
                                    119 	.globl _B
                                    120 	.globl _ACC
                                    121 	.globl _PSW
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _strcmp_PARM_2
                                    141 	.globl _serialInput
                                    142 	.globl _RTU_Address
                                    143 	.globl _dest_ip
                                    144 	.globl _mac
                                    145 	.globl _ip
                                    146 	.globl _subnet
                                    147 	.globl _gateway
                                    148 ;--------------------------------------------------------
                                    149 ; special function registers
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0	=	0x0080
                           000081   154 _SP	=	0x0081
                           000082   155 _DPL	=	0x0082
                           000083   156 _DPH	=	0x0083
                           000087   157 _PCON	=	0x0087
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008A   160 _TL0	=	0x008a
                           00008B   161 _TL1	=	0x008b
                           00008C   162 _TH0	=	0x008c
                           00008D   163 _TH1	=	0x008d
                           000090   164 _P1	=	0x0090
                           000098   165 _SCON	=	0x0098
                           000099   166 _SBUF	=	0x0099
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 _IP	=	0x00b8
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000F0   173 _B	=	0x00f0
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AF   224 _EA	=	0x00af
                           0000B0   225 _P3_0	=	0x00b0
                           0000B1   226 _P3_1	=	0x00b1
                           0000B2   227 _P3_2	=	0x00b2
                           0000B3   228 _P3_3	=	0x00b3
                           0000B4   229 _P3_4	=	0x00b4
                           0000B5   230 _P3_5	=	0x00b5
                           0000B6   231 _P3_6	=	0x00b6
                           0000B7   232 _P3_7	=	0x00b7
                           0000B0   233 _RXD	=	0x00b0
                           0000B1   234 _TXD	=	0x00b1
                           0000B2   235 _INT0	=	0x00b2
                           0000B3   236 _INT1	=	0x00b3
                           0000B4   237 _T0	=	0x00b4
                           0000B5   238 _T1	=	0x00b5
                           0000B6   239 _WR	=	0x00b6
                           0000B7   240 _RD	=	0x00b7
                           0000B8   241 _PX0	=	0x00b8
                           0000B9   242 _PT0	=	0x00b9
                           0000BA   243 _PX1	=	0x00ba
                           0000BB   244 _PT1	=	0x00bb
                           0000BC   245 _PS	=	0x00bc
                           0000D0   246 _P	=	0x00d0
                           0000D1   247 _F1	=	0x00d1
                           0000D2   248 _OV	=	0x00d2
                           0000D3   249 _RS0	=	0x00d3
                           0000D4   250 _RS1	=	0x00d4
                           0000D5   251 _F0	=	0x00d5
                           0000D6   252 _AC	=	0x00d6
                           0000D7   253 _CY	=	0x00d7
                                    254 ;--------------------------------------------------------
                                    255 ; overlayable register banks
                                    256 ;--------------------------------------------------------
                                    257 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        258 	.ds 8
                                    259 ;--------------------------------------------------------
                                    260 ; internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area DSEG    (DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; overlayable items in internal ram 
                                    265 ;--------------------------------------------------------
                                    266 	.area	OSEG    (OVR,DATA)
      00000C                        267 _strcmp_sloc0_1_0:
      00000C                        268 	.ds 1
      00000D                        269 _strcmp_sloc1_1_0:
      00000D                        270 	.ds 1
      00000E                        271 _strcmp_sloc2_1_0:
      00000E                        272 	.ds 3
                                    273 	.area	OSEG    (OVR,DATA)
      00000C                        274 _extractAndAssign_sloc0_1_0:
      00000C                        275 	.ds 3
                                    276 ;--------------------------------------------------------
                                    277 ; Stack segment in internal ram 
                                    278 ;--------------------------------------------------------
                                    279 	.area	SSEG
      000011                        280 __start__stack:
      000011                        281 	.ds	1
                                    282 
                                    283 ;--------------------------------------------------------
                                    284 ; indirectly addressable internal ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area ISEG    (DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; absolute internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area IABS    (ABS,DATA)
                                    291 	.area IABS    (ABS,DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; bit data
                                    294 ;--------------------------------------------------------
                                    295 	.area BSEG    (BIT)
                                    296 ;--------------------------------------------------------
                                    297 ; paged external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area PSEG    (PAG,XDATA)
      000001                        300 _gateway::
      000001                        301 	.ds 4
      000005                        302 _subnet::
      000005                        303 	.ds 4
      000009                        304 _ip::
      000009                        305 	.ds 4
      00000D                        306 _mac::
      00000D                        307 	.ds 6
      000013                        308 _dest_ip::
      000013                        309 	.ds 4
      000017                        310 _RTU_Address::
      000017                        311 	.ds 1
      000018                        312 _serialInput::
      000018                        313 	.ds 3
      00001B                        314 _strcmp_PARM_2:
      00001B                        315 	.ds 3
      00001E                        316 _parseMAC_str_65536_54:
      00001E                        317 	.ds 3
      000021                        318 _extractAndAssign_arr_65536_59:
      000021                        319 	.ds 3
      000024                        320 _extractAndAssign_curr_address_65536_60:
      000024                        321 	.ds 3
      000027                        322 _extractAndAssign_octet_65536_60:
      000027                        323 	.ds 1
      000028                        324 _extractAndAssign_value_65536_60:
      000028                        325 	.ds 1
      000029                        326 _loop_recieved_udp_65536_80:
      000029                        327 	.ds 1
      00002A                        328 _loop_input_buffer_65536_80:
      00002A                        329 	.ds 20
      00003E                        330 _loop_input_index_65536_80:
      00003E                        331 	.ds 1
      00003F                        332 _loop_arrbuf_65536_80:
      00003F                        333 	.ds 20
      000053                        334 _loop_serial_buffer_65536_80:
      000053                        335 	.ds 20
      000067                        336 _loop_serial_index_65536_80:
      000067                        337 	.ds 1
      000068                        338 _loop_inputLength_131073_82:
      000068                        339 	.ds 1
                                    340 ;--------------------------------------------------------
                                    341 ; external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XSEG    (XDATA)
                                    344 ;--------------------------------------------------------
                                    345 ; absolute external ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area XABS    (ABS,XDATA)
                                    348 ;--------------------------------------------------------
                                    349 ; external initialized ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area XISEG   (XDATA)
                                    352 	.area HOME    (CODE)
                                    353 	.area GSINIT0 (CODE)
                                    354 	.area GSINIT1 (CODE)
                                    355 	.area GSINIT2 (CODE)
                                    356 	.area GSINIT3 (CODE)
                                    357 	.area GSINIT4 (CODE)
                                    358 	.area GSINIT5 (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.area GSFINAL (CODE)
                                    361 	.area CSEG    (CODE)
                                    362 ;--------------------------------------------------------
                                    363 ; interrupt vector 
                                    364 ;--------------------------------------------------------
                                    365 	.area HOME    (CODE)
      000000                        366 __interrupt_vect:
      000000 02 00 29         [24]  367 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  368 	reti
      000004                        369 	.ds	7
      00000B 32               [24]  370 	reti
      00000C                        371 	.ds	7
      000013 32               [24]  372 	reti
      000014                        373 	.ds	7
      00001B 32               [24]  374 	reti
      00001C                        375 	.ds	7
      000023 02 0C 95         [24]  376 	ljmp	__serial_interrupt
                                    377 ;--------------------------------------------------------
                                    378 ; global & static initialisations
                                    379 ;--------------------------------------------------------
                                    380 	.area HOME    (CODE)
                                    381 	.area GSINIT  (CODE)
                                    382 	.area GSFINAL (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.globl __sdcc_gsinit_startup
                                    385 	.globl __sdcc_program_startup
                                    386 	.globl __start__stack
                                    387 	.globl __mcs51_genXINIT
                                    388 	.globl __mcs51_genXRAMCLEAR
                                    389 	.globl __mcs51_genRAMCLEAR
                                    390 ;	main.c:8: unsigned char gateway[4] = {192, 168, 16, 1};
      000082 78 01            [12]  391 	mov	r0,#_gateway
      000084 74 C0            [12]  392 	mov	a,#0xc0
      000086 F2               [24]  393 	movx	@r0,a
      000087 78 02            [12]  394 	mov	r0,#(_gateway + 0x0001)
      000089 74 A8            [12]  395 	mov	a,#0xa8
      00008B F2               [24]  396 	movx	@r0,a
      00008C 78 03            [12]  397 	mov	r0,#(_gateway + 0x0002)
      00008E 74 10            [12]  398 	mov	a,#0x10
      000090 F2               [24]  399 	movx	@r0,a
      000091 78 04            [12]  400 	mov	r0,#(_gateway + 0x0003)
      000093 C4               [12]  401 	swap	a
      000094 F2               [24]  402 	movx	@r0,a
                                    403 ;	main.c:9: unsigned char subnet[4] = {255, 255, 255, 0};
      000095 78 05            [12]  404 	mov	r0,#_subnet
      000097 74 FF            [12]  405 	mov	a,#0xff
      000099 F2               [24]  406 	movx	@r0,a
      00009A 78 06            [12]  407 	mov	r0,#(_subnet + 0x0001)
      00009C F2               [24]  408 	movx	@r0,a
      00009D 78 07            [12]  409 	mov	r0,#(_subnet + 0x0002)
      00009F F2               [24]  410 	movx	@r0,a
      0000A0 78 08            [12]  411 	mov	r0,#(_subnet + 0x0003)
      0000A2 E4               [12]  412 	clr	a
      0000A3 F2               [24]  413 	movx	@r0,a
                                    414 ;	main.c:10: unsigned char ip[4] = {192, 168, 16, 69};
      0000A4 78 09            [12]  415 	mov	r0,#_ip
      0000A6 74 C0            [12]  416 	mov	a,#0xc0
      0000A8 F2               [24]  417 	movx	@r0,a
      0000A9 78 0A            [12]  418 	mov	r0,#(_ip + 0x0001)
      0000AB 74 A8            [12]  419 	mov	a,#0xa8
      0000AD F2               [24]  420 	movx	@r0,a
      0000AE 78 0B            [12]  421 	mov	r0,#(_ip + 0x0002)
      0000B0 74 10            [12]  422 	mov	a,#0x10
      0000B2 F2               [24]  423 	movx	@r0,a
      0000B3 78 0C            [12]  424 	mov	r0,#(_ip + 0x0003)
      0000B5 74 45            [12]  425 	mov	a,#0x45
      0000B7 F2               [24]  426 	movx	@r0,a
                                    427 ;	main.c:11: unsigned char mac[6] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
      0000B8 78 0D            [12]  428 	mov	r0,#_mac
      0000BA 74 DE            [12]  429 	mov	a,#0xde
      0000BC F2               [24]  430 	movx	@r0,a
      0000BD 78 0E            [12]  431 	mov	r0,#(_mac + 0x0001)
      0000BF 74 AD            [12]  432 	mov	a,#0xad
      0000C1 F2               [24]  433 	movx	@r0,a
      0000C2 78 0F            [12]  434 	mov	r0,#(_mac + 0x0002)
      0000C4 74 BE            [12]  435 	mov	a,#0xbe
      0000C6 F2               [24]  436 	movx	@r0,a
      0000C7 78 10            [12]  437 	mov	r0,#(_mac + 0x0003)
      0000C9 74 EF            [12]  438 	mov	a,#0xef
      0000CB F2               [24]  439 	movx	@r0,a
      0000CC 78 11            [12]  440 	mov	r0,#(_mac + 0x0004)
      0000CE C4               [12]  441 	swap	a
      0000CF F2               [24]  442 	movx	@r0,a
      0000D0 78 12            [12]  443 	mov	r0,#(_mac + 0x0005)
      0000D2 74 ED            [12]  444 	mov	a,#0xed
      0000D4 F2               [24]  445 	movx	@r0,a
                                    446 ;	main.c:12: unsigned char dest_ip[4] = {192, 168, 16, 151};
      0000D5 78 13            [12]  447 	mov	r0,#_dest_ip
      0000D7 74 C0            [12]  448 	mov	a,#0xc0
      0000D9 F2               [24]  449 	movx	@r0,a
      0000DA 78 14            [12]  450 	mov	r0,#(_dest_ip + 0x0001)
      0000DC 74 A8            [12]  451 	mov	a,#0xa8
      0000DE F2               [24]  452 	movx	@r0,a
      0000DF 78 15            [12]  453 	mov	r0,#(_dest_ip + 0x0002)
      0000E1 74 10            [12]  454 	mov	a,#0x10
      0000E3 F2               [24]  455 	movx	@r0,a
      0000E4 78 16            [12]  456 	mov	r0,#(_dest_ip + 0x0003)
      0000E6 74 97            [12]  457 	mov	a,#0x97
      0000E8 F2               [24]  458 	movx	@r0,a
                                    459 ;	main.c:16: unsigned char RTU_Address = '3';
      0000E9 78 17            [12]  460 	mov	r0,#_RTU_Address
      0000EB 74 33            [12]  461 	mov	a,#0x33
      0000ED F2               [24]  462 	movx	@r0,a
                                    463 	.area GSFINAL (CODE)
      0000F5 02 00 26         [24]  464 	ljmp	__sdcc_program_startup
                                    465 ;--------------------------------------------------------
                                    466 ; Home
                                    467 ;--------------------------------------------------------
                                    468 	.area HOME    (CODE)
                                    469 	.area HOME    (CODE)
      000026                        470 __sdcc_program_startup:
      000026 02 0A CF         [24]  471 	ljmp	_main
                                    472 ;	return from main will return to caller
                                    473 ;--------------------------------------------------------
                                    474 ; code
                                    475 ;--------------------------------------------------------
                                    476 	.area CSEG    (CODE)
                                    477 ;------------------------------------------------------------
                                    478 ;Allocation info for local variables in function 'strlen'
                                    479 ;------------------------------------------------------------
                                    480 ;	main.c:27: unsigned char strlen(const unsigned char* str) {
                                    481 ;	-----------------------------------------
                                    482 ;	 function strlen
                                    483 ;	-----------------------------------------
      0000F8                        484 _strlen:
                           000007   485 	ar7 = 0x07
                           000006   486 	ar6 = 0x06
                           000005   487 	ar5 = 0x05
                           000004   488 	ar4 = 0x04
                           000003   489 	ar3 = 0x03
                           000002   490 	ar2 = 0x02
                           000001   491 	ar1 = 0x01
                           000000   492 	ar0 = 0x00
      0000F8 AD 82            [24]  493 	mov	r5,dpl
      0000FA AE 83            [24]  494 	mov	r6,dph
      0000FC AF F0            [24]  495 	mov	r7,b
                                    496 ;	main.c:29: while (*(str++)) ++ret;
      0000FE 7C 00            [12]  497 	mov	r4,#0x00
      000100                        498 00101$:
      000100 8D 82            [24]  499 	mov	dpl,r5
      000102 8E 83            [24]  500 	mov	dph,r6
      000104 8F F0            [24]  501 	mov	b,r7
      000106 12 14 C7         [24]  502 	lcall	__gptrget
      000109 FB               [12]  503 	mov	r3,a
      00010A A3               [24]  504 	inc	dptr
      00010B AD 82            [24]  505 	mov	r5,dpl
      00010D AE 83            [24]  506 	mov	r6,dph
      00010F EB               [12]  507 	mov	a,r3
      000110 60 03            [24]  508 	jz	00103$
      000112 0C               [12]  509 	inc	r4
      000113 80 EB            [24]  510 	sjmp	00101$
      000115                        511 00103$:
                                    512 ;	main.c:30: return ret;
      000115 8C 82            [24]  513 	mov	dpl,r4
                                    514 ;	main.c:31: }
      000117 22               [24]  515 	ret
                                    516 ;------------------------------------------------------------
                                    517 ;Allocation info for local variables in function 'strcmp'
                                    518 ;------------------------------------------------------------
                                    519 ;sloc0                     Allocated with name '_strcmp_sloc0_1_0'
                                    520 ;sloc1                     Allocated with name '_strcmp_sloc1_1_0'
                                    521 ;sloc2                     Allocated with name '_strcmp_sloc2_1_0'
                                    522 ;------------------------------------------------------------
                                    523 ;	main.c:33: unsigned char strcmp(unsigned char* first, unsigned char* second) {
                                    524 ;	-----------------------------------------
                                    525 ;	 function strcmp
                                    526 ;	-----------------------------------------
      000118                        527 _strcmp:
      000118 AD 82            [24]  528 	mov	r5,dpl
      00011A AE 83            [24]  529 	mov	r6,dph
      00011C AF F0            [24]  530 	mov	r7,b
                                    531 ;	main.c:34: while (*first && *second) if (*(first++) != *(second++)) return 0;
      00011E 78 1B            [12]  532 	mov	r0,#_strcmp_PARM_2
      000120 E2               [24]  533 	movx	a,@r0
      000121 F5 0E            [12]  534 	mov	_strcmp_sloc2_1_0,a
      000123 08               [12]  535 	inc	r0
      000124 E2               [24]  536 	movx	a,@r0
      000125 F5 0F            [12]  537 	mov	(_strcmp_sloc2_1_0 + 1),a
      000127 08               [12]  538 	inc	r0
      000128 E2               [24]  539 	movx	a,@r0
      000129 F5 10            [12]  540 	mov	(_strcmp_sloc2_1_0 + 2),a
      00012B                        541 00104$:
      00012B 8D 82            [24]  542 	mov	dpl,r5
      00012D 8E 83            [24]  543 	mov	dph,r6
      00012F 8F F0            [24]  544 	mov	b,r7
      000131 12 14 C7         [24]  545 	lcall	__gptrget
      000134 F5 0C            [12]  546 	mov	_strcmp_sloc0_1_0,a
      000136 60 2B            [24]  547 	jz	00106$
      000138 85 0E 82         [24]  548 	mov	dpl,_strcmp_sloc2_1_0
      00013B 85 0F 83         [24]  549 	mov	dph,(_strcmp_sloc2_1_0 + 1)
      00013E 85 10 F0         [24]  550 	mov	b,(_strcmp_sloc2_1_0 + 2)
      000141 12 14 C7         [24]  551 	lcall	__gptrget
      000144 F5 0D            [12]  552 	mov	_strcmp_sloc1_1_0,a
      000146 60 1B            [24]  553 	jz	00106$
      000148 AC 0C            [24]  554 	mov	r4,_strcmp_sloc0_1_0
      00014A 0D               [12]  555 	inc	r5
      00014B BD 00 01         [24]  556 	cjne	r5,#0x00,00127$
      00014E 0E               [12]  557 	inc	r6
      00014F                        558 00127$:
      00014F AB 0D            [24]  559 	mov	r3,_strcmp_sloc1_1_0
      000151 05 0E            [12]  560 	inc	_strcmp_sloc2_1_0
      000153 E4               [12]  561 	clr	a
      000154 B5 0E 02         [24]  562 	cjne	a,_strcmp_sloc2_1_0,00128$
      000157 05 0F            [12]  563 	inc	(_strcmp_sloc2_1_0 + 1)
      000159                        564 00128$:
      000159 EC               [12]  565 	mov	a,r4
      00015A B5 03 02         [24]  566 	cjne	a,ar3,00129$
      00015D 80 CC            [24]  567 	sjmp	00104$
      00015F                        568 00129$:
      00015F 75 82 00         [24]  569 	mov	dpl,#0x00
      000162 22               [24]  570 	ret
      000163                        571 00106$:
                                    572 ;	main.c:35: return 1;
      000163 75 82 01         [24]  573 	mov	dpl,#0x01
                                    574 ;	main.c:36: }
      000166 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'hexCharToInt'
                                    578 ;------------------------------------------------------------
                                    579 ;	main.c:38: unsigned char hexCharToInt(char c) {
                                    580 ;	-----------------------------------------
                                    581 ;	 function hexCharToInt
                                    582 ;	-----------------------------------------
      000167                        583 _hexCharToInt:
                                    584 ;	main.c:39: return c <= '9' ? c - '0' : c <= 'F' ? c - 'A' + 10 : c - 'a' + 10;
      000167 E5 82            [12]  585 	mov	a,dpl
      000169 FF               [12]  586 	mov	r7,a
      00016A 24 C6            [12]  587 	add	a,#0xff - 0x39
      00016C 40 08            [24]  588 	jc	00103$
      00016E 8F 06            [24]  589 	mov	ar6,r7
      000170 EE               [12]  590 	mov	a,r6
      000171 24 D0            [12]  591 	add	a,#0xd0
      000173 FE               [12]  592 	mov	r6,a
      000174 80 13            [24]  593 	sjmp	00104$
      000176                        594 00103$:
      000176 EF               [12]  595 	mov	a,r7
      000177 24 B9            [12]  596 	add	a,#0xff - 0x46
      000179 40 08            [24]  597 	jc	00105$
      00017B 8F 05            [24]  598 	mov	ar5,r7
      00017D 74 C9            [12]  599 	mov	a,#0xc9
      00017F 2D               [12]  600 	add	a,r5
      000180 FD               [12]  601 	mov	r5,a
      000181 80 04            [24]  602 	sjmp	00106$
      000183                        603 00105$:
      000183 74 A9            [12]  604 	mov	a,#0xa9
      000185 2F               [12]  605 	add	a,r7
      000186 FD               [12]  606 	mov	r5,a
      000187                        607 00106$:
      000187 8D 06            [24]  608 	mov	ar6,r5
      000189                        609 00104$:
      000189 8E 82            [24]  610 	mov	dpl,r6
                                    611 ;	main.c:40: }
      00018B 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'parseMAC'
                                    615 ;------------------------------------------------------------
                                    616 ;	main.c:42: void parseMAC(const char* str) {
                                    617 ;	-----------------------------------------
                                    618 ;	 function parseMAC
                                    619 ;	-----------------------------------------
      00018C                        620 _parseMAC:
      00018C AF F0            [24]  621 	mov	r7,b
      00018E AE 83            [24]  622 	mov	r6,dph
      000190 E5 82            [12]  623 	mov	a,dpl
      000192 78 1E            [12]  624 	mov	r0,#_parseMAC_str_65536_54
      000194 F2               [24]  625 	movx	@r0,a
      000195 08               [12]  626 	inc	r0
      000196 EE               [12]  627 	mov	a,r6
      000197 F2               [24]  628 	movx	@r0,a
      000198 08               [12]  629 	inc	r0
      000199 EF               [12]  630 	mov	a,r7
      00019A F2               [24]  631 	movx	@r0,a
                                    632 ;	main.c:43: if(str[0] == 'M' && str[1] == 'A' && str[2] == 'C' && str[3] == '=') {
      00019B 78 1E            [12]  633 	mov	r0,#_parseMAC_str_65536_54
      00019D E2               [24]  634 	movx	a,@r0
      00019E F5 82            [12]  635 	mov	dpl,a
      0001A0 08               [12]  636 	inc	r0
      0001A1 E2               [24]  637 	movx	a,@r0
      0001A2 F5 83            [12]  638 	mov	dph,a
      0001A4 08               [12]  639 	inc	r0
      0001A5 E2               [24]  640 	movx	a,@r0
      0001A6 F5 F0            [12]  641 	mov	b,a
      0001A8 12 14 C7         [24]  642 	lcall	__gptrget
      0001AB FC               [12]  643 	mov	r4,a
      0001AC BC 4D 02         [24]  644 	cjne	r4,#0x4d,00137$
      0001AF 80 01            [24]  645 	sjmp	00138$
      0001B1                        646 00137$:
      0001B1 22               [24]  647 	ret
      0001B2                        648 00138$:
      0001B2 78 1E            [12]  649 	mov	r0,#_parseMAC_str_65536_54
      0001B4 E2               [24]  650 	movx	a,@r0
      0001B5 24 01            [12]  651 	add	a,#0x01
      0001B7 FA               [12]  652 	mov	r2,a
      0001B8 08               [12]  653 	inc	r0
      0001B9 E2               [24]  654 	movx	a,@r0
      0001BA 34 00            [12]  655 	addc	a,#0x00
      0001BC FB               [12]  656 	mov	r3,a
      0001BD 08               [12]  657 	inc	r0
      0001BE E2               [24]  658 	movx	a,@r0
      0001BF FC               [12]  659 	mov	r4,a
      0001C0 8A 82            [24]  660 	mov	dpl,r2
      0001C2 8B 83            [24]  661 	mov	dph,r3
      0001C4 8C F0            [24]  662 	mov	b,r4
      0001C6 12 14 C7         [24]  663 	lcall	__gptrget
      0001C9 FA               [12]  664 	mov	r2,a
      0001CA BA 41 02         [24]  665 	cjne	r2,#0x41,00139$
      0001CD 80 01            [24]  666 	sjmp	00140$
      0001CF                        667 00139$:
      0001CF 22               [24]  668 	ret
      0001D0                        669 00140$:
      0001D0 78 1E            [12]  670 	mov	r0,#_parseMAC_str_65536_54
      0001D2 E2               [24]  671 	movx	a,@r0
      0001D3 24 02            [12]  672 	add	a,#0x02
      0001D5 FA               [12]  673 	mov	r2,a
      0001D6 08               [12]  674 	inc	r0
      0001D7 E2               [24]  675 	movx	a,@r0
      0001D8 34 00            [12]  676 	addc	a,#0x00
      0001DA FB               [12]  677 	mov	r3,a
      0001DB 08               [12]  678 	inc	r0
      0001DC E2               [24]  679 	movx	a,@r0
      0001DD FC               [12]  680 	mov	r4,a
      0001DE 8A 82            [24]  681 	mov	dpl,r2
      0001E0 8B 83            [24]  682 	mov	dph,r3
      0001E2 8C F0            [24]  683 	mov	b,r4
      0001E4 12 14 C7         [24]  684 	lcall	__gptrget
      0001E7 FA               [12]  685 	mov	r2,a
      0001E8 BA 43 02         [24]  686 	cjne	r2,#0x43,00141$
      0001EB 80 01            [24]  687 	sjmp	00142$
      0001ED                        688 00141$:
      0001ED 22               [24]  689 	ret
      0001EE                        690 00142$:
      0001EE 78 1E            [12]  691 	mov	r0,#_parseMAC_str_65536_54
      0001F0 E2               [24]  692 	movx	a,@r0
      0001F1 24 03            [12]  693 	add	a,#0x03
      0001F3 FA               [12]  694 	mov	r2,a
      0001F4 08               [12]  695 	inc	r0
      0001F5 E2               [24]  696 	movx	a,@r0
      0001F6 34 00            [12]  697 	addc	a,#0x00
      0001F8 FB               [12]  698 	mov	r3,a
      0001F9 08               [12]  699 	inc	r0
      0001FA E2               [24]  700 	movx	a,@r0
      0001FB FC               [12]  701 	mov	r4,a
      0001FC 8A 82            [24]  702 	mov	dpl,r2
      0001FE 8B 83            [24]  703 	mov	dph,r3
      000200 8C F0            [24]  704 	mov	b,r4
      000202 12 14 C7         [24]  705 	lcall	__gptrget
      000205 FA               [12]  706 	mov	r2,a
      000206 BA 3D 02         [24]  707 	cjne	r2,#0x3d,00143$
      000209 80 01            [24]  708 	sjmp	00144$
      00020B                        709 00143$:
      00020B 22               [24]  710 	ret
      00020C                        711 00144$:
                                    712 ;	main.c:44: for(unsigned char i = 0; i < 6; i++) {
      00020C 7D 00            [12]  713 	mov	r5,#0x00
      00020E                        714 00108$:
      00020E BD 06 00         [24]  715 	cjne	r5,#0x06,00145$
      000211                        716 00145$:
      000211 40 01            [24]  717 	jc	00146$
      000213 22               [24]  718 	ret
      000214                        719 00146$:
                                    720 ;	main.c:45: mac[i] = (hexCharToInt(str[4 + i*2]) << 4) + hexCharToInt(str[5 + i*2]);
      000214 ED               [12]  721 	mov	a,r5
      000215 24 0D            [12]  722 	add	a,#_mac
      000217 F9               [12]  723 	mov	r1,a
      000218 8D 02            [24]  724 	mov	ar2,r5
      00021A 7B 00            [12]  725 	mov	r3,#0x00
      00021C EA               [12]  726 	mov	a,r2
      00021D 2A               [12]  727 	add	a,r2
      00021E FA               [12]  728 	mov	r2,a
      00021F EB               [12]  729 	mov	a,r3
      000220 33               [12]  730 	rlc	a
      000221 FB               [12]  731 	mov	r3,a
      000222 74 04            [12]  732 	mov	a,#0x04
      000224 2A               [12]  733 	add	a,r2
      000225 FC               [12]  734 	mov	r4,a
      000226 E4               [12]  735 	clr	a
      000227 3B               [12]  736 	addc	a,r3
      000228 FF               [12]  737 	mov	r7,a
      000229 78 1E            [12]  738 	mov	r0,#_parseMAC_str_65536_54
      00022B E2               [24]  739 	movx	a,@r0
      00022C 2C               [12]  740 	add	a,r4
      00022D FC               [12]  741 	mov	r4,a
      00022E 08               [12]  742 	inc	r0
      00022F E2               [24]  743 	movx	a,@r0
      000230 3F               [12]  744 	addc	a,r7
      000231 FF               [12]  745 	mov	r7,a
      000232 08               [12]  746 	inc	r0
      000233 E2               [24]  747 	movx	a,@r0
      000234 FE               [12]  748 	mov	r6,a
      000235 8C 82            [24]  749 	mov	dpl,r4
      000237 8F 83            [24]  750 	mov	dph,r7
      000239 8E F0            [24]  751 	mov	b,r6
      00023B 12 14 C7         [24]  752 	lcall	__gptrget
      00023E F5 82            [12]  753 	mov	dpl,a
      000240 C0 05            [24]  754 	push	ar5
      000242 C0 03            [24]  755 	push	ar3
      000244 C0 02            [24]  756 	push	ar2
      000246 C0 01            [24]  757 	push	ar1
      000248 12 01 67         [24]  758 	lcall	_hexCharToInt
      00024B AF 82            [24]  759 	mov	r7,dpl
      00024D D0 01            [24]  760 	pop	ar1
      00024F D0 02            [24]  761 	pop	ar2
      000251 D0 03            [24]  762 	pop	ar3
      000253 D0 05            [24]  763 	pop	ar5
      000255 EF               [12]  764 	mov	a,r7
      000256 C4               [12]  765 	swap	a
      000257 54 F0            [12]  766 	anl	a,#0xf0
      000259 FF               [12]  767 	mov	r7,a
      00025A 74 05            [12]  768 	mov	a,#0x05
      00025C 2A               [12]  769 	add	a,r2
      00025D FA               [12]  770 	mov	r2,a
      00025E E4               [12]  771 	clr	a
      00025F 3B               [12]  772 	addc	a,r3
      000260 FB               [12]  773 	mov	r3,a
      000261 78 1E            [12]  774 	mov	r0,#_parseMAC_str_65536_54
      000263 E2               [24]  775 	movx	a,@r0
      000264 2A               [12]  776 	add	a,r2
      000265 FA               [12]  777 	mov	r2,a
      000266 08               [12]  778 	inc	r0
      000267 E2               [24]  779 	movx	a,@r0
      000268 3B               [12]  780 	addc	a,r3
      000269 FB               [12]  781 	mov	r3,a
      00026A 08               [12]  782 	inc	r0
      00026B E2               [24]  783 	movx	a,@r0
      00026C FE               [12]  784 	mov	r6,a
      00026D 8A 82            [24]  785 	mov	dpl,r2
      00026F 8B 83            [24]  786 	mov	dph,r3
      000271 8E F0            [24]  787 	mov	b,r6
      000273 12 14 C7         [24]  788 	lcall	__gptrget
      000276 F5 82            [12]  789 	mov	dpl,a
      000278 C0 07            [24]  790 	push	ar7
      00027A C0 05            [24]  791 	push	ar5
      00027C C0 01            [24]  792 	push	ar1
      00027E 12 01 67         [24]  793 	lcall	_hexCharToInt
      000281 AE 82            [24]  794 	mov	r6,dpl
      000283 D0 01            [24]  795 	pop	ar1
      000285 D0 05            [24]  796 	pop	ar5
      000287 D0 07            [24]  797 	pop	ar7
      000289 EE               [12]  798 	mov	a,r6
      00028A 2F               [12]  799 	add	a,r7
      00028B F3               [24]  800 	movx	@r1,a
                                    801 ;	main.c:44: for(unsigned char i = 0; i < 6; i++) {
      00028C 0D               [12]  802 	inc	r5
                                    803 ;	main.c:48: }
      00028D 02 02 0E         [24]  804 	ljmp	00108$
                                    805 ;------------------------------------------------------------
                                    806 ;Allocation info for local variables in function 'extractAndAssign'
                                    807 ;------------------------------------------------------------
                                    808 ;sloc0                     Allocated with name '_extractAndAssign_sloc0_1_0'
                                    809 ;------------------------------------------------------------
                                    810 ;	main.c:50: void extractAndAssign(char *arr)
                                    811 ;	-----------------------------------------
                                    812 ;	 function extractAndAssign
                                    813 ;	-----------------------------------------
      000290                        814 _extractAndAssign:
      000290 AD 82            [24]  815 	mov	r5,dpl
      000292 AE 83            [24]  816 	mov	r6,dph
      000294 AF F0            [24]  817 	mov	r7,b
                                    818 ;	main.c:52: unsigned char *curr_address = NULL;
      000296 78 24            [12]  819 	mov	r0,#_extractAndAssign_curr_address_65536_60
      000298 E4               [12]  820 	clr	a
      000299 F2               [24]  821 	movx	@r0,a
      00029A 08               [12]  822 	inc	r0
      00029B F2               [24]  823 	movx	@r0,a
      00029C 08               [12]  824 	inc	r0
      00029D F2               [24]  825 	movx	@r0,a
                                    826 ;	main.c:53: unsigned char octet = 0;
      00029E 78 27            [12]  827 	mov	r0,#_extractAndAssign_octet_65536_60
      0002A0 F2               [24]  828 	movx	@r0,a
                                    829 ;	main.c:56: while (*arr)
      0002A1                        830 00128$:
      0002A1 8D 82            [24]  831 	mov	dpl,r5
      0002A3 8E 83            [24]  832 	mov	dph,r6
      0002A5 8F F0            [24]  833 	mov	b,r7
      0002A7 12 14 C7         [24]  834 	lcall	__gptrget
      0002AA FB               [12]  835 	mov	r3,a
      0002AB 70 01            [24]  836 	jnz	00234$
      0002AD 22               [24]  837 	ret
      0002AE                        838 00234$:
                                    839 ;	main.c:58: if (arr[0] == 'I' && arr[1] == 'P' && arr[2] == '=')
      0002AE BB 49 42         [24]  840 	cjne	r3,#0x49,00114$
      0002B1 74 01            [12]  841 	mov	a,#0x01
      0002B3 2D               [12]  842 	add	a,r5
      0002B4 FA               [12]  843 	mov	r2,a
      0002B5 E4               [12]  844 	clr	a
      0002B6 3E               [12]  845 	addc	a,r6
      0002B7 FB               [12]  846 	mov	r3,a
      0002B8 8F 04            [24]  847 	mov	ar4,r7
      0002BA 8A 82            [24]  848 	mov	dpl,r2
      0002BC 8B 83            [24]  849 	mov	dph,r3
      0002BE 8C F0            [24]  850 	mov	b,r4
      0002C0 12 14 C7         [24]  851 	lcall	__gptrget
      0002C3 FA               [12]  852 	mov	r2,a
      0002C4 BA 50 2C         [24]  853 	cjne	r2,#0x50,00114$
      0002C7 74 02            [12]  854 	mov	a,#0x02
      0002C9 2D               [12]  855 	add	a,r5
      0002CA FA               [12]  856 	mov	r2,a
      0002CB E4               [12]  857 	clr	a
      0002CC 3E               [12]  858 	addc	a,r6
      0002CD FB               [12]  859 	mov	r3,a
      0002CE 8F 04            [24]  860 	mov	ar4,r7
      0002D0 8A 82            [24]  861 	mov	dpl,r2
      0002D2 8B 83            [24]  862 	mov	dph,r3
      0002D4 8C F0            [24]  863 	mov	b,r4
      0002D6 12 14 C7         [24]  864 	lcall	__gptrget
      0002D9 FA               [12]  865 	mov	r2,a
      0002DA BA 3D 16         [24]  866 	cjne	r2,#0x3d,00114$
                                    867 ;	main.c:60: curr_address = ip;
      0002DD 78 24            [12]  868 	mov	r0,#_extractAndAssign_curr_address_65536_60
      0002DF 74 09            [12]  869 	mov	a,#_ip
      0002E1 F2               [24]  870 	movx	@r0,a
      0002E2 08               [12]  871 	inc	r0
      0002E3 E4               [12]  872 	clr	a
      0002E4 F2               [24]  873 	movx	@r0,a
      0002E5 08               [12]  874 	inc	r0
      0002E6 74 60            [12]  875 	mov	a,#0x60
      0002E8 F2               [24]  876 	movx	@r0,a
                                    877 ;	main.c:61: arr += 3;
      0002E9 74 03            [12]  878 	mov	a,#0x03
      0002EB 2D               [12]  879 	add	a,r5
      0002EC FD               [12]  880 	mov	r5,a
      0002ED E4               [12]  881 	clr	a
      0002EE 3E               [12]  882 	addc	a,r6
      0002EF FE               [12]  883 	mov	r6,a
      0002F0 02 03 D5         [24]  884 	ljmp	00115$
      0002F3                        885 00114$:
                                    886 ;	main.c:63: else if (arr[0] == 'S' && arr[1] == 'U' && arr[2] == 'B' && arr[3] == '=')
      0002F3 8D 82            [24]  887 	mov	dpl,r5
      0002F5 8E 83            [24]  888 	mov	dph,r6
      0002F7 8F F0            [24]  889 	mov	b,r7
      0002F9 12 14 C7         [24]  890 	lcall	__gptrget
      0002FC FB               [12]  891 	mov	r3,a
      0002FD BB 53 58         [24]  892 	cjne	r3,#0x53,00108$
      000300 74 01            [12]  893 	mov	a,#0x01
      000302 2D               [12]  894 	add	a,r5
      000303 FA               [12]  895 	mov	r2,a
      000304 E4               [12]  896 	clr	a
      000305 3E               [12]  897 	addc	a,r6
      000306 FB               [12]  898 	mov	r3,a
      000307 8F 04            [24]  899 	mov	ar4,r7
      000309 8A 82            [24]  900 	mov	dpl,r2
      00030B 8B 83            [24]  901 	mov	dph,r3
      00030D 8C F0            [24]  902 	mov	b,r4
      00030F 12 14 C7         [24]  903 	lcall	__gptrget
      000312 FA               [12]  904 	mov	r2,a
      000313 BA 55 42         [24]  905 	cjne	r2,#0x55,00108$
      000316 74 02            [12]  906 	mov	a,#0x02
      000318 2D               [12]  907 	add	a,r5
      000319 FA               [12]  908 	mov	r2,a
      00031A E4               [12]  909 	clr	a
      00031B 3E               [12]  910 	addc	a,r6
      00031C FB               [12]  911 	mov	r3,a
      00031D 8F 04            [24]  912 	mov	ar4,r7
      00031F 8A 82            [24]  913 	mov	dpl,r2
      000321 8B 83            [24]  914 	mov	dph,r3
      000323 8C F0            [24]  915 	mov	b,r4
      000325 12 14 C7         [24]  916 	lcall	__gptrget
      000328 FA               [12]  917 	mov	r2,a
      000329 BA 42 2C         [24]  918 	cjne	r2,#0x42,00108$
      00032C 74 03            [12]  919 	mov	a,#0x03
      00032E 2D               [12]  920 	add	a,r5
      00032F FA               [12]  921 	mov	r2,a
      000330 E4               [12]  922 	clr	a
      000331 3E               [12]  923 	addc	a,r6
      000332 FB               [12]  924 	mov	r3,a
      000333 8F 04            [24]  925 	mov	ar4,r7
      000335 8A 82            [24]  926 	mov	dpl,r2
      000337 8B 83            [24]  927 	mov	dph,r3
      000339 8C F0            [24]  928 	mov	b,r4
      00033B 12 14 C7         [24]  929 	lcall	__gptrget
      00033E FA               [12]  930 	mov	r2,a
      00033F BA 3D 16         [24]  931 	cjne	r2,#0x3d,00108$
                                    932 ;	main.c:65: curr_address = subnet;
      000342 78 24            [12]  933 	mov	r0,#_extractAndAssign_curr_address_65536_60
      000344 74 05            [12]  934 	mov	a,#_subnet
      000346 F2               [24]  935 	movx	@r0,a
      000347 08               [12]  936 	inc	r0
      000348 E4               [12]  937 	clr	a
      000349 F2               [24]  938 	movx	@r0,a
      00034A 08               [12]  939 	inc	r0
      00034B 74 60            [12]  940 	mov	a,#0x60
      00034D F2               [24]  941 	movx	@r0,a
                                    942 ;	main.c:66: arr += 4;
      00034E 74 04            [12]  943 	mov	a,#0x04
      000350 2D               [12]  944 	add	a,r5
      000351 FD               [12]  945 	mov	r5,a
      000352 E4               [12]  946 	clr	a
      000353 3E               [12]  947 	addc	a,r6
      000354 FE               [12]  948 	mov	r6,a
      000355 02 03 D5         [24]  949 	ljmp	00115$
      000358                        950 00108$:
                                    951 ;	main.c:68: else if (arr[0] == 'G' && arr[1] == 'A' && arr[2] == 'T' && arr[3] == 'E' && arr[4] == '=')
      000358 8D 82            [24]  952 	mov	dpl,r5
      00035A 8E 83            [24]  953 	mov	dph,r6
      00035C 8F F0            [24]  954 	mov	b,r7
      00035E 12 14 C7         [24]  955 	lcall	__gptrget
      000361 FB               [12]  956 	mov	r3,a
      000362 BB 47 02         [24]  957 	cjne	r3,#0x47,00249$
      000365 80 03            [24]  958 	sjmp	00250$
      000367                        959 00249$:
      000367 02 03 D5         [24]  960 	ljmp	00115$
      00036A                        961 00250$:
      00036A 74 01            [12]  962 	mov	a,#0x01
      00036C 2D               [12]  963 	add	a,r5
      00036D FA               [12]  964 	mov	r2,a
      00036E E4               [12]  965 	clr	a
      00036F 3E               [12]  966 	addc	a,r6
      000370 FB               [12]  967 	mov	r3,a
      000371 8F 04            [24]  968 	mov	ar4,r7
      000373 8A 82            [24]  969 	mov	dpl,r2
      000375 8B 83            [24]  970 	mov	dph,r3
      000377 8C F0            [24]  971 	mov	b,r4
      000379 12 14 C7         [24]  972 	lcall	__gptrget
      00037C FA               [12]  973 	mov	r2,a
      00037D BA 41 55         [24]  974 	cjne	r2,#0x41,00115$
      000380 74 02            [12]  975 	mov	a,#0x02
      000382 2D               [12]  976 	add	a,r5
      000383 FA               [12]  977 	mov	r2,a
      000384 E4               [12]  978 	clr	a
      000385 3E               [12]  979 	addc	a,r6
      000386 FB               [12]  980 	mov	r3,a
      000387 8F 04            [24]  981 	mov	ar4,r7
      000389 8A 82            [24]  982 	mov	dpl,r2
      00038B 8B 83            [24]  983 	mov	dph,r3
      00038D 8C F0            [24]  984 	mov	b,r4
      00038F 12 14 C7         [24]  985 	lcall	__gptrget
      000392 FA               [12]  986 	mov	r2,a
      000393 BA 54 3F         [24]  987 	cjne	r2,#0x54,00115$
      000396 74 03            [12]  988 	mov	a,#0x03
      000398 2D               [12]  989 	add	a,r5
      000399 FA               [12]  990 	mov	r2,a
      00039A E4               [12]  991 	clr	a
      00039B 3E               [12]  992 	addc	a,r6
      00039C FB               [12]  993 	mov	r3,a
      00039D 8F 04            [24]  994 	mov	ar4,r7
      00039F 8A 82            [24]  995 	mov	dpl,r2
      0003A1 8B 83            [24]  996 	mov	dph,r3
      0003A3 8C F0            [24]  997 	mov	b,r4
      0003A5 12 14 C7         [24]  998 	lcall	__gptrget
      0003A8 FA               [12]  999 	mov	r2,a
      0003A9 BA 45 29         [24] 1000 	cjne	r2,#0x45,00115$
      0003AC 74 04            [12] 1001 	mov	a,#0x04
      0003AE 2D               [12] 1002 	add	a,r5
      0003AF FA               [12] 1003 	mov	r2,a
      0003B0 E4               [12] 1004 	clr	a
      0003B1 3E               [12] 1005 	addc	a,r6
      0003B2 FB               [12] 1006 	mov	r3,a
      0003B3 8F 04            [24] 1007 	mov	ar4,r7
      0003B5 8A 82            [24] 1008 	mov	dpl,r2
      0003B7 8B 83            [24] 1009 	mov	dph,r3
      0003B9 8C F0            [24] 1010 	mov	b,r4
      0003BB 12 14 C7         [24] 1011 	lcall	__gptrget
      0003BE FA               [12] 1012 	mov	r2,a
      0003BF BA 3D 13         [24] 1013 	cjne	r2,#0x3d,00115$
                                   1014 ;	main.c:70: curr_address = gateway;
      0003C2 78 24            [12] 1015 	mov	r0,#_extractAndAssign_curr_address_65536_60
      0003C4 74 01            [12] 1016 	mov	a,#_gateway
      0003C6 F2               [24] 1017 	movx	@r0,a
      0003C7 08               [12] 1018 	inc	r0
      0003C8 E4               [12] 1019 	clr	a
      0003C9 F2               [24] 1020 	movx	@r0,a
      0003CA 08               [12] 1021 	inc	r0
      0003CB 74 60            [12] 1022 	mov	a,#0x60
      0003CD F2               [24] 1023 	movx	@r0,a
                                   1024 ;	main.c:71: arr += 5;
      0003CE 74 05            [12] 1025 	mov	a,#0x05
      0003D0 2D               [12] 1026 	add	a,r5
      0003D1 FD               [12] 1027 	mov	r5,a
      0003D2 E4               [12] 1028 	clr	a
      0003D3 3E               [12] 1029 	addc	a,r6
      0003D4 FE               [12] 1030 	mov	r6,a
      0003D5                       1031 00115$:
                                   1032 ;	main.c:73: value = 0;
      0003D5 78 28            [12] 1033 	mov	r0,#_extractAndAssign_value_65536_60
      0003D7 E4               [12] 1034 	clr	a
      0003D8 F2               [24] 1035 	movx	@r0,a
                                   1036 ;	main.c:74: while (*arr >= '0' && *arr <= '9')
      0003D9 8D 0C            [24] 1037 	mov	_extractAndAssign_sloc0_1_0,r5
      0003DB 8E 0D            [24] 1038 	mov	(_extractAndAssign_sloc0_1_0 + 1),r6
      0003DD 8F 0E            [24] 1039 	mov	(_extractAndAssign_sloc0_1_0 + 2),r7
      0003DF                       1040 00119$:
      0003DF 85 0C 82         [24] 1041 	mov	dpl,_extractAndAssign_sloc0_1_0
      0003E2 85 0D 83         [24] 1042 	mov	dph,(_extractAndAssign_sloc0_1_0 + 1)
      0003E5 85 0E F0         [24] 1043 	mov	b,(_extractAndAssign_sloc0_1_0 + 2)
      0003E8 12 14 C7         [24] 1044 	lcall	__gptrget
      0003EB FA               [12] 1045 	mov	r2,a
      0003EC BA 30 00         [24] 1046 	cjne	r2,#0x30,00259$
      0003EF                       1047 00259$:
      0003EF 40 1E            [24] 1048 	jc	00153$
      0003F1 EA               [12] 1049 	mov	a,r2
      0003F2 24 C6            [12] 1050 	add	a,#0xff - 0x39
      0003F4 40 19            [24] 1051 	jc	00153$
                                   1052 ;	main.c:76: value = value * 10 + (*arr - '0');
      0003F6 78 28            [12] 1053 	mov	r0,#_extractAndAssign_value_65536_60
      0003F8 E2               [24] 1054 	movx	a,@r0
      0003F9 75 F0 0A         [24] 1055 	mov	b,#0x0a
      0003FC A4               [48] 1056 	mul	ab
      0003FD FC               [12] 1057 	mov	r4,a
      0003FE EA               [12] 1058 	mov	a,r2
      0003FF 24 D0            [12] 1059 	add	a,#0xd0
      000401 78 28            [12] 1060 	mov	r0,#_extractAndAssign_value_65536_60
      000403 2C               [12] 1061 	add	a,r4
      000404 F2               [24] 1062 	movx	@r0,a
                                   1063 ;	main.c:77: arr++;
      000405 05 0C            [12] 1064 	inc	_extractAndAssign_sloc0_1_0
      000407 E4               [12] 1065 	clr	a
      000408 B5 0C D4         [24] 1066 	cjne	a,_extractAndAssign_sloc0_1_0,00119$
      00040B 05 0D            [12] 1067 	inc	(_extractAndAssign_sloc0_1_0 + 1)
      00040D 80 D0            [24] 1068 	sjmp	00119$
      00040F                       1069 00153$:
      00040F 78 21            [12] 1070 	mov	r0,#_extractAndAssign_arr_65536_59
      000411 E5 0C            [12] 1071 	mov	a,_extractAndAssign_sloc0_1_0
      000413 F2               [24] 1072 	movx	@r0,a
      000414 08               [12] 1073 	inc	r0
      000415 E5 0D            [12] 1074 	mov	a,(_extractAndAssign_sloc0_1_0 + 1)
      000417 F2               [24] 1075 	movx	@r0,a
      000418 08               [12] 1076 	inc	r0
      000419 E5 0E            [12] 1077 	mov	a,(_extractAndAssign_sloc0_1_0 + 2)
      00041B F2               [24] 1078 	movx	@r0,a
                                   1079 ;	main.c:80: if (curr_address && octet < 4)
      00041C 78 24            [12] 1080 	mov	r0,#_extractAndAssign_curr_address_65536_60
      00041E E2               [24] 1081 	movx	a,@r0
      00041F F5 F0            [12] 1082 	mov	b,a
      000421 08               [12] 1083 	inc	r0
      000422 E2               [24] 1084 	movx	a,@r0
      000423 45 F0            [12] 1085 	orl	a,b
      000425 60 4F            [24] 1086 	jz	00126$
      000427 78 27            [12] 1087 	mov	r0,#_extractAndAssign_octet_65536_60
      000429 E2               [24] 1088 	movx	a,@r0
      00042A B4 04 00         [24] 1089 	cjne	a,#0x04,00264$
      00042D                       1090 00264$:
      00042D 50 47            [24] 1091 	jnc	00126$
                                   1092 ;	main.c:82: curr_address[octet] = value;
      00042F 78 24            [12] 1093 	mov	r0,#_extractAndAssign_curr_address_65536_60
      000431 79 27            [12] 1094 	mov	r1,#_extractAndAssign_octet_65536_60
      000433 E3               [24] 1095 	movx	a,@r1
      000434 C5 F0            [12] 1096 	xch	a,b
      000436 E2               [24] 1097 	movx	a,@r0
      000437 25 F0            [12] 1098 	add	a,b
      000439 FA               [12] 1099 	mov	r2,a
      00043A 08               [12] 1100 	inc	r0
      00043B E2               [24] 1101 	movx	a,@r0
      00043C 34 00            [12] 1102 	addc	a,#0x00
      00043E FB               [12] 1103 	mov	r3,a
      00043F 08               [12] 1104 	inc	r0
      000440 E2               [24] 1105 	movx	a,@r0
      000441 FC               [12] 1106 	mov	r4,a
      000442 8A 82            [24] 1107 	mov	dpl,r2
      000444 8B 83            [24] 1108 	mov	dph,r3
      000446 8C F0            [24] 1109 	mov	b,r4
      000448 78 28            [12] 1110 	mov	r0,#_extractAndAssign_value_65536_60
      00044A E2               [24] 1111 	movx	a,@r0
      00044B 12 12 F6         [24] 1112 	lcall	__gptrput
                                   1113 ;	main.c:83: octet++;
      00044E 78 27            [12] 1114 	mov	r0,#_extractAndAssign_octet_65536_60
      000450 E2               [24] 1115 	movx	a,@r0
      000451 24 01            [12] 1116 	add	a,#0x01
      000453 F2               [24] 1117 	movx	@r0,a
                                   1118 ;	main.c:85: if (*arr == '.')
      000454 85 0C 82         [24] 1119 	mov	dpl,_extractAndAssign_sloc0_1_0
      000457 85 0D 83         [24] 1120 	mov	dph,(_extractAndAssign_sloc0_1_0 + 1)
      00045A 85 0E F0         [24] 1121 	mov	b,(_extractAndAssign_sloc0_1_0 + 2)
      00045D 12 14 C7         [24] 1122 	lcall	__gptrget
      000460 FC               [12] 1123 	mov	r4,a
      000461 BC 2E 0E         [24] 1124 	cjne	r4,#0x2e,00123$
                                   1125 ;	main.c:87: arr++;
      000464 74 01            [12] 1126 	mov	a,#0x01
      000466 25 0C            [12] 1127 	add	a,_extractAndAssign_sloc0_1_0
      000468 FD               [12] 1128 	mov	r5,a
      000469 E4               [12] 1129 	clr	a
      00046A 35 0D            [12] 1130 	addc	a,(_extractAndAssign_sloc0_1_0 + 1)
      00046C FE               [12] 1131 	mov	r6,a
      00046D AF 0E            [24] 1132 	mov	r7,(_extractAndAssign_sloc0_1_0 + 2)
                                   1133 ;	main.c:88: continue;
      00046F 02 02 A1         [24] 1134 	ljmp	00128$
      000472                       1135 00123$:
                                   1136 ;	main.c:92: octet = 0; // Reset octet count for the next IP address
      000472 78 27            [12] 1137 	mov	r0,#_extractAndAssign_octet_65536_60
      000474 E4               [12] 1138 	clr	a
      000475 F2               [24] 1139 	movx	@r0,a
      000476                       1140 00126$:
                                   1141 ;	main.c:95: arr++;
      000476 78 21            [12] 1142 	mov	r0,#_extractAndAssign_arr_65536_59
      000478 E2               [24] 1143 	movx	a,@r0
      000479 24 01            [12] 1144 	add	a,#0x01
      00047B FD               [12] 1145 	mov	r5,a
      00047C 08               [12] 1146 	inc	r0
      00047D E2               [24] 1147 	movx	a,@r0
      00047E 34 00            [12] 1148 	addc	a,#0x00
      000480 FE               [12] 1149 	mov	r6,a
      000481 08               [12] 1150 	inc	r0
      000482 E2               [24] 1151 	movx	a,@r0
      000483 FF               [12] 1152 	mov	r7,a
                                   1153 ;	main.c:97: }
      000484 02 02 A1         [24] 1154 	ljmp	00128$
                                   1155 ;------------------------------------------------------------
                                   1156 ;Allocation info for local variables in function 'displayIPAddress'
                                   1157 ;------------------------------------------------------------
                                   1158 ;	main.c:101: void displayIPAddress(unsigned char *address)
                                   1159 ;	-----------------------------------------
                                   1160 ;	 function displayIPAddress
                                   1161 ;	-----------------------------------------
      000487                       1162 _displayIPAddress:
      000487 AD 82            [24] 1163 	mov	r5,dpl
      000489 AE 83            [24] 1164 	mov	r6,dph
      00048B AF F0            [24] 1165 	mov	r7,b
                                   1166 ;	main.c:103: for (unsigned char i = 0; i < 4; i++)
      00048D 7C 00            [12] 1167 	mov	r4,#0x00
      00048F                       1168 00105$:
      00048F BC 04 00         [24] 1169 	cjne	r4,#0x04,00122$
      000492                       1170 00122$:
      000492 50 44            [24] 1171 	jnc	00107$
                                   1172 ;	main.c:105: _serial_putbyte_dec(address[i]);
      000494 EC               [12] 1173 	mov	a,r4
      000495 2D               [12] 1174 	add	a,r5
      000496 F9               [12] 1175 	mov	r1,a
      000497 E4               [12] 1176 	clr	a
      000498 3E               [12] 1177 	addc	a,r6
      000499 FA               [12] 1178 	mov	r2,a
      00049A 8F 03            [24] 1179 	mov	ar3,r7
      00049C 89 82            [24] 1180 	mov	dpl,r1
      00049E 8A 83            [24] 1181 	mov	dph,r2
      0004A0 8B F0            [24] 1182 	mov	b,r3
      0004A2 12 14 C7         [24] 1183 	lcall	__gptrget
      0004A5 F5 82            [12] 1184 	mov	dpl,a
      0004A7 C0 07            [24] 1185 	push	ar7
      0004A9 C0 06            [24] 1186 	push	ar6
      0004AB C0 05            [24] 1187 	push	ar5
      0004AD C0 04            [24] 1188 	push	ar4
      0004AF 12 0B CF         [24] 1189 	lcall	__serial_putbyte_dec
      0004B2 D0 04            [24] 1190 	pop	ar4
      0004B4 D0 05            [24] 1191 	pop	ar5
      0004B6 D0 06            [24] 1192 	pop	ar6
      0004B8 D0 07            [24] 1193 	pop	ar7
                                   1194 ;	main.c:106: if (i != 3)
      0004BA BC 03 02         [24] 1195 	cjne	r4,#0x03,00124$
      0004BD 80 16            [24] 1196 	sjmp	00106$
      0004BF                       1197 00124$:
                                   1198 ;	main.c:107: _serial_putchar('.');
      0004BF 75 82 2E         [24] 1199 	mov	dpl,#0x2e
      0004C2 C0 07            [24] 1200 	push	ar7
      0004C4 C0 06            [24] 1201 	push	ar6
      0004C6 C0 05            [24] 1202 	push	ar5
      0004C8 C0 04            [24] 1203 	push	ar4
      0004CA 12 0C 84         [24] 1204 	lcall	__serial_putchar
      0004CD D0 04            [24] 1205 	pop	ar4
      0004CF D0 05            [24] 1206 	pop	ar5
      0004D1 D0 06            [24] 1207 	pop	ar6
      0004D3 D0 07            [24] 1208 	pop	ar7
      0004D5                       1209 00106$:
                                   1210 ;	main.c:103: for (unsigned char i = 0; i < 4; i++)
      0004D5 0C               [12] 1211 	inc	r4
      0004D6 80 B7            [24] 1212 	sjmp	00105$
      0004D8                       1213 00107$:
                                   1214 ;	main.c:109: }
      0004D8 22               [24] 1215 	ret
                                   1216 ;------------------------------------------------------------
                                   1217 ;Allocation info for local variables in function 'displayMACAddress'
                                   1218 ;------------------------------------------------------------
                                   1219 ;	main.c:112: void displayMACAddress(unsigned char *address)
                                   1220 ;	-----------------------------------------
                                   1221 ;	 function displayMACAddress
                                   1222 ;	-----------------------------------------
      0004D9                       1223 _displayMACAddress:
      0004D9 AD 82            [24] 1224 	mov	r5,dpl
      0004DB AE 83            [24] 1225 	mov	r6,dph
      0004DD AF F0            [24] 1226 	mov	r7,b
                                   1227 ;	main.c:114: for (unsigned char i = 0; i < 6; i++)
      0004DF 7C 00            [12] 1228 	mov	r4,#0x00
      0004E1                       1229 00105$:
      0004E1 BC 06 00         [24] 1230 	cjne	r4,#0x06,00122$
      0004E4                       1231 00122$:
      0004E4 50 47            [24] 1232 	jnc	00107$
                                   1233 ;	main.c:116: _serial_putbyte_hex(address[i]);
      0004E6 EC               [12] 1234 	mov	a,r4
      0004E7 2D               [12] 1235 	add	a,r5
      0004E8 F9               [12] 1236 	mov	r1,a
      0004E9 E4               [12] 1237 	clr	a
      0004EA 3E               [12] 1238 	addc	a,r6
      0004EB FA               [12] 1239 	mov	r2,a
      0004EC 8F 03            [24] 1240 	mov	ar3,r7
      0004EE 89 82            [24] 1241 	mov	dpl,r1
      0004F0 8A 83            [24] 1242 	mov	dph,r2
      0004F2 8B F0            [24] 1243 	mov	b,r3
      0004F4 12 14 C7         [24] 1244 	lcall	__gptrget
      0004F7 F5 82            [12] 1245 	mov	dpl,a
      0004F9 C0 07            [24] 1246 	push	ar7
      0004FB C0 06            [24] 1247 	push	ar6
      0004FD C0 05            [24] 1248 	push	ar5
      0004FF C0 04            [24] 1249 	push	ar4
      000501 12 0B 84         [24] 1250 	lcall	__serial_putbyte_hex
      000504 D0 04            [24] 1251 	pop	ar4
      000506 D0 05            [24] 1252 	pop	ar5
      000508 D0 06            [24] 1253 	pop	ar6
      00050A D0 07            [24] 1254 	pop	ar7
                                   1255 ;	main.c:117: if (i != 5)
      00050C BC 05 02         [24] 1256 	cjne	r4,#0x05,00124$
      00050F 80 19            [24] 1257 	sjmp	00106$
      000511                       1258 00124$:
                                   1259 ;	main.c:118: _serial_putstr(" ");
      000511 90 14 E7         [24] 1260 	mov	dptr,#___str_0
      000514 75 F0 80         [24] 1261 	mov	b,#0x80
      000517 C0 07            [24] 1262 	push	ar7
      000519 C0 06            [24] 1263 	push	ar6
      00051B C0 05            [24] 1264 	push	ar5
      00051D C0 04            [24] 1265 	push	ar4
      00051F 12 0B 59         [24] 1266 	lcall	__serial_putstr
      000522 D0 04            [24] 1267 	pop	ar4
      000524 D0 05            [24] 1268 	pop	ar5
      000526 D0 06            [24] 1269 	pop	ar6
      000528 D0 07            [24] 1270 	pop	ar7
      00052A                       1271 00106$:
                                   1272 ;	main.c:114: for (unsigned char i = 0; i < 6; i++)
      00052A 0C               [12] 1273 	inc	r4
      00052B 80 B4            [24] 1274 	sjmp	00105$
      00052D                       1275 00107$:
                                   1276 ;	main.c:120: }
      00052D 22               [24] 1277 	ret
                                   1278 ;------------------------------------------------------------
                                   1279 ;Allocation info for local variables in function 'menudisplay'
                                   1280 ;------------------------------------------------------------
                                   1281 ;	main.c:124: void menudisplay()
                                   1282 ;	-----------------------------------------
                                   1283 ;	 function menudisplay
                                   1284 ;	-----------------------------------------
      00052E                       1285 _menudisplay:
                                   1286 ;	main.c:128: _serial_putstr("\n\rCURRENT CONFIG:                    CHANGE CMD:\n\r");
      00052E 90 14 E9         [24] 1287 	mov	dptr,#___str_1
      000531 75 F0 80         [24] 1288 	mov	b,#0x80
      000534 12 0B 59         [24] 1289 	lcall	__serial_putstr
                                   1290 ;	main.c:129: _serial_putstr("RTU Addr (0-9): ");
      000537 90 15 1C         [24] 1291 	mov	dptr,#___str_2
      00053A 75 F0 80         [24] 1292 	mov	b,#0x80
      00053D 12 0B 59         [24] 1293 	lcall	__serial_putstr
                                   1294 ;	main.c:130: _serial_putchar(RTU_Address);
      000540 78 17            [12] 1295 	mov	r0,#_RTU_Address
      000542 E2               [24] 1296 	movx	a,@r0
      000543 F5 82            [12] 1297 	mov	dpl,a
      000545 12 0C 84         [24] 1298 	lcall	__serial_putchar
                                   1299 ;	main.c:131: _serial_putstr("                  RTU=#\n\r");
      000548 90 15 2D         [24] 1300 	mov	dptr,#___str_3
      00054B 75 F0 80         [24] 1301 	mov	b,#0x80
      00054E 12 0B 59         [24] 1302 	lcall	__serial_putstr
                                   1303 ;	main.c:134: _serial_putstr("IP Addr: ");
      000551 90 15 47         [24] 1304 	mov	dptr,#___str_4
      000554 75 F0 80         [24] 1305 	mov	b,#0x80
      000557 12 0B 59         [24] 1306 	lcall	__serial_putstr
                                   1307 ;	main.c:135: displayIPAddress(ip);
      00055A 90 00 09         [24] 1308 	mov	dptr,#_ip
      00055D 75 F0 60         [24] 1309 	mov	b,#0x60
      000560 12 04 87         [24] 1310 	lcall	_displayIPAddress
                                   1311 ;	main.c:136: _serial_putstr("             IP=###.###.###.###\n\r");
      000563 90 15 51         [24] 1312 	mov	dptr,#___str_5
      000566 75 F0 80         [24] 1313 	mov	b,#0x80
      000569 12 0B 59         [24] 1314 	lcall	__serial_putstr
                                   1315 ;	main.c:139: _serial_putstr("Subnet Mask: ");
      00056C 90 15 73         [24] 1316 	mov	dptr,#___str_6
      00056F 75 F0 80         [24] 1317 	mov	b,#0x80
      000572 12 0B 59         [24] 1318 	lcall	__serial_putstr
                                   1319 ;	main.c:140: displayIPAddress(subnet);
      000575 90 00 05         [24] 1320 	mov	dptr,#_subnet
      000578 75 F0 60         [24] 1321 	mov	b,#0x60
      00057B 12 04 87         [24] 1322 	lcall	_displayIPAddress
                                   1323 ;	main.c:141: _serial_putstr("         SUB=###.###.###.###\n\r");
      00057E 90 15 81         [24] 1324 	mov	dptr,#___str_7
      000581 75 F0 80         [24] 1325 	mov	b,#0x80
      000584 12 0B 59         [24] 1326 	lcall	__serial_putstr
                                   1327 ;	main.c:144: _serial_putstr("Gateway: ");
      000587 90 15 A0         [24] 1328 	mov	dptr,#___str_8
      00058A 75 F0 80         [24] 1329 	mov	b,#0x80
      00058D 12 0B 59         [24] 1330 	lcall	__serial_putstr
                                   1331 ;	main.c:145: displayIPAddress(gateway);
      000590 90 00 01         [24] 1332 	mov	dptr,#_gateway
      000593 75 F0 60         [24] 1333 	mov	b,#0x60
      000596 12 04 87         [24] 1334 	lcall	_displayIPAddress
                                   1335 ;	main.c:146: _serial_putstr("              GATE=###.###.###.###\n\r");
      000599 90 15 AA         [24] 1336 	mov	dptr,#___str_9
      00059C 75 F0 80         [24] 1337 	mov	b,#0x80
      00059F 12 0B 59         [24] 1338 	lcall	__serial_putstr
                                   1339 ;	main.c:149: _serial_putstr("MAC Addr: ");
      0005A2 90 15 CF         [24] 1340 	mov	dptr,#___str_10
      0005A5 75 F0 80         [24] 1341 	mov	b,#0x80
      0005A8 12 0B 59         [24] 1342 	lcall	__serial_putstr
                                   1343 ;	main.c:150: displayMACAddress(mac);
      0005AB 90 00 0D         [24] 1344 	mov	dptr,#_mac
      0005AE 75 F0 60         [24] 1345 	mov	b,#0x60
      0005B1 12 04 D9         [24] 1346 	lcall	_displayMACAddress
                                   1347 ;	main.c:151: _serial_putstr("        MAC=FF FF FF FF FF FF\n\r");
      0005B4 90 15 DA         [24] 1348 	mov	dptr,#___str_11
      0005B7 75 F0 80         [24] 1349 	mov	b,#0x80
                                   1350 ;	main.c:152: }
      0005BA 02 0B 59         [24] 1351 	ljmp	__serial_putstr
                                   1352 ;------------------------------------------------------------
                                   1353 ;Allocation info for local variables in function 'setuptcp'
                                   1354 ;------------------------------------------------------------
                                   1355 ;	main.c:155: void setuptcp(){
                                   1356 ;	-----------------------------------------
                                   1357 ;	 function setuptcp
                                   1358 ;	-----------------------------------------
      0005BD                       1359 _setuptcp:
                                   1360 ;	main.c:156: _w5500_set_tcp(SOCKET1);
      0005BD 75 82 01         [24] 1361 	mov	dpl,#0x01
      0005C0 12 0D D8         [24] 1362 	lcall	__w5500_set_tcp
                                   1363 ;	main.c:157: _w5500_set_sourceport(SOCKET1, 5002);
      0005C3 78 D0            [12] 1364 	mov	r0,#__w5500_set_sourceport_PARM_2
      0005C5 74 8A            [12] 1365 	mov	a,#0x8a
      0005C7 F2               [24] 1366 	movx	@r0,a
      0005C8 08               [12] 1367 	inc	r0
      0005C9 74 13            [12] 1368 	mov	a,#0x13
      0005CB F2               [24] 1369 	movx	@r0,a
      0005CC 75 82 01         [24] 1370 	mov	dpl,#0x01
      0005CF 12 0F 70         [24] 1371 	lcall	__w5500_set_sourceport
                                   1372 ;	main.c:158: _w5500_open(SOCKET1);
      0005D2 75 82 01         [24] 1373 	mov	dpl,#0x01
      0005D5 12 0C E2         [24] 1374 	lcall	__w5500_open
                                   1375 ;	main.c:159: _w5500_listen(SOCKET1);
      0005D8 75 82 01         [24] 1376 	mov	dpl,#0x01
                                   1377 ;	main.c:160: }
      0005DB 02 0F 47         [24] 1378 	ljmp	__w5500_listen
                                   1379 ;------------------------------------------------------------
                                   1380 ;Allocation info for local variables in function 'setup'
                                   1381 ;------------------------------------------------------------
                                   1382 ;	main.c:163: void setup() {
                                   1383 ;	-----------------------------------------
                                   1384 ;	 function setup
                                   1385 ;	-----------------------------------------
      0005DE                       1386 _setup:
                                   1387 ;	main.c:164: _serial_begin();
      0005DE 12 0B 40         [24] 1388 	lcall	__serial_begin
                                   1389 ;	main.c:166: _w5500_set_gateway(gateway);
      0005E1 78 E3            [12] 1390 	mov	r0,#__w5500_write_PARM_3
      0005E3 74 01            [12] 1391 	mov	a,#_gateway
      0005E5 F2               [24] 1392 	movx	@r0,a
      0005E6 08               [12] 1393 	inc	r0
      0005E7 E4               [12] 1394 	clr	a
      0005E8 F2               [24] 1395 	movx	@r0,a
      0005E9 08               [12] 1396 	inc	r0
      0005EA 74 60            [12] 1397 	mov	a,#0x60
      0005EC F2               [24] 1398 	movx	@r0,a
      0005ED 78 E2            [12] 1399 	mov	r0,#__w5500_write_PARM_2
      0005EF E4               [12] 1400 	clr	a
      0005F0 F2               [24] 1401 	movx	@r0,a
      0005F1 78 E6            [12] 1402 	mov	r0,#__w5500_write_PARM_4
      0005F3 74 04            [12] 1403 	mov	a,#0x04
      0005F5 F2               [24] 1404 	movx	@r0,a
      0005F6 08               [12] 1405 	inc	r0
      0005F7 E4               [12] 1406 	clr	a
      0005F8 F2               [24] 1407 	movx	@r0,a
      0005F9 90 00 01         [24] 1408 	mov	dptr,#0x0001
      0005FC 12 12 7E         [24] 1409 	lcall	__w5500_write
                                   1410 ;	main.c:167: _w5500_set_subnet(subnet);
      0005FF 78 E3            [12] 1411 	mov	r0,#__w5500_write_PARM_3
      000601 74 05            [12] 1412 	mov	a,#_subnet
      000603 F2               [24] 1413 	movx	@r0,a
      000604 08               [12] 1414 	inc	r0
      000605 E4               [12] 1415 	clr	a
      000606 F2               [24] 1416 	movx	@r0,a
      000607 08               [12] 1417 	inc	r0
      000608 74 60            [12] 1418 	mov	a,#0x60
      00060A F2               [24] 1419 	movx	@r0,a
      00060B 78 E2            [12] 1420 	mov	r0,#__w5500_write_PARM_2
      00060D E4               [12] 1421 	clr	a
      00060E F2               [24] 1422 	movx	@r0,a
      00060F 78 E6            [12] 1423 	mov	r0,#__w5500_write_PARM_4
      000611 74 04            [12] 1424 	mov	a,#0x04
      000613 F2               [24] 1425 	movx	@r0,a
      000614 08               [12] 1426 	inc	r0
      000615 E4               [12] 1427 	clr	a
      000616 F2               [24] 1428 	movx	@r0,a
      000617 90 00 05         [24] 1429 	mov	dptr,#0x0005
      00061A 12 12 7E         [24] 1430 	lcall	__w5500_write
                                   1431 ;	main.c:168: _w5500_set_ip(ip);
      00061D 78 E3            [12] 1432 	mov	r0,#__w5500_write_PARM_3
      00061F 74 09            [12] 1433 	mov	a,#_ip
      000621 F2               [24] 1434 	movx	@r0,a
      000622 08               [12] 1435 	inc	r0
      000623 E4               [12] 1436 	clr	a
      000624 F2               [24] 1437 	movx	@r0,a
      000625 08               [12] 1438 	inc	r0
      000626 74 60            [12] 1439 	mov	a,#0x60
      000628 F2               [24] 1440 	movx	@r0,a
      000629 78 E2            [12] 1441 	mov	r0,#__w5500_write_PARM_2
      00062B E4               [12] 1442 	clr	a
      00062C F2               [24] 1443 	movx	@r0,a
      00062D 78 E6            [12] 1444 	mov	r0,#__w5500_write_PARM_4
      00062F 74 04            [12] 1445 	mov	a,#0x04
      000631 F2               [24] 1446 	movx	@r0,a
      000632 08               [12] 1447 	inc	r0
      000633 E4               [12] 1448 	clr	a
      000634 F2               [24] 1449 	movx	@r0,a
      000635 90 00 0F         [24] 1450 	mov	dptr,#0x000f
      000638 12 12 7E         [24] 1451 	lcall	__w5500_write
                                   1452 ;	main.c:169: _w5500_set_mac(mac);
      00063B 78 E3            [12] 1453 	mov	r0,#__w5500_write_PARM_3
      00063D 74 0D            [12] 1454 	mov	a,#_mac
      00063F F2               [24] 1455 	movx	@r0,a
      000640 08               [12] 1456 	inc	r0
      000641 E4               [12] 1457 	clr	a
      000642 F2               [24] 1458 	movx	@r0,a
      000643 08               [12] 1459 	inc	r0
      000644 74 60            [12] 1460 	mov	a,#0x60
      000646 F2               [24] 1461 	movx	@r0,a
      000647 78 E2            [12] 1462 	mov	r0,#__w5500_write_PARM_2
      000649 E4               [12] 1463 	clr	a
      00064A F2               [24] 1464 	movx	@r0,a
      00064B 78 E6            [12] 1465 	mov	r0,#__w5500_write_PARM_4
      00064D 74 06            [12] 1466 	mov	a,#0x06
      00064F F2               [24] 1467 	movx	@r0,a
      000650 08               [12] 1468 	inc	r0
      000651 E4               [12] 1469 	clr	a
      000652 F2               [24] 1470 	movx	@r0,a
      000653 90 00 09         [24] 1471 	mov	dptr,#0x0009
      000656 12 12 7E         [24] 1472 	lcall	__w5500_write
                                   1473 ;	main.c:173: setuptcp();
      000659 12 05 BD         [24] 1474 	lcall	_setuptcp
                                   1475 ;	main.c:174: _w5500_set_destinationip(SOCKET0, dest_ip);
      00065C 78 D4            [12] 1476 	mov	r0,#__w5500_set_destinationip_PARM_2
      00065E 74 13            [12] 1477 	mov	a,#_dest_ip
      000660 F2               [24] 1478 	movx	@r0,a
      000661 08               [12] 1479 	inc	r0
      000662 E4               [12] 1480 	clr	a
      000663 F2               [24] 1481 	movx	@r0,a
      000664 08               [12] 1482 	inc	r0
      000665 74 60            [12] 1483 	mov	a,#0x60
      000667 F2               [24] 1484 	movx	@r0,a
      000668 75 82 00         [24] 1485 	mov	dpl,#0x00
      00066B 12 0F D2         [24] 1486 	lcall	__w5500_set_destinationip
                                   1487 ;	main.c:175: _w5500_set_sourceport(SOCKET0, 5001);
      00066E 78 D0            [12] 1488 	mov	r0,#__w5500_set_sourceport_PARM_2
      000670 74 89            [12] 1489 	mov	a,#0x89
      000672 F2               [24] 1490 	movx	@r0,a
      000673 08               [12] 1491 	inc	r0
      000674 23               [12] 1492 	rl	a
      000675 F2               [24] 1493 	movx	@r0,a
      000676 75 82 00         [24] 1494 	mov	dpl,#0x00
      000679 12 0F 70         [24] 1495 	lcall	__w5500_set_sourceport
                                   1496 ;	main.c:176: _w5500_set_remoteport(SOCKET0, 37052);
      00067C 78 D2            [12] 1497 	mov	r0,#__w5500_set_remoteport_PARM_2
      00067E 74 BC            [12] 1498 	mov	a,#0xbc
      000680 F2               [24] 1499 	movx	@r0,a
      000681 08               [12] 1500 	inc	r0
      000682 74 90            [12] 1501 	mov	a,#0x90
      000684 F2               [24] 1502 	movx	@r0,a
      000685 75 82 00         [24] 1503 	mov	dpl,#0x00
      000688 12 0F A1         [24] 1504 	lcall	__w5500_set_remoteport
                                   1505 ;	main.c:177: _w5500_set_udp(SOCKET0);
      00068B 75 82 00         [24] 1506 	mov	dpl,#0x00
      00068E 12 0D 7F         [24] 1507 	lcall	__w5500_set_udp
                                   1508 ;	main.c:178: _w5500_open(SOCKET0);
      000691 75 82 00         [24] 1509 	mov	dpl,#0x00
      000694 12 0C E2         [24] 1510 	lcall	__w5500_open
                                   1511 ;	main.c:180: P1_0 = 1;
                                   1512 ;	assignBit
      000697 D2 90            [12] 1513 	setb	_P1_0
                                   1514 ;	main.c:181: P1_1 = 1;
                                   1515 ;	assignBit
      000699 D2 91            [12] 1516 	setb	_P1_1
                                   1517 ;	main.c:182: }
      00069B 22               [24] 1518 	ret
                                   1519 ;------------------------------------------------------------
                                   1520 ;Allocation info for local variables in function 'loop'
                                   1521 ;------------------------------------------------------------
                                   1522 ;	main.c:184: void loop() {
                                   1523 ;	-----------------------------------------
                                   1524 ;	 function loop
                                   1525 ;	-----------------------------------------
      00069C                       1526 _loop:
                                   1527 ;	main.c:187: unsigned char recieved_udp = 0;
      00069C 78 29            [12] 1528 	mov	r0,#_loop_recieved_udp_65536_80
      00069E E4               [12] 1529 	clr	a
      00069F F2               [24] 1530 	movx	@r0,a
                                   1531 ;	main.c:188: unsigned char recieved_tcp = 0;
      0006A0 7E 00            [12] 1532 	mov	r6,#0x00
                                   1533 ;	main.c:190: unsigned char input_index = 0;
      0006A2 78 3E            [12] 1534 	mov	r0,#_loop_input_index_65536_80
      0006A4 F2               [24] 1535 	movx	@r0,a
                                   1536 ;	main.c:194: unsigned char serial_index = 0;
      0006A5 78 67            [12] 1537 	mov	r0,#_loop_serial_index_65536_80
      0006A7 F2               [24] 1538 	movx	@r0,a
                                   1539 ;	main.c:198: while(1){
      0006A8                       1540 00166$:
                                   1541 ;	main.c:200: serialInput = _serial_emptybuffer();
      0006A8 C0 06            [24] 1542 	push	ar6
      0006AA 12 0C 55         [24] 1543 	lcall	__serial_emptybuffer
      0006AD AA 82            [24] 1544 	mov	r2,dpl
      0006AF AB 83            [24] 1545 	mov	r3,dph
      0006B1 AC F0            [24] 1546 	mov	r4,b
      0006B3 78 18            [12] 1547 	mov	r0,#_serialInput
      0006B5 EA               [12] 1548 	mov	a,r2
      0006B6 F2               [24] 1549 	movx	@r0,a
      0006B7 08               [12] 1550 	inc	r0
      0006B8 EB               [12] 1551 	mov	a,r3
      0006B9 F2               [24] 1552 	movx	@r0,a
      0006BA 08               [12] 1553 	inc	r0
      0006BB EC               [12] 1554 	mov	a,r4
      0006BC F2               [24] 1555 	movx	@r0,a
                                   1556 ;	main.c:201: unsigned char inputLength = strlen(serialInput);
      0006BD 8A 82            [24] 1557 	mov	dpl,r2
      0006BF 8B 83            [24] 1558 	mov	dph,r3
      0006C1 8C F0            [24] 1559 	mov	b,r4
      0006C3 12 00 F8         [24] 1560 	lcall	_strlen
      0006C6 AC 82            [24] 1561 	mov	r4,dpl
      0006C8 D0 06            [24] 1562 	pop	ar6
      0006CA 78 68            [12] 1563 	mov	r0,#_loop_inputLength_131073_82
      0006CC EC               [12] 1564 	mov	a,r4
      0006CD F2               [24] 1565 	movx	@r0,a
                                   1566 ;	main.c:202: if (inputLength) {
      0006CE EC               [12] 1567 	mov	a,r4
      0006CF 70 03            [24] 1568 	jnz	00340$
      0006D1 02 08 AD         [24] 1569 	ljmp	00203$
      0006D4                       1570 00340$:
                                   1571 ;	main.c:203: if(strcmp(serialInput, "?")){
      0006D4 78 1B            [12] 1572 	mov	r0,#_strcmp_PARM_2
      0006D6 74 FA            [12] 1573 	mov	a,#___str_12
      0006D8 F2               [24] 1574 	movx	@r0,a
      0006D9 08               [12] 1575 	inc	r0
      0006DA 74 15            [12] 1576 	mov	a,#(___str_12 >> 8)
      0006DC F2               [24] 1577 	movx	@r0,a
      0006DD 08               [12] 1578 	inc	r0
      0006DE 74 80            [12] 1579 	mov	a,#0x80
      0006E0 F2               [24] 1580 	movx	@r0,a
      0006E1 78 18            [12] 1581 	mov	r0,#_serialInput
      0006E3 E2               [24] 1582 	movx	a,@r0
      0006E4 F5 82            [12] 1583 	mov	dpl,a
      0006E6 08               [12] 1584 	inc	r0
      0006E7 E2               [24] 1585 	movx	a,@r0
      0006E8 F5 83            [12] 1586 	mov	dph,a
      0006EA 08               [12] 1587 	inc	r0
      0006EB E2               [24] 1588 	movx	a,@r0
      0006EC F5 F0            [12] 1589 	mov	b,a
      0006EE C0 06            [24] 1590 	push	ar6
      0006F0 12 01 18         [24] 1591 	lcall	_strcmp
      0006F3 E5 82            [12] 1592 	mov	a,dpl
      0006F5 D0 06            [24] 1593 	pop	ar6
      0006F7 60 0A            [24] 1594 	jz	00127$
                                   1595 ;	main.c:204: menudisplay();
      0006F9 C0 06            [24] 1596 	push	ar6
      0006FB 12 05 2E         [24] 1597 	lcall	_menudisplay
      0006FE D0 06            [24] 1598 	pop	ar6
      000700 02 08 AD         [24] 1599 	ljmp	00203$
      000703                       1600 00127$:
                                   1601 ;	main.c:208: if(strcmp(serialInput, "\r")){
      000703 78 1B            [12] 1602 	mov	r0,#_strcmp_PARM_2
      000705 74 FC            [12] 1603 	mov	a,#___str_13
      000707 F2               [24] 1604 	movx	@r0,a
      000708 08               [12] 1605 	inc	r0
      000709 74 15            [12] 1606 	mov	a,#(___str_13 >> 8)
      00070B F2               [24] 1607 	movx	@r0,a
      00070C 08               [12] 1608 	inc	r0
      00070D 74 80            [12] 1609 	mov	a,#0x80
      00070F F2               [24] 1610 	movx	@r0,a
      000710 78 18            [12] 1611 	mov	r0,#_serialInput
      000712 E2               [24] 1612 	movx	a,@r0
      000713 F5 82            [12] 1613 	mov	dpl,a
      000715 08               [12] 1614 	inc	r0
      000716 E2               [24] 1615 	movx	a,@r0
      000717 F5 83            [12] 1616 	mov	dph,a
      000719 08               [12] 1617 	inc	r0
      00071A E2               [24] 1618 	movx	a,@r0
      00071B F5 F0            [12] 1619 	mov	b,a
      00071D C0 06            [24] 1620 	push	ar6
      00071F 12 01 18         [24] 1621 	lcall	_strcmp
      000722 E5 82            [12] 1622 	mov	a,dpl
      000724 D0 06            [24] 1623 	pop	ar6
      000726 70 03            [24] 1624 	jnz	00342$
      000728 02 08 60         [24] 1625 	ljmp	00200$
      00072B                       1626 00342$:
                                   1627 ;	main.c:209: if(serial_buffer[0]=='I' && serial_buffer[2]=='='){
      00072B 78 53            [12] 1628 	mov	r0,#_loop_serial_buffer_65536_80
      00072D E2               [24] 1629 	movx	a,@r0
      00072E FB               [12] 1630 	mov	r3,a
      00072F BB 49 35         [24] 1631 	cjne	r3,#0x49,00118$
      000732 78 55            [12] 1632 	mov	r0,#(_loop_serial_buffer_65536_80 + 0x0002)
      000734 E2               [24] 1633 	movx	a,@r0
      000735 FB               [12] 1634 	mov	r3,a
      000736 BB 3D 2E         [24] 1635 	cjne	r3,#0x3d,00118$
                                   1636 ;	main.c:210: extractAndAssign(serial_buffer);
      000739 90 00 53         [24] 1637 	mov	dptr,#_loop_serial_buffer_65536_80
      00073C 75 F0 60         [24] 1638 	mov	b,#0x60
      00073F C0 06            [24] 1639 	push	ar6
      000741 12 02 90         [24] 1640 	lcall	_extractAndAssign
                                   1641 ;	main.c:211: _w5500_set_ip(ip);
      000744 78 E3            [12] 1642 	mov	r0,#__w5500_write_PARM_3
      000746 74 09            [12] 1643 	mov	a,#_ip
      000748 F2               [24] 1644 	movx	@r0,a
      000749 08               [12] 1645 	inc	r0
      00074A E4               [12] 1646 	clr	a
      00074B F2               [24] 1647 	movx	@r0,a
      00074C 08               [12] 1648 	inc	r0
      00074D 74 60            [12] 1649 	mov	a,#0x60
      00074F F2               [24] 1650 	movx	@r0,a
      000750 78 E2            [12] 1651 	mov	r0,#__w5500_write_PARM_2
      000752 E4               [12] 1652 	clr	a
      000753 F2               [24] 1653 	movx	@r0,a
      000754 78 E6            [12] 1654 	mov	r0,#__w5500_write_PARM_4
      000756 74 04            [12] 1655 	mov	a,#0x04
      000758 F2               [24] 1656 	movx	@r0,a
      000759 08               [12] 1657 	inc	r0
      00075A E4               [12] 1658 	clr	a
      00075B F2               [24] 1659 	movx	@r0,a
      00075C 90 00 0F         [24] 1660 	mov	dptr,#0x000f
      00075F 12 12 7E         [24] 1661 	lcall	__w5500_write
      000762 D0 06            [24] 1662 	pop	ar6
      000764 02 08 3D         [24] 1663 	ljmp	00198$
      000767                       1664 00118$:
                                   1665 ;	main.c:212: } else if(serial_buffer[0]=='R' && serial_buffer[3]=='='){
      000767 78 53            [12] 1666 	mov	r0,#_loop_serial_buffer_65536_80
      000769 E2               [24] 1667 	movx	a,@r0
      00076A FB               [12] 1668 	mov	r3,a
      00076B BB 52 10         [24] 1669 	cjne	r3,#0x52,00114$
      00076E 78 56            [12] 1670 	mov	r0,#(_loop_serial_buffer_65536_80 + 0x0003)
      000770 E2               [24] 1671 	movx	a,@r0
      000771 FB               [12] 1672 	mov	r3,a
      000772 BB 3D 09         [24] 1673 	cjne	r3,#0x3d,00114$
                                   1674 ;	main.c:213: RTU_Address = serial_buffer[4];
      000775 78 57            [12] 1675 	mov	r0,#(_loop_serial_buffer_65536_80 + 0x0004)
      000777 79 17            [12] 1676 	mov	r1,#_RTU_Address
      000779 E2               [24] 1677 	movx	a,@r0
      00077A F3               [24] 1678 	movx	@r1,a
      00077B 02 08 3D         [24] 1679 	ljmp	00198$
      00077E                       1680 00114$:
                                   1681 ;	main.c:214: } else if(serial_buffer[0]=='G' && serial_buffer[4]=='='){
      00077E 78 53            [12] 1682 	mov	r0,#_loop_serial_buffer_65536_80
      000780 E2               [24] 1683 	movx	a,@r0
      000781 FB               [12] 1684 	mov	r3,a
      000782 BB 47 35         [24] 1685 	cjne	r3,#0x47,00110$
      000785 78 57            [12] 1686 	mov	r0,#(_loop_serial_buffer_65536_80 + 0x0004)
      000787 E2               [24] 1687 	movx	a,@r0
      000788 FB               [12] 1688 	mov	r3,a
      000789 BB 3D 2E         [24] 1689 	cjne	r3,#0x3d,00110$
                                   1690 ;	main.c:215: extractAndAssign(serial_buffer);
      00078C 90 00 53         [24] 1691 	mov	dptr,#_loop_serial_buffer_65536_80
      00078F 75 F0 60         [24] 1692 	mov	b,#0x60
      000792 C0 06            [24] 1693 	push	ar6
      000794 12 02 90         [24] 1694 	lcall	_extractAndAssign
                                   1695 ;	main.c:216: _w5500_set_gateway(gateway);
      000797 78 E3            [12] 1696 	mov	r0,#__w5500_write_PARM_3
      000799 74 01            [12] 1697 	mov	a,#_gateway
      00079B F2               [24] 1698 	movx	@r0,a
      00079C 08               [12] 1699 	inc	r0
      00079D E4               [12] 1700 	clr	a
      00079E F2               [24] 1701 	movx	@r0,a
      00079F 08               [12] 1702 	inc	r0
      0007A0 74 60            [12] 1703 	mov	a,#0x60
      0007A2 F2               [24] 1704 	movx	@r0,a
      0007A3 78 E2            [12] 1705 	mov	r0,#__w5500_write_PARM_2
      0007A5 E4               [12] 1706 	clr	a
      0007A6 F2               [24] 1707 	movx	@r0,a
      0007A7 78 E6            [12] 1708 	mov	r0,#__w5500_write_PARM_4
      0007A9 74 04            [12] 1709 	mov	a,#0x04
      0007AB F2               [24] 1710 	movx	@r0,a
      0007AC 08               [12] 1711 	inc	r0
      0007AD E4               [12] 1712 	clr	a
      0007AE F2               [24] 1713 	movx	@r0,a
      0007AF 90 00 01         [24] 1714 	mov	dptr,#0x0001
      0007B2 12 12 7E         [24] 1715 	lcall	__w5500_write
      0007B5 D0 06            [24] 1716 	pop	ar6
      0007B7 02 08 3D         [24] 1717 	ljmp	00198$
      0007BA                       1718 00110$:
                                   1719 ;	main.c:217: } else if(serial_buffer[0]=='S' && serial_buffer[3]=='='){
      0007BA 78 53            [12] 1720 	mov	r0,#_loop_serial_buffer_65536_80
      0007BC E2               [24] 1721 	movx	a,@r0
      0007BD FB               [12] 1722 	mov	r3,a
      0007BE BB 53 34         [24] 1723 	cjne	r3,#0x53,00106$
      0007C1 78 56            [12] 1724 	mov	r0,#(_loop_serial_buffer_65536_80 + 0x0003)
      0007C3 E2               [24] 1725 	movx	a,@r0
      0007C4 FB               [12] 1726 	mov	r3,a
      0007C5 BB 3D 2D         [24] 1727 	cjne	r3,#0x3d,00106$
                                   1728 ;	main.c:218: extractAndAssign(serial_buffer);
      0007C8 90 00 53         [24] 1729 	mov	dptr,#_loop_serial_buffer_65536_80
      0007CB 75 F0 60         [24] 1730 	mov	b,#0x60
      0007CE C0 06            [24] 1731 	push	ar6
      0007D0 12 02 90         [24] 1732 	lcall	_extractAndAssign
                                   1733 ;	main.c:219: _w5500_set_subnet(subnet);
      0007D3 78 E3            [12] 1734 	mov	r0,#__w5500_write_PARM_3
      0007D5 74 05            [12] 1735 	mov	a,#_subnet
      0007D7 F2               [24] 1736 	movx	@r0,a
      0007D8 08               [12] 1737 	inc	r0
      0007D9 E4               [12] 1738 	clr	a
      0007DA F2               [24] 1739 	movx	@r0,a
      0007DB 08               [12] 1740 	inc	r0
      0007DC 74 60            [12] 1741 	mov	a,#0x60
      0007DE F2               [24] 1742 	movx	@r0,a
      0007DF 78 E2            [12] 1743 	mov	r0,#__w5500_write_PARM_2
      0007E1 E4               [12] 1744 	clr	a
      0007E2 F2               [24] 1745 	movx	@r0,a
      0007E3 78 E6            [12] 1746 	mov	r0,#__w5500_write_PARM_4
      0007E5 74 04            [12] 1747 	mov	a,#0x04
      0007E7 F2               [24] 1748 	movx	@r0,a
      0007E8 08               [12] 1749 	inc	r0
      0007E9 E4               [12] 1750 	clr	a
      0007EA F2               [24] 1751 	movx	@r0,a
      0007EB 90 00 05         [24] 1752 	mov	dptr,#0x0005
      0007EE 12 12 7E         [24] 1753 	lcall	__w5500_write
      0007F1 D0 06            [24] 1754 	pop	ar6
      0007F3 80 48            [24] 1755 	sjmp	00198$
      0007F5                       1756 00106$:
                                   1757 ;	main.c:220: } else if(serial_buffer[0]=='M' && serial_buffer[3]=='='){
      0007F5 78 53            [12] 1758 	mov	r0,#_loop_serial_buffer_65536_80
      0007F7 E2               [24] 1759 	movx	a,@r0
      0007F8 FB               [12] 1760 	mov	r3,a
      0007F9 BB 4D 34         [24] 1761 	cjne	r3,#0x4d,00102$
      0007FC 78 56            [12] 1762 	mov	r0,#(_loop_serial_buffer_65536_80 + 0x0003)
      0007FE E2               [24] 1763 	movx	a,@r0
      0007FF FB               [12] 1764 	mov	r3,a
      000800 BB 3D 2D         [24] 1765 	cjne	r3,#0x3d,00102$
                                   1766 ;	main.c:221: parseMAC(serial_buffer);
      000803 90 00 53         [24] 1767 	mov	dptr,#_loop_serial_buffer_65536_80
      000806 75 F0 60         [24] 1768 	mov	b,#0x60
      000809 C0 06            [24] 1769 	push	ar6
      00080B 12 01 8C         [24] 1770 	lcall	_parseMAC
                                   1771 ;	main.c:222: _w5500_set_mac(mac);
      00080E 78 E3            [12] 1772 	mov	r0,#__w5500_write_PARM_3
      000810 74 0D            [12] 1773 	mov	a,#_mac
      000812 F2               [24] 1774 	movx	@r0,a
      000813 08               [12] 1775 	inc	r0
      000814 E4               [12] 1776 	clr	a
      000815 F2               [24] 1777 	movx	@r0,a
      000816 08               [12] 1778 	inc	r0
      000817 74 60            [12] 1779 	mov	a,#0x60
      000819 F2               [24] 1780 	movx	@r0,a
      00081A 78 E2            [12] 1781 	mov	r0,#__w5500_write_PARM_2
      00081C E4               [12] 1782 	clr	a
      00081D F2               [24] 1783 	movx	@r0,a
      00081E 78 E6            [12] 1784 	mov	r0,#__w5500_write_PARM_4
      000820 74 06            [12] 1785 	mov	a,#0x06
      000822 F2               [24] 1786 	movx	@r0,a
      000823 08               [12] 1787 	inc	r0
      000824 E4               [12] 1788 	clr	a
      000825 F2               [24] 1789 	movx	@r0,a
      000826 90 00 09         [24] 1790 	mov	dptr,#0x0009
      000829 12 12 7E         [24] 1791 	lcall	__w5500_write
      00082C D0 06            [24] 1792 	pop	ar6
      00082E 80 0D            [24] 1793 	sjmp	00198$
      000830                       1794 00102$:
                                   1795 ;	main.c:224: _serial_putstr("\n\rInvalid Command");
      000830 90 15 FE         [24] 1796 	mov	dptr,#___str_14
      000833 75 F0 80         [24] 1797 	mov	b,#0x80
      000836 C0 06            [24] 1798 	push	ar6
      000838 12 0B 59         [24] 1799 	lcall	__serial_putstr
      00083B D0 06            [24] 1800 	pop	ar6
                                   1801 ;	main.c:227: for(unsigned char i = 0; i< 20; i++){
      00083D                       1802 00198$:
      00083D 7B 00            [12] 1803 	mov	r3,#0x00
      00083F                       1804 00171$:
      00083F BB 14 00         [24] 1805 	cjne	r3,#0x14,00363$
      000842                       1806 00363$:
      000842 50 09            [24] 1807 	jnc	00121$
                                   1808 ;	main.c:228: serial_buffer[i] = '\0';
      000844 EB               [12] 1809 	mov	a,r3
      000845 24 53            [12] 1810 	add	a,#_loop_serial_buffer_65536_80
      000847 F8               [12] 1811 	mov	r0,a
      000848 E4               [12] 1812 	clr	a
      000849 F2               [24] 1813 	movx	@r0,a
                                   1814 ;	main.c:227: for(unsigned char i = 0; i< 20; i++){
      00084A 0B               [12] 1815 	inc	r3
      00084B 80 F2            [24] 1816 	sjmp	00171$
      00084D                       1817 00121$:
                                   1818 ;	main.c:230: _serial_putstr("\n");
      00084D 90 16 10         [24] 1819 	mov	dptr,#___str_15
      000850 75 F0 80         [24] 1820 	mov	b,#0x80
      000853 C0 06            [24] 1821 	push	ar6
      000855 12 0B 59         [24] 1822 	lcall	__serial_putstr
      000858 D0 06            [24] 1823 	pop	ar6
                                   1824 ;	main.c:231: serial_index=0;
      00085A 78 67            [12] 1825 	mov	r0,#_loop_serial_index_65536_80
      00085C E4               [12] 1826 	clr	a
      00085D F2               [24] 1827 	movx	@r0,a
                                   1828 ;	main.c:233: for (unsigned char charIndex = 0; charIndex < inputLength; charIndex++)
      00085E 80 39            [24] 1829 	sjmp	00125$
      000860                       1830 00200$:
      000860 78 67            [12] 1831 	mov	r0,#_loop_serial_index_65536_80
      000862 E2               [24] 1832 	movx	a,@r0
      000863 FB               [12] 1833 	mov	r3,a
      000864 7A 00            [12] 1834 	mov	r2,#0x00
      000866                       1835 00174$:
      000866 78 68            [12] 1836 	mov	r0,#_loop_inputLength_131073_82
      000868 C3               [12] 1837 	clr	c
      000869 E2               [24] 1838 	movx	a,@r0
      00086A F5 F0            [12] 1839 	mov	b,a
      00086C EA               [12] 1840 	mov	a,r2
      00086D 95 F0            [12] 1841 	subb	a,b
      00086F 50 24            [24] 1842 	jnc	00223$
                                   1843 ;	main.c:235: serial_buffer[serial_index] = serialInput[charIndex];
      000871 C0 06            [24] 1844 	push	ar6
      000873 EB               [12] 1845 	mov	a,r3
      000874 24 53            [12] 1846 	add	a,#_loop_serial_buffer_65536_80
      000876 F9               [12] 1847 	mov	r1,a
      000877 78 18            [12] 1848 	mov	r0,#_serialInput
      000879 E2               [24] 1849 	movx	a,@r0
      00087A 2A               [12] 1850 	add	a,r2
      00087B FD               [12] 1851 	mov	r5,a
      00087C 08               [12] 1852 	inc	r0
      00087D E2               [24] 1853 	movx	a,@r0
      00087E 34 00            [12] 1854 	addc	a,#0x00
      000880 FE               [12] 1855 	mov	r6,a
      000881 08               [12] 1856 	inc	r0
      000882 E2               [24] 1857 	movx	a,@r0
      000883 FF               [12] 1858 	mov	r7,a
      000884 8D 82            [24] 1859 	mov	dpl,r5
      000886 8E 83            [24] 1860 	mov	dph,r6
      000888 8F F0            [24] 1861 	mov	b,r7
      00088A 12 14 C7         [24] 1862 	lcall	__gptrget
      00088D FD               [12] 1863 	mov	r5,a
      00088E F3               [24] 1864 	movx	@r1,a
                                   1865 ;	main.c:236: serial_index++;
      00088F 0B               [12] 1866 	inc	r3
                                   1867 ;	main.c:233: for (unsigned char charIndex = 0; charIndex < inputLength; charIndex++)
      000890 0A               [12] 1868 	inc	r2
      000891 D0 06            [24] 1869 	pop	ar6
      000893 80 D1            [24] 1870 	sjmp	00174$
      000895                       1871 00223$:
      000895 78 67            [12] 1872 	mov	r0,#_loop_serial_index_65536_80
      000897 EB               [12] 1873 	mov	a,r3
      000898 F2               [24] 1874 	movx	@r0,a
      000899                       1875 00125$:
                                   1876 ;	main.c:239: _serial_putstr(serialInput);
      000899 78 18            [12] 1877 	mov	r0,#_serialInput
      00089B E2               [24] 1878 	movx	a,@r0
      00089C F5 82            [12] 1879 	mov	dpl,a
      00089E 08               [12] 1880 	inc	r0
      00089F E2               [24] 1881 	movx	a,@r0
      0008A0 F5 83            [12] 1882 	mov	dph,a
      0008A2 08               [12] 1883 	inc	r0
      0008A3 E2               [24] 1884 	movx	a,@r0
      0008A4 F5 F0            [12] 1885 	mov	b,a
      0008A6 C0 06            [24] 1886 	push	ar6
      0008A8 12 0B 59         [24] 1887 	lcall	__serial_putstr
      0008AB D0 06            [24] 1888 	pop	ar6
                                   1889 ;	main.c:246: while (_w5500_bytesinbuffer(SOCKET0)) {
      0008AD                       1890 00203$:
      0008AD 7F 00            [12] 1891 	mov	r7,#0x00
      0008AF 78 3E            [12] 1892 	mov	r0,#_loop_input_index_65536_80
      0008B1 E2               [24] 1893 	movx	a,@r0
      0008B2 FD               [12] 1894 	mov	r5,a
      0008B3                       1895 00135$:
      0008B3 75 82 00         [24] 1896 	mov	dpl,#0x00
      0008B6 C0 07            [24] 1897 	push	ar7
      0008B8 C0 06            [24] 1898 	push	ar6
      0008BA C0 05            [24] 1899 	push	ar5
      0008BC 12 10 96         [24] 1900 	lcall	__w5500_bytesinbuffer
      0008BF E5 82            [12] 1901 	mov	a,dpl
      0008C1 85 83 F0         [24] 1902 	mov	b,dph
      0008C4 D0 05            [24] 1903 	pop	ar5
      0008C6 D0 06            [24] 1904 	pop	ar6
      0008C8 D0 07            [24] 1905 	pop	ar7
      0008CA 45 F0            [12] 1906 	orl	a,b
      0008CC 60 6A            [24] 1907 	jz	00224$
                                   1908 ;	main.c:248: P1_0 = 0;
                                   1909 ;	assignBit
      0008CE C2 90            [12] 1910 	clr	_P1_0
                                   1911 ;	main.c:249: P1_1 = 1;
                                   1912 ;	assignBit
      0008D0 D2 91            [12] 1913 	setb	_P1_1
                                   1914 ;	main.c:250: ++read;
      0008D2 0F               [12] 1915 	inc	r7
                                   1916 ;	main.c:251: if (read < 9) {
      0008D3 BF 09 00         [24] 1917 	cjne	r7,#0x09,00367$
      0008D6                       1918 00367$:
      0008D6 50 14            [24] 1919 	jnc	00132$
                                   1920 ;	main.c:252: _w5500_readchar(SOCKET0);
      0008D8 75 82 00         [24] 1921 	mov	dpl,#0x00
      0008DB C0 07            [24] 1922 	push	ar7
      0008DD C0 06            [24] 1923 	push	ar6
      0008DF C0 05            [24] 1924 	push	ar5
      0008E1 12 10 CD         [24] 1925 	lcall	__w5500_readchar
      0008E4 D0 05            [24] 1926 	pop	ar5
      0008E6 D0 06            [24] 1927 	pop	ar6
      0008E8 D0 07            [24] 1928 	pop	ar7
                                   1929 ;	main.c:253: continue;
      0008EA 80 C7            [24] 1930 	sjmp	00135$
      0008EC                       1931 00132$:
                                   1932 ;	main.c:255: rec_char_byte = _w5500_readchar(SOCKET0);
      0008EC 75 82 00         [24] 1933 	mov	dpl,#0x00
      0008EF C0 07            [24] 1934 	push	ar7
      0008F1 C0 06            [24] 1935 	push	ar6
      0008F3 C0 05            [24] 1936 	push	ar5
      0008F5 12 10 CD         [24] 1937 	lcall	__w5500_readchar
      0008F8 AB 82            [24] 1938 	mov	r3,dpl
      0008FA D0 05            [24] 1939 	pop	ar5
      0008FC D0 06            [24] 1940 	pop	ar6
      0008FE D0 07            [24] 1941 	pop	ar7
                                   1942 ;	main.c:256: if (islower(rec_char_byte)) {
      000900 8B 02            [24] 1943 	mov	ar2,r3
                                   1944 ;	/usr/bin/../share/sdcc/include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
      000902 BA 61 00         [24] 1945 	cjne	r2,#0x61,00369$
      000905                       1946 00369$:
      000905 40 22            [24] 1947 	jc	00134$
      000907 EA               [12] 1948 	mov	a,r2
      000908 24 85            [12] 1949 	add	a,#0xff - 0x7a
      00090A 40 1D            [24] 1950 	jc	00134$
                                   1951 ;	main.c:257: rec_char_byte = toupper(rec_char_byte);
      00090C 8B 02            [24] 1952 	mov	ar2,r3
      00090E 7C 00            [12] 1953 	mov	r4,#0x00
      000910 8A 82            [24] 1954 	mov	dpl,r2
      000912 8C 83            [24] 1955 	mov	dph,r4
      000914 C0 07            [24] 1956 	push	ar7
      000916 C0 06            [24] 1957 	push	ar6
      000918 C0 05            [24] 1958 	push	ar5
      00091A 12 14 A4         [24] 1959 	lcall	_toupper
      00091D AA 82            [24] 1960 	mov	r2,dpl
      00091F AC 83            [24] 1961 	mov	r4,dph
      000921 D0 05            [24] 1962 	pop	ar5
      000923 D0 06            [24] 1963 	pop	ar6
      000925 D0 07            [24] 1964 	pop	ar7
      000927 8A 03            [24] 1965 	mov	ar3,r2
      000929                       1966 00134$:
                                   1967 ;	main.c:259: input_buffer[input_index] = rec_char_byte;
      000929 ED               [12] 1968 	mov	a,r5
      00092A 24 2A            [12] 1969 	add	a,#_loop_input_buffer_65536_80
      00092C F8               [12] 1970 	mov	r0,a
      00092D EB               [12] 1971 	mov	a,r3
      00092E F2               [24] 1972 	movx	@r0,a
                                   1973 ;	main.c:260: input_index++;
      00092F 0D               [12] 1974 	inc	r5
                                   1975 ;	main.c:261: recieved_udp = 1;
      000930 78 29            [12] 1976 	mov	r0,#_loop_recieved_udp_65536_80
      000932 74 01            [12] 1977 	mov	a,#0x01
      000934 F2               [24] 1978 	movx	@r0,a
      000935 02 08 B3         [24] 1979 	ljmp	00135$
      000938                       1980 00224$:
      000938 78 3E            [12] 1981 	mov	r0,#_loop_input_index_65536_80
      00093A ED               [12] 1982 	mov	a,r5
      00093B F2               [24] 1983 	movx	@r0,a
                                   1984 ;	main.c:263: if(recieved_udp){
      00093C 78 29            [12] 1985 	mov	r0,#_loop_recieved_udp_65536_80
      00093E E2               [24] 1986 	movx	a,@r0
      00093F 70 03            [24] 1987 	jnz	00372$
      000941 02 09 C4         [24] 1988 	ljmp	00146$
      000944                       1989 00372$:
                                   1990 ;	main.c:264: P1_0 = 1;
                                   1991 ;	assignBit
      000944 D2 90            [12] 1992 	setb	_P1_0
                                   1993 ;	main.c:265: P1_1 = 0;
                                   1994 ;	assignBit
      000946 C2 91            [12] 1995 	clr	_P1_1
                                   1996 ;	main.c:266: if(input_buffer[0] == ':' && input_buffer[1] == '<' && input_buffer[input_index-1] == '>'){
      000948 78 2A            [12] 1997 	mov	r0,#_loop_input_buffer_65536_80
      00094A E2               [24] 1998 	movx	a,@r0
      00094B FF               [12] 1999 	mov	r7,a
      00094C BF 3A 4C         [24] 2000 	cjne	r7,#0x3a,00141$
      00094F 78 2B            [12] 2001 	mov	r0,#(_loop_input_buffer_65536_80 + 0x0001)
      000951 E2               [24] 2002 	movx	a,@r0
      000952 FF               [12] 2003 	mov	r7,a
      000953 BF 3C 45         [24] 2004 	cjne	r7,#0x3c,00141$
      000956 8D 07            [24] 2005 	mov	ar7,r5
      000958 EF               [12] 2006 	mov	a,r7
      000959 14               [12] 2007 	dec	a
      00095A 24 2A            [12] 2008 	add	a,#_loop_input_buffer_65536_80
      00095C F9               [12] 2009 	mov	r1,a
      00095D E3               [24] 2010 	movx	a,@r1
      00095E FC               [12] 2011 	mov	r4,a
      00095F BC 3E 39         [24] 2012 	cjne	r4,#0x3e,00141$
                                   2013 ;	main.c:267: input_buffer[1] = '[';
      000962 78 2B            [12] 2014 	mov	r0,#(_loop_input_buffer_65536_80 + 0x0001)
      000964 74 5B            [12] 2015 	mov	a,#0x5b
      000966 F2               [24] 2016 	movx	@r0,a
                                   2017 ;	main.c:268: input_buffer[input_index-1] = ']';
      000967 EF               [12] 2018 	mov	a,r7
      000968 14               [12] 2019 	dec	a
      000969 24 2A            [12] 2020 	add	a,#_loop_input_buffer_65536_80
      00096B F8               [12] 2021 	mov	r0,a
      00096C 74 5D            [12] 2022 	mov	a,#0x5d
      00096E F2               [24] 2023 	movx	@r0,a
                                   2024 ;	main.c:269: if(input_buffer[2] == RTU_Address){
      00096F 78 2C            [12] 2025 	mov	r0,#(_loop_input_buffer_65536_80 + 0x0002)
      000971 E2               [24] 2026 	movx	a,@r0
      000972 FF               [12] 2027 	mov	r7,a
      000973 78 17            [12] 2028 	mov	r0,#_RTU_Address
      000975 E2               [24] 2029 	movx	a,@r0
      000976 B5 07 44         [24] 2030 	cjne	a,ar7,00142$
                                   2031 ;	main.c:270: _w5500_writeto(SOCKET0, input_buffer, input_index);
      000979 78 D7            [12] 2032 	mov	r0,#__w5500_writeto_PARM_2
      00097B 74 2A            [12] 2033 	mov	a,#_loop_input_buffer_65536_80
      00097D F2               [24] 2034 	movx	@r0,a
      00097E 08               [12] 2035 	inc	r0
      00097F E4               [12] 2036 	clr	a
      000980 F2               [24] 2037 	movx	@r0,a
      000981 08               [12] 2038 	inc	r0
      000982 74 60            [12] 2039 	mov	a,#0x60
      000984 F2               [24] 2040 	movx	@r0,a
      000985 78 DA            [12] 2041 	mov	r0,#__w5500_writeto_PARM_3
      000987 ED               [12] 2042 	mov	a,r5
      000988 F2               [24] 2043 	movx	@r0,a
      000989 75 82 00         [24] 2044 	mov	dpl,#0x00
      00098C C0 06            [24] 2045 	push	ar6
      00098E 12 0F F8         [24] 2046 	lcall	__w5500_writeto
                                   2047 ;	main.c:271: _w5500_send(SOCKET0);
      000991 75 82 00         [24] 2048 	mov	dpl,#0x00
      000994 12 11 97         [24] 2049 	lcall	__w5500_send
      000997 D0 06            [24] 2050 	pop	ar6
      000999 80 22            [24] 2051 	sjmp	00142$
      00099B                       2052 00141$:
                                   2053 ;	main.c:274: _w5500_writeto(SOCKET0, input_buffer, input_index);
      00099B 78 D7            [12] 2054 	mov	r0,#__w5500_writeto_PARM_2
      00099D 74 2A            [12] 2055 	mov	a,#_loop_input_buffer_65536_80
      00099F F2               [24] 2056 	movx	@r0,a
      0009A0 08               [12] 2057 	inc	r0
      0009A1 E4               [12] 2058 	clr	a
      0009A2 F2               [24] 2059 	movx	@r0,a
      0009A3 08               [12] 2060 	inc	r0
      0009A4 74 60            [12] 2061 	mov	a,#0x60
      0009A6 F2               [24] 2062 	movx	@r0,a
      0009A7 78 3E            [12] 2063 	mov	r0,#_loop_input_index_65536_80
      0009A9 79 DA            [12] 2064 	mov	r1,#__w5500_writeto_PARM_3
      0009AB E2               [24] 2065 	movx	a,@r0
      0009AC F3               [24] 2066 	movx	@r1,a
      0009AD 75 82 00         [24] 2067 	mov	dpl,#0x00
      0009B0 C0 06            [24] 2068 	push	ar6
      0009B2 12 0F F8         [24] 2069 	lcall	__w5500_writeto
                                   2070 ;	main.c:275: _w5500_send(SOCKET0);
      0009B5 75 82 00         [24] 2071 	mov	dpl,#0x00
      0009B8 12 11 97         [24] 2072 	lcall	__w5500_send
      0009BB D0 06            [24] 2073 	pop	ar6
      0009BD                       2074 00142$:
                                   2075 ;	main.c:277: input_index = 0;
      0009BD 78 3E            [12] 2076 	mov	r0,#_loop_input_index_65536_80
      0009BF E4               [12] 2077 	clr	a
      0009C0 F2               [24] 2078 	movx	@r0,a
                                   2079 ;	main.c:278: recieved_udp = 0;
      0009C1 78 29            [12] 2080 	mov	r0,#_loop_recieved_udp_65536_80
      0009C3 F2               [24] 2081 	movx	@r0,a
      0009C4                       2082 00146$:
                                   2083 ;	main.c:283: unsigned char status = _w5500_get_status(SOCKET1);
      0009C4 75 82 01         [24] 2084 	mov	dpl,#0x01
      0009C7 C0 06            [24] 2085 	push	ar6
      0009C9 12 0F 1D         [24] 2086 	lcall	__w5500_get_status
      0009CC AF 82            [24] 2087 	mov	r7,dpl
      0009CE D0 06            [24] 2088 	pop	ar6
                                   2089 ;	main.c:284: count=0;
      0009D0 7D 00            [12] 2090 	mov	r5,#0x00
                                   2091 ;	main.c:285: if (status == SOCK_ESTABLISHED) {
      0009D2 BF 17 02         [24] 2092 	cjne	r7,#0x17,00381$
      0009D5 80 03            [24] 2093 	sjmp	00382$
      0009D7                       2094 00381$:
      0009D7 02 0A B7         [24] 2095 	ljmp	00162$
      0009DA                       2096 00382$:
                                   2097 ;	main.c:286: while (_w5500_bytesinbuffer(SOCKET1)) {
      0009DA                       2098 00149$:
      0009DA 75 82 01         [24] 2099 	mov	dpl,#0x01
      0009DD C0 07            [24] 2100 	push	ar7
      0009DF C0 06            [24] 2101 	push	ar6
      0009E1 C0 05            [24] 2102 	push	ar5
      0009E3 12 10 96         [24] 2103 	lcall	__w5500_bytesinbuffer
      0009E6 E5 82            [12] 2104 	mov	a,dpl
      0009E8 85 83 F0         [24] 2105 	mov	b,dph
      0009EB D0 05            [24] 2106 	pop	ar5
      0009ED D0 06            [24] 2107 	pop	ar6
      0009EF D0 07            [24] 2108 	pop	ar7
      0009F1 45 F0            [12] 2109 	orl	a,b
      0009F3 60 48            [24] 2110 	jz	00151$
                                   2111 ;	main.c:287: P1_0 = 0;
                                   2112 ;	assignBit
      0009F5 C2 90            [12] 2113 	clr	_P1_0
                                   2114 ;	main.c:288: P1_1 = 1;
                                   2115 ;	assignBit
      0009F7 D2 91            [12] 2116 	setb	_P1_1
                                   2117 ;	main.c:289: rec_char_byte_tcp = _w5500_readchar(SOCKET1);
      0009F9 75 82 01         [24] 2118 	mov	dpl,#0x01
      0009FC C0 07            [24] 2119 	push	ar7
      0009FE C0 05            [24] 2120 	push	ar5
      000A00 12 10 CD         [24] 2121 	lcall	__w5500_readchar
      000A03 AC 82            [24] 2122 	mov	r4,dpl
      000A05 D0 05            [24] 2123 	pop	ar5
      000A07 D0 07            [24] 2124 	pop	ar7
                                   2125 ;	main.c:290: if (islower(rec_char_byte_tcp)) {
      000A09 8C 03            [24] 2126 	mov	ar3,r4
                                   2127 ;	/usr/bin/../share/sdcc/include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
      000A0B BB 61 00         [24] 2128 	cjne	r3,#0x61,00384$
      000A0E                       2129 00384$:
      000A0E 40 1E            [24] 2130 	jc	00148$
      000A10 EB               [12] 2131 	mov	a,r3
      000A11 24 85            [12] 2132 	add	a,#0xff - 0x7a
      000A13 40 19            [24] 2133 	jc	00148$
                                   2134 ;	main.c:291: rec_char_byte_tcp = toupper(rec_char_byte_tcp);
      000A15 8C 02            [24] 2135 	mov	ar2,r4
      000A17 7B 00            [12] 2136 	mov	r3,#0x00
      000A19 8A 82            [24] 2137 	mov	dpl,r2
      000A1B 8B 83            [24] 2138 	mov	dph,r3
      000A1D C0 07            [24] 2139 	push	ar7
      000A1F C0 05            [24] 2140 	push	ar5
      000A21 12 14 A4         [24] 2141 	lcall	_toupper
      000A24 AA 82            [24] 2142 	mov	r2,dpl
      000A26 AB 83            [24] 2143 	mov	r3,dph
      000A28 D0 05            [24] 2144 	pop	ar5
      000A2A D0 07            [24] 2145 	pop	ar7
      000A2C 8A 04            [24] 2146 	mov	ar4,r2
      000A2E                       2147 00148$:
                                   2148 ;	main.c:293: arrbuf[count] = rec_char_byte_tcp;
      000A2E ED               [12] 2149 	mov	a,r5
      000A2F 24 3F            [12] 2150 	add	a,#_loop_arrbuf_65536_80
      000A31 F8               [12] 2151 	mov	r0,a
      000A32 EC               [12] 2152 	mov	a,r4
      000A33 F2               [24] 2153 	movx	@r0,a
                                   2154 ;	main.c:294: recieved_tcp = 1;
      000A34 7E 01            [12] 2155 	mov	r6,#0x01
                                   2156 ;	main.c:295: count = count + 1;
      000A36 8D 04            [24] 2157 	mov	ar4,r5
      000A38 EC               [12] 2158 	mov	a,r4
      000A39 04               [12] 2159 	inc	a
      000A3A FD               [12] 2160 	mov	r5,a
      000A3B 80 9D            [24] 2161 	sjmp	00149$
      000A3D                       2162 00151$:
                                   2163 ;	main.c:297: if(recieved_tcp){
      000A3D EE               [12] 2164 	mov	a,r6
      000A3E 60 77            [24] 2165 	jz	00162$
                                   2166 ;	main.c:298: P1_0 = 1;
                                   2167 ;	assignBit
      000A40 D2 90            [12] 2168 	setb	_P1_0
                                   2169 ;	main.c:299: P1_1 = 0;
                                   2170 ;	assignBit
      000A42 C2 91            [12] 2171 	clr	_P1_1
                                   2172 ;	main.c:300: if (arrbuf[0] == ':' && arrbuf[1] == '<' && arrbuf[count-1] == '>') {
      000A44 78 3F            [12] 2173 	mov	r0,#_loop_arrbuf_65536_80
      000A46 E2               [24] 2174 	movx	a,@r0
      000A47 FC               [12] 2175 	mov	r4,a
      000A48 BC 3A 6C         [24] 2176 	cjne	r4,#0x3a,00162$
      000A4B 78 40            [12] 2177 	mov	r0,#(_loop_arrbuf_65536_80 + 0x0001)
      000A4D E2               [24] 2178 	movx	a,@r0
      000A4E FC               [12] 2179 	mov	r4,a
      000A4F BC 3C 65         [24] 2180 	cjne	r4,#0x3c,00162$
      000A52 8D 04            [24] 2181 	mov	ar4,r5
      000A54 EC               [12] 2182 	mov	a,r4
      000A55 14               [12] 2183 	dec	a
      000A56 24 3F            [12] 2184 	add	a,#_loop_arrbuf_65536_80
      000A58 F9               [12] 2185 	mov	r1,a
      000A59 E3               [24] 2186 	movx	a,@r1
      000A5A FB               [12] 2187 	mov	r3,a
      000A5B BB 3E 59         [24] 2188 	cjne	r3,#0x3e,00162$
                                   2189 ;	main.c:301: arrbuf[1] = '[';
      000A5E 78 40            [12] 2190 	mov	r0,#(_loop_arrbuf_65536_80 + 0x0001)
      000A60 74 5B            [12] 2191 	mov	a,#0x5b
      000A62 F2               [24] 2192 	movx	@r0,a
                                   2193 ;	main.c:302: arrbuf[count - 1] = ']';
      000A63 EC               [12] 2194 	mov	a,r4
      000A64 14               [12] 2195 	dec	a
      000A65 24 3F            [12] 2196 	add	a,#_loop_arrbuf_65536_80
      000A67 F8               [12] 2197 	mov	r0,a
      000A68 74 5D            [12] 2198 	mov	a,#0x5d
      000A6A F2               [24] 2199 	movx	@r0,a
                                   2200 ;	main.c:303: if(arrbuf[2] == RTU_Address){
      000A6B 78 41            [12] 2201 	mov	r0,#(_loop_arrbuf_65536_80 + 0x0002)
      000A6D E2               [24] 2202 	movx	a,@r0
      000A6E FC               [12] 2203 	mov	r4,a
      000A6F 78 17            [12] 2204 	mov	r0,#_RTU_Address
      000A71 E2               [24] 2205 	movx	a,@r0
      000A72 B5 04 1C         [24] 2206 	cjne	a,ar4,00153$
                                   2207 ;	main.c:304: _w5500_writeto(SOCKET1, arrbuf, count);  
      000A75 78 D7            [12] 2208 	mov	r0,#__w5500_writeto_PARM_2
      000A77 74 3F            [12] 2209 	mov	a,#_loop_arrbuf_65536_80
      000A79 F2               [24] 2210 	movx	@r0,a
      000A7A 08               [12] 2211 	inc	r0
      000A7B E4               [12] 2212 	clr	a
      000A7C F2               [24] 2213 	movx	@r0,a
      000A7D 08               [12] 2214 	inc	r0
      000A7E 74 60            [12] 2215 	mov	a,#0x60
      000A80 F2               [24] 2216 	movx	@r0,a
      000A81 78 DA            [12] 2217 	mov	r0,#__w5500_writeto_PARM_3
      000A83 ED               [12] 2218 	mov	a,r5
      000A84 F2               [24] 2219 	movx	@r0,a
      000A85 75 82 01         [24] 2220 	mov	dpl,#0x01
      000A88 C0 07            [24] 2221 	push	ar7
      000A8A 12 0F F8         [24] 2222 	lcall	__w5500_writeto
      000A8D D0 07            [24] 2223 	pop	ar7
      000A8F 80 1A            [24] 2224 	sjmp	00154$
      000A91                       2225 00153$:
                                   2226 ;	main.c:306: _w5500_writeto(SOCKET1, arrbuf, count);  
      000A91 78 D7            [12] 2227 	mov	r0,#__w5500_writeto_PARM_2
      000A93 74 3F            [12] 2228 	mov	a,#_loop_arrbuf_65536_80
      000A95 F2               [24] 2229 	movx	@r0,a
      000A96 08               [12] 2230 	inc	r0
      000A97 E4               [12] 2231 	clr	a
      000A98 F2               [24] 2232 	movx	@r0,a
      000A99 08               [12] 2233 	inc	r0
      000A9A 74 60            [12] 2234 	mov	a,#0x60
      000A9C F2               [24] 2235 	movx	@r0,a
      000A9D 78 DA            [12] 2236 	mov	r0,#__w5500_writeto_PARM_3
      000A9F ED               [12] 2237 	mov	a,r5
      000AA0 F2               [24] 2238 	movx	@r0,a
      000AA1 75 82 01         [24] 2239 	mov	dpl,#0x01
      000AA4 C0 07            [24] 2240 	push	ar7
      000AA6 12 0F F8         [24] 2241 	lcall	__w5500_writeto
      000AA9 D0 07            [24] 2242 	pop	ar7
      000AAB                       2243 00154$:
                                   2244 ;	main.c:308: _w5500_send(SOCKET1);
      000AAB 75 82 01         [24] 2245 	mov	dpl,#0x01
      000AAE C0 07            [24] 2246 	push	ar7
      000AB0 12 11 97         [24] 2247 	lcall	__w5500_send
      000AB3 D0 07            [24] 2248 	pop	ar7
                                   2249 ;	main.c:309: recieved_tcp = 0;
      000AB5 7E 00            [12] 2250 	mov	r6,#0x00
      000AB7                       2251 00162$:
                                   2252 ;	main.c:313: if(status == SOCK_CLOSE_WAIT){
      000AB7 BF 1C 02         [24] 2253 	cjne	r7,#0x1c,00396$
      000ABA 80 03            [24] 2254 	sjmp	00397$
      000ABC                       2255 00396$:
      000ABC 02 06 A8         [24] 2256 	ljmp	00166$
      000ABF                       2257 00397$:
                                   2258 ;	main.c:314: _w5500_close(SOCKET1);
      000ABF 75 82 01         [24] 2259 	mov	dpl,#0x01
      000AC2 C0 06            [24] 2260 	push	ar6
      000AC4 12 0D 2D         [24] 2261 	lcall	__w5500_close
                                   2262 ;	main.c:315: setuptcp();
      000AC7 12 05 BD         [24] 2263 	lcall	_setuptcp
      000ACA D0 06            [24] 2264 	pop	ar6
                                   2265 ;	main.c:319: }
      000ACC 02 06 A8         [24] 2266 	ljmp	00166$
                                   2267 ;------------------------------------------------------------
                                   2268 ;Allocation info for local variables in function 'main'
                                   2269 ;------------------------------------------------------------
                                   2270 ;	main.c:321: void main(void) {
                                   2271 ;	-----------------------------------------
                                   2272 ;	 function main
                                   2273 ;	-----------------------------------------
      000ACF                       2274 _main:
                                   2275 ;	main.c:322: setup();
      000ACF 12 05 DE         [24] 2276 	lcall	_setup
                                   2277 ;	main.c:323: while(1) {
      000AD2                       2278 00102$:
                                   2279 ;	main.c:324: loop();
      000AD2 12 06 9C         [24] 2280 	lcall	_loop
                                   2281 ;	main.c:326: }
      000AD5 80 FB            [24] 2282 	sjmp	00102$
                                   2283 	.area CSEG    (CODE)
                                   2284 	.area CONST   (CODE)
                                   2285 	.area CONST   (CODE)
      0014E7                       2286 ___str_0:
      0014E7 20                    2287 	.ascii " "
      0014E8 00                    2288 	.db 0x00
                                   2289 	.area CSEG    (CODE)
                                   2290 	.area CONST   (CODE)
      0014E9                       2291 ___str_1:
      0014E9 0A                    2292 	.db 0x0a
      0014EA 0D                    2293 	.db 0x0d
      0014EB 43 55 52 52 45 4E 54  2294 	.ascii "CURRENT CONFIG:                    CHANGE CMD:"
             20 43 4F 4E 46 49 47
             3A 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             43 48 41 4E 47 45 20
             43 4D 44 3A
      001519 0A                    2295 	.db 0x0a
      00151A 0D                    2296 	.db 0x0d
      00151B 00                    2297 	.db 0x00
                                   2298 	.area CSEG    (CODE)
                                   2299 	.area CONST   (CODE)
      00151C                       2300 ___str_2:
      00151C 52 54 55 20 41 64 64  2301 	.ascii "RTU Addr (0-9): "
             72 20 28 30 2D 39 29
             3A 20
      00152C 00                    2302 	.db 0x00
                                   2303 	.area CSEG    (CODE)
                                   2304 	.area CONST   (CODE)
      00152D                       2305 ___str_3:
      00152D 20 20 20 20 20 20 20  2306 	.ascii "                  RTU=#"
             20 20 20 20 20 20 20
             20 20 20 20 52 54 55
             3D 23
      001544 0A                    2307 	.db 0x0a
      001545 0D                    2308 	.db 0x0d
      001546 00                    2309 	.db 0x00
                                   2310 	.area CSEG    (CODE)
                                   2311 	.area CONST   (CODE)
      001547                       2312 ___str_4:
      001547 49 50 20 41 64 64 72  2313 	.ascii "IP Addr: "
             3A 20
      001550 00                    2314 	.db 0x00
                                   2315 	.area CSEG    (CODE)
                                   2316 	.area CONST   (CODE)
      001551                       2317 ___str_5:
      001551 20 20 20 20 20 20 20  2318 	.ascii "             IP=###.###.###.###"
             20 20 20 20 20 20 49
             50 3D 23 23 23 2E 23
             23 23 2E 23 23 23 2E
             23 23 23
      001570 0A                    2319 	.db 0x0a
      001571 0D                    2320 	.db 0x0d
      001572 00                    2321 	.db 0x00
                                   2322 	.area CSEG    (CODE)
                                   2323 	.area CONST   (CODE)
      001573                       2324 ___str_6:
      001573 53 75 62 6E 65 74 20  2325 	.ascii "Subnet Mask: "
             4D 61 73 6B 3A 20
      001580 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      001581                       2329 ___str_7:
      001581 20 20 20 20 20 20 20  2330 	.ascii "         SUB=###.###.###.###"
             20 20 53 55 42 3D 23
             23 23 2E 23 23 23 2E
             23 23 23 2E 23 23 23
      00159D 0A                    2331 	.db 0x0a
      00159E 0D                    2332 	.db 0x0d
      00159F 00                    2333 	.db 0x00
                                   2334 	.area CSEG    (CODE)
                                   2335 	.area CONST   (CODE)
      0015A0                       2336 ___str_8:
      0015A0 47 61 74 65 77 61 79  2337 	.ascii "Gateway: "
             3A 20
      0015A9 00                    2338 	.db 0x00
                                   2339 	.area CSEG    (CODE)
                                   2340 	.area CONST   (CODE)
      0015AA                       2341 ___str_9:
      0015AA 20 20 20 20 20 20 20  2342 	.ascii "              GATE=###.###.###.###"
             20 20 20 20 20 20 20
             47 41 54 45 3D 23 23
             23 2E 23 23 23 2E 23
             23 23 2E 23 23 23
      0015CC 0A                    2343 	.db 0x0a
      0015CD 0D                    2344 	.db 0x0d
      0015CE 00                    2345 	.db 0x00
                                   2346 	.area CSEG    (CODE)
                                   2347 	.area CONST   (CODE)
      0015CF                       2348 ___str_10:
      0015CF 4D 41 43 20 41 64 64  2349 	.ascii "MAC Addr: "
             72 3A 20
      0015D9 00                    2350 	.db 0x00
                                   2351 	.area CSEG    (CODE)
                                   2352 	.area CONST   (CODE)
      0015DA                       2353 ___str_11:
      0015DA 20 20 20 20 20 20 20  2354 	.ascii "        MAC=FF FF FF FF FF FF"
             20 4D 41 43 3D 46 46
             20 46 46 20 46 46 20
             46 46 20 46 46 20 46
             46
      0015F7 0A                    2355 	.db 0x0a
      0015F8 0D                    2356 	.db 0x0d
      0015F9 00                    2357 	.db 0x00
                                   2358 	.area CSEG    (CODE)
                                   2359 	.area CONST   (CODE)
      0015FA                       2360 ___str_12:
      0015FA 3F                    2361 	.ascii "?"
      0015FB 00                    2362 	.db 0x00
                                   2363 	.area CSEG    (CODE)
                                   2364 	.area CONST   (CODE)
      0015FC                       2365 ___str_13:
      0015FC 0D                    2366 	.db 0x0d
      0015FD 00                    2367 	.db 0x00
                                   2368 	.area CSEG    (CODE)
                                   2369 	.area CONST   (CODE)
      0015FE                       2370 ___str_14:
      0015FE 0A                    2371 	.db 0x0a
      0015FF 0D                    2372 	.db 0x0d
      001600 49 6E 76 61 6C 69 64  2373 	.ascii "Invalid Command"
             20 43 6F 6D 6D 61 6E
             64
      00160F 00                    2374 	.db 0x00
                                   2375 	.area CSEG    (CODE)
                                   2376 	.area CONST   (CODE)
      001610                       2377 ___str_15:
      001610 0A                    2378 	.db 0x0a
      001611 00                    2379 	.db 0x00
                                   2380 	.area CSEG    (CODE)
                                   2381 	.area XINIT   (CODE)
                                   2382 	.area CABS    (ABS,CODE)
