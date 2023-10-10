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
                                     32 	.globl __w5500_clear_SNIR
                                     33 	.globl __w5500_get_SIR
                                     34 	.globl __w5500_get_SIMR
                                     35 	.globl __w5500_set_IMR
                                     36 	.globl __w5500_get_IMR
                                     37 	.globl __w5500_get_status
                                     38 	.globl __w5500_bytesinbuffer
                                     39 	.globl __w5500_writeto
                                     40 	.globl __w5500_set_destinationip
                                     41 	.globl __w5500_set_remoteport
                                     42 	.globl __w5500_set_sourceport
                                     43 	.globl __spigeneric_reset
                                     44 	.globl __serial_putbyte_dec
                                     45 	.globl __serial_putbyte_hex
                                     46 	.globl __serial_emptybuffer
                                     47 	.globl __serial_putstr
                                     48 	.globl __serial_putchar
                                     49 	.globl __serial_begin
                                     50 	.globl _CY
                                     51 	.globl _AC
                                     52 	.globl _F0
                                     53 	.globl _RS1
                                     54 	.globl _RS0
                                     55 	.globl _OV
                                     56 	.globl _F1
                                     57 	.globl _P
                                     58 	.globl _PS
                                     59 	.globl _PT1
                                     60 	.globl _PX1
                                     61 	.globl _PT0
                                     62 	.globl _PX0
                                     63 	.globl _RD
                                     64 	.globl _WR
                                     65 	.globl _T1
                                     66 	.globl _T0
                                     67 	.globl _INT1
                                     68 	.globl _INT0
                                     69 	.globl _TXD
                                     70 	.globl _RXD
                                     71 	.globl _P3_7
                                     72 	.globl _P3_6
                                     73 	.globl _P3_5
                                     74 	.globl _P3_4
                                     75 	.globl _P3_3
                                     76 	.globl _P3_2
                                     77 	.globl _P3_1
                                     78 	.globl _P3_0
                                     79 	.globl _EA
                                     80 	.globl _ES
                                     81 	.globl _ET1
                                     82 	.globl _EX1
                                     83 	.globl _ET0
                                     84 	.globl _EX0
                                     85 	.globl _P2_7
                                     86 	.globl _P2_6
                                     87 	.globl _P2_5
                                     88 	.globl _P2_4
                                     89 	.globl _P2_3
                                     90 	.globl _P2_2
                                     91 	.globl _P2_1
                                     92 	.globl _P2_0
                                     93 	.globl _SM0
                                     94 	.globl _SM1
                                     95 	.globl _SM2
                                     96 	.globl _REN
                                     97 	.globl _TB8
                                     98 	.globl _RB8
                                     99 	.globl _TI
                                    100 	.globl _RI
                                    101 	.globl _P1_7
                                    102 	.globl _P1_6
                                    103 	.globl _P1_5
                                    104 	.globl _P1_4
                                    105 	.globl _P1_3
                                    106 	.globl _P1_2
                                    107 	.globl _P1_1
                                    108 	.globl _P1_0
                                    109 	.globl _TF1
                                    110 	.globl _TR1
                                    111 	.globl _TF0
                                    112 	.globl _TR0
                                    113 	.globl _IE1
                                    114 	.globl _IT1
                                    115 	.globl _IE0
                                    116 	.globl _IT0
                                    117 	.globl _P0_7
                                    118 	.globl _P0_6
                                    119 	.globl _P0_5
                                    120 	.globl _P0_4
                                    121 	.globl _P0_3
                                    122 	.globl _P0_2
                                    123 	.globl _P0_1
                                    124 	.globl _P0_0
                                    125 	.globl _B
                                    126 	.globl _ACC
                                    127 	.globl _PSW
                                    128 	.globl _IP
                                    129 	.globl _P3
                                    130 	.globl _IE
                                    131 	.globl _P2
                                    132 	.globl _SBUF
                                    133 	.globl _SCON
                                    134 	.globl _P1
                                    135 	.globl _TH1
                                    136 	.globl _TH0
                                    137 	.globl _TL1
                                    138 	.globl _TL0
                                    139 	.globl _TMOD
                                    140 	.globl _TCON
                                    141 	.globl _PCON
                                    142 	.globl _DPH
                                    143 	.globl _DPL
                                    144 	.globl _SP
                                    145 	.globl _P0
                                    146 	.globl _strcmp_PARM_2
                                    147 	.globl _serialInput
                                    148 	.globl _RTU_Address
                                    149 	.globl _dest_ip
                                    150 	.globl _mac
                                    151 	.globl _ip
                                    152 	.globl _subnet
                                    153 	.globl _gateway
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0	=	0x0080
                           000081   160 _SP	=	0x0081
                           000082   161 _DPL	=	0x0082
                           000083   162 _DPH	=	0x0083
                           000087   163 _PCON	=	0x0087
                           000088   164 _TCON	=	0x0088
                           000089   165 _TMOD	=	0x0089
                           00008A   166 _TL0	=	0x008a
                           00008B   167 _TL1	=	0x008b
                           00008C   168 _TH0	=	0x008c
                           00008D   169 _TH1	=	0x008d
                           000090   170 _P1	=	0x0090
                           000098   171 _SCON	=	0x0098
                           000099   172 _SBUF	=	0x0099
                           0000A0   173 _P2	=	0x00a0
                           0000A8   174 _IE	=	0x00a8
                           0000B0   175 _P3	=	0x00b0
                           0000B8   176 _IP	=	0x00b8
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000F0   179 _B	=	0x00f0
                                    180 ;--------------------------------------------------------
                                    181 ; special function bits
                                    182 ;--------------------------------------------------------
                                    183 	.area RSEG    (ABS,DATA)
      000000                        184 	.org 0x0000
                           000080   185 _P0_0	=	0x0080
                           000081   186 _P0_1	=	0x0081
                           000082   187 _P0_2	=	0x0082
                           000083   188 _P0_3	=	0x0083
                           000084   189 _P0_4	=	0x0084
                           000085   190 _P0_5	=	0x0085
                           000086   191 _P0_6	=	0x0086
                           000087   192 _P0_7	=	0x0087
                           000088   193 _IT0	=	0x0088
                           000089   194 _IE0	=	0x0089
                           00008A   195 _IT1	=	0x008a
                           00008B   196 _IE1	=	0x008b
                           00008C   197 _TR0	=	0x008c
                           00008D   198 _TF0	=	0x008d
                           00008E   199 _TR1	=	0x008e
                           00008F   200 _TF1	=	0x008f
                           000090   201 _P1_0	=	0x0090
                           000091   202 _P1_1	=	0x0091
                           000092   203 _P1_2	=	0x0092
                           000093   204 _P1_3	=	0x0093
                           000094   205 _P1_4	=	0x0094
                           000095   206 _P1_5	=	0x0095
                           000096   207 _P1_6	=	0x0096
                           000097   208 _P1_7	=	0x0097
                           000098   209 _RI	=	0x0098
                           000099   210 _TI	=	0x0099
                           00009A   211 _RB8	=	0x009a
                           00009B   212 _TB8	=	0x009b
                           00009C   213 _REN	=	0x009c
                           00009D   214 _SM2	=	0x009d
                           00009E   215 _SM1	=	0x009e
                           00009F   216 _SM0	=	0x009f
                           0000A0   217 _P2_0	=	0x00a0
                           0000A1   218 _P2_1	=	0x00a1
                           0000A2   219 _P2_2	=	0x00a2
                           0000A3   220 _P2_3	=	0x00a3
                           0000A4   221 _P2_4	=	0x00a4
                           0000A5   222 _P2_5	=	0x00a5
                           0000A6   223 _P2_6	=	0x00a6
                           0000A7   224 _P2_7	=	0x00a7
                           0000A8   225 _EX0	=	0x00a8
                           0000A9   226 _ET0	=	0x00a9
                           0000AA   227 _EX1	=	0x00aa
                           0000AB   228 _ET1	=	0x00ab
                           0000AC   229 _ES	=	0x00ac
                           0000AF   230 _EA	=	0x00af
                           0000B0   231 _P3_0	=	0x00b0
                           0000B1   232 _P3_1	=	0x00b1
                           0000B2   233 _P3_2	=	0x00b2
                           0000B3   234 _P3_3	=	0x00b3
                           0000B4   235 _P3_4	=	0x00b4
                           0000B5   236 _P3_5	=	0x00b5
                           0000B6   237 _P3_6	=	0x00b6
                           0000B7   238 _P3_7	=	0x00b7
                           0000B0   239 _RXD	=	0x00b0
                           0000B1   240 _TXD	=	0x00b1
                           0000B2   241 _INT0	=	0x00b2
                           0000B3   242 _INT1	=	0x00b3
                           0000B4   243 _T0	=	0x00b4
                           0000B5   244 _T1	=	0x00b5
                           0000B6   245 _WR	=	0x00b6
                           0000B7   246 _RD	=	0x00b7
                           0000B8   247 _PX0	=	0x00b8
                           0000B9   248 _PT0	=	0x00b9
                           0000BA   249 _PX1	=	0x00ba
                           0000BB   250 _PT1	=	0x00bb
                           0000BC   251 _PS	=	0x00bc
                           0000D0   252 _P	=	0x00d0
                           0000D1   253 _F1	=	0x00d1
                           0000D2   254 _OV	=	0x00d2
                           0000D3   255 _RS0	=	0x00d3
                           0000D4   256 _RS1	=	0x00d4
                           0000D5   257 _F0	=	0x00d5
                           0000D6   258 _AC	=	0x00d6
                           0000D7   259 _CY	=	0x00d7
                                    260 ;--------------------------------------------------------
                                    261 ; overlayable register banks
                                    262 ;--------------------------------------------------------
                                    263 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        264 	.ds 8
                                    265 ;--------------------------------------------------------
                                    266 ; internal ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area DSEG    (DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable items in internal ram 
                                    271 ;--------------------------------------------------------
                                    272 	.area	OSEG    (OVR,DATA)
      00000C                        273 _strcmp_sloc0_1_0:
      00000C                        274 	.ds 1
      00000D                        275 _strcmp_sloc1_1_0:
      00000D                        276 	.ds 1
      00000E                        277 _strcmp_sloc2_1_0:
      00000E                        278 	.ds 3
                                    279 	.area	OSEG    (OVR,DATA)
      00000C                        280 _extractAndAssign_sloc0_1_0:
      00000C                        281 	.ds 3
                                    282 ;--------------------------------------------------------
                                    283 ; Stack segment in internal ram 
                                    284 ;--------------------------------------------------------
                                    285 	.area	SSEG
      000011                        286 __start__stack:
      000011                        287 	.ds	1
                                    288 
                                    289 ;--------------------------------------------------------
                                    290 ; indirectly addressable internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area ISEG    (DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; absolute internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area IABS    (ABS,DATA)
                                    297 	.area IABS    (ABS,DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; bit data
                                    300 ;--------------------------------------------------------
                                    301 	.area BSEG    (BIT)
                                    302 ;--------------------------------------------------------
                                    303 ; paged external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area PSEG    (PAG,XDATA)
      000001                        306 _gateway::
      000001                        307 	.ds 4
      000005                        308 _subnet::
      000005                        309 	.ds 4
      000009                        310 _ip::
      000009                        311 	.ds 4
      00000D                        312 _mac::
      00000D                        313 	.ds 6
      000013                        314 _dest_ip::
      000013                        315 	.ds 4
      000017                        316 _RTU_Address::
      000017                        317 	.ds 1
      000018                        318 _serialInput::
      000018                        319 	.ds 3
      00001B                        320 _strcmp_PARM_2:
      00001B                        321 	.ds 3
      00001E                        322 _parseMAC_str_65536_57:
      00001E                        323 	.ds 3
      000021                        324 _extractAndAssign_arr_65536_62:
      000021                        325 	.ds 3
      000024                        326 _extractAndAssign_curr_address_65536_63:
      000024                        327 	.ds 3
      000027                        328 _extractAndAssign_octet_65536_63:
      000027                        329 	.ds 1
      000028                        330 _extractAndAssign_value_65536_63:
      000028                        331 	.ds 1
      000029                        332 _loop_recieved_udp_65536_83:
      000029                        333 	.ds 1
      00002A                        334 _loop_recieved_tcp_65536_83:
      00002A                        335 	.ds 1
      00002B                        336 _loop_input_buffer_65536_83:
      00002B                        337 	.ds 20
      00003F                        338 _loop_arrbuf_65536_83:
      00003F                        339 	.ds 20
      000053                        340 _loop_serial_buffer_65536_83:
      000053                        341 	.ds 20
      000067                        342 _loop_serial_index_65536_83:
      000067                        343 	.ds 1
      000068                        344 _loop_inputLength_131073_85:
      000068                        345 	.ds 1
      000069                        346 _loop_fail_262145_107:
      000069                        347 	.ds 14
                                    348 ;--------------------------------------------------------
                                    349 ; external ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area XSEG    (XDATA)
                                    352 ;--------------------------------------------------------
                                    353 ; absolute external ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XABS    (ABS,XDATA)
                                    356 ;--------------------------------------------------------
                                    357 ; external initialized ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area XISEG   (XDATA)
                                    360 	.area HOME    (CODE)
                                    361 	.area GSINIT0 (CODE)
                                    362 	.area GSINIT1 (CODE)
                                    363 	.area GSINIT2 (CODE)
                                    364 	.area GSINIT3 (CODE)
                                    365 	.area GSINIT4 (CODE)
                                    366 	.area GSINIT5 (CODE)
                                    367 	.area GSINIT  (CODE)
                                    368 	.area GSFINAL (CODE)
                                    369 	.area CSEG    (CODE)
                                    370 ;--------------------------------------------------------
                                    371 ; interrupt vector 
                                    372 ;--------------------------------------------------------
                                    373 	.area HOME    (CODE)
      000000                        374 __interrupt_vect:
      000000 02 00 29         [24]  375 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  376 	reti
      000004                        377 	.ds	7
      00000B 32               [24]  378 	reti
      00000C                        379 	.ds	7
      000013 32               [24]  380 	reti
      000014                        381 	.ds	7
      00001B 32               [24]  382 	reti
      00001C                        383 	.ds	7
      000023 02 0D 67         [24]  384 	ljmp	__serial_interrupt
                                    385 ;--------------------------------------------------------
                                    386 ; global & static initialisations
                                    387 ;--------------------------------------------------------
                                    388 	.area HOME    (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.area GSFINAL (CODE)
                                    391 	.area GSINIT  (CODE)
                                    392 	.globl __sdcc_gsinit_startup
                                    393 	.globl __sdcc_program_startup
                                    394 	.globl __start__stack
                                    395 	.globl __mcs51_genXINIT
                                    396 	.globl __mcs51_genXRAMCLEAR
                                    397 	.globl __mcs51_genRAMCLEAR
                                    398 ;	main.c:8: unsigned char gateway[4] = {192, 168, 16, 1};
      000082 78 01            [12]  399 	mov	r0,#_gateway
      000084 74 C0            [12]  400 	mov	a,#0xc0
      000086 F2               [24]  401 	movx	@r0,a
      000087 78 02            [12]  402 	mov	r0,#(_gateway + 0x0001)
      000089 74 A8            [12]  403 	mov	a,#0xa8
      00008B F2               [24]  404 	movx	@r0,a
      00008C 78 03            [12]  405 	mov	r0,#(_gateway + 0x0002)
      00008E 74 10            [12]  406 	mov	a,#0x10
      000090 F2               [24]  407 	movx	@r0,a
      000091 78 04            [12]  408 	mov	r0,#(_gateway + 0x0003)
      000093 C4               [12]  409 	swap	a
      000094 F2               [24]  410 	movx	@r0,a
                                    411 ;	main.c:9: unsigned char subnet[4] = {255, 255, 255, 0};
      000095 78 05            [12]  412 	mov	r0,#_subnet
      000097 74 FF            [12]  413 	mov	a,#0xff
      000099 F2               [24]  414 	movx	@r0,a
      00009A 78 06            [12]  415 	mov	r0,#(_subnet + 0x0001)
      00009C F2               [24]  416 	movx	@r0,a
      00009D 78 07            [12]  417 	mov	r0,#(_subnet + 0x0002)
      00009F F2               [24]  418 	movx	@r0,a
      0000A0 78 08            [12]  419 	mov	r0,#(_subnet + 0x0003)
      0000A2 E4               [12]  420 	clr	a
      0000A3 F2               [24]  421 	movx	@r0,a
                                    422 ;	main.c:10: unsigned char ip[4] = {192, 168, 16, 69};
      0000A4 78 09            [12]  423 	mov	r0,#_ip
      0000A6 74 C0            [12]  424 	mov	a,#0xc0
      0000A8 F2               [24]  425 	movx	@r0,a
      0000A9 78 0A            [12]  426 	mov	r0,#(_ip + 0x0001)
      0000AB 74 A8            [12]  427 	mov	a,#0xa8
      0000AD F2               [24]  428 	movx	@r0,a
      0000AE 78 0B            [12]  429 	mov	r0,#(_ip + 0x0002)
      0000B0 74 10            [12]  430 	mov	a,#0x10
      0000B2 F2               [24]  431 	movx	@r0,a
      0000B3 78 0C            [12]  432 	mov	r0,#(_ip + 0x0003)
      0000B5 74 45            [12]  433 	mov	a,#0x45
      0000B7 F2               [24]  434 	movx	@r0,a
                                    435 ;	main.c:11: unsigned char mac[6] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
      0000B8 78 0D            [12]  436 	mov	r0,#_mac
      0000BA 74 DE            [12]  437 	mov	a,#0xde
      0000BC F2               [24]  438 	movx	@r0,a
      0000BD 78 0E            [12]  439 	mov	r0,#(_mac + 0x0001)
      0000BF 74 AD            [12]  440 	mov	a,#0xad
      0000C1 F2               [24]  441 	movx	@r0,a
      0000C2 78 0F            [12]  442 	mov	r0,#(_mac + 0x0002)
      0000C4 74 BE            [12]  443 	mov	a,#0xbe
      0000C6 F2               [24]  444 	movx	@r0,a
      0000C7 78 10            [12]  445 	mov	r0,#(_mac + 0x0003)
      0000C9 74 EF            [12]  446 	mov	a,#0xef
      0000CB F2               [24]  447 	movx	@r0,a
      0000CC 78 11            [12]  448 	mov	r0,#(_mac + 0x0004)
      0000CE C4               [12]  449 	swap	a
      0000CF F2               [24]  450 	movx	@r0,a
      0000D0 78 12            [12]  451 	mov	r0,#(_mac + 0x0005)
      0000D2 74 ED            [12]  452 	mov	a,#0xed
      0000D4 F2               [24]  453 	movx	@r0,a
                                    454 ;	main.c:12: unsigned char dest_ip[4] = {192, 168, 16, 151};
      0000D5 78 13            [12]  455 	mov	r0,#_dest_ip
      0000D7 74 C0            [12]  456 	mov	a,#0xc0
      0000D9 F2               [24]  457 	movx	@r0,a
      0000DA 78 14            [12]  458 	mov	r0,#(_dest_ip + 0x0001)
      0000DC 74 A8            [12]  459 	mov	a,#0xa8
      0000DE F2               [24]  460 	movx	@r0,a
      0000DF 78 15            [12]  461 	mov	r0,#(_dest_ip + 0x0002)
      0000E1 74 10            [12]  462 	mov	a,#0x10
      0000E3 F2               [24]  463 	movx	@r0,a
      0000E4 78 16            [12]  464 	mov	r0,#(_dest_ip + 0x0003)
      0000E6 74 97            [12]  465 	mov	a,#0x97
      0000E8 F2               [24]  466 	movx	@r0,a
                                    467 ;	main.c:16: unsigned char RTU_Address = '3';
      0000E9 78 17            [12]  468 	mov	r0,#_RTU_Address
      0000EB 74 33            [12]  469 	mov	a,#0x33
      0000ED F2               [24]  470 	movx	@r0,a
                                    471 	.area GSFINAL (CODE)
      0000F5 02 00 26         [24]  472 	ljmp	__sdcc_program_startup
                                    473 ;--------------------------------------------------------
                                    474 ; Home
                                    475 ;--------------------------------------------------------
                                    476 	.area HOME    (CODE)
                                    477 	.area HOME    (CODE)
      000026                        478 __sdcc_program_startup:
      000026 02 0B BA         [24]  479 	ljmp	_main
                                    480 ;	return from main will return to caller
                                    481 ;--------------------------------------------------------
                                    482 ; code
                                    483 ;--------------------------------------------------------
                                    484 	.area CSEG    (CODE)
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'strlen'
                                    487 ;------------------------------------------------------------
                                    488 ;	main.c:27: unsigned char strlen(const unsigned char* str) {
                                    489 ;	-----------------------------------------
                                    490 ;	 function strlen
                                    491 ;	-----------------------------------------
      0000F8                        492 _strlen:
                           000007   493 	ar7 = 0x07
                           000006   494 	ar6 = 0x06
                           000005   495 	ar5 = 0x05
                           000004   496 	ar4 = 0x04
                           000003   497 	ar3 = 0x03
                           000002   498 	ar2 = 0x02
                           000001   499 	ar1 = 0x01
                           000000   500 	ar0 = 0x00
      0000F8 AD 82            [24]  501 	mov	r5,dpl
      0000FA AE 83            [24]  502 	mov	r6,dph
      0000FC AF F0            [24]  503 	mov	r7,b
                                    504 ;	main.c:29: while (*(str++)) ++ret;
      0000FE 7C 00            [12]  505 	mov	r4,#0x00
      000100                        506 00101$:
      000100 8D 82            [24]  507 	mov	dpl,r5
      000102 8E 83            [24]  508 	mov	dph,r6
      000104 8F F0            [24]  509 	mov	b,r7
      000106 12 15 99         [24]  510 	lcall	__gptrget
      000109 FB               [12]  511 	mov	r3,a
      00010A A3               [24]  512 	inc	dptr
      00010B AD 82            [24]  513 	mov	r5,dpl
      00010D AE 83            [24]  514 	mov	r6,dph
      00010F EB               [12]  515 	mov	a,r3
      000110 60 03            [24]  516 	jz	00103$
      000112 0C               [12]  517 	inc	r4
      000113 80 EB            [24]  518 	sjmp	00101$
      000115                        519 00103$:
                                    520 ;	main.c:30: return ret;
      000115 8C 82            [24]  521 	mov	dpl,r4
                                    522 ;	main.c:31: }
      000117 22               [24]  523 	ret
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'strcmp'
                                    526 ;------------------------------------------------------------
                                    527 ;sloc0                     Allocated with name '_strcmp_sloc0_1_0'
                                    528 ;sloc1                     Allocated with name '_strcmp_sloc1_1_0'
                                    529 ;sloc2                     Allocated with name '_strcmp_sloc2_1_0'
                                    530 ;------------------------------------------------------------
                                    531 ;	main.c:33: unsigned char strcmp(unsigned char* first, unsigned char* second) {
                                    532 ;	-----------------------------------------
                                    533 ;	 function strcmp
                                    534 ;	-----------------------------------------
      000118                        535 _strcmp:
      000118 AD 82            [24]  536 	mov	r5,dpl
      00011A AE 83            [24]  537 	mov	r6,dph
      00011C AF F0            [24]  538 	mov	r7,b
                                    539 ;	main.c:34: while (*first && *second) if (*(first++) != *(second++)) return 0;
      00011E 78 1B            [12]  540 	mov	r0,#_strcmp_PARM_2
      000120 E2               [24]  541 	movx	a,@r0
      000121 F5 0E            [12]  542 	mov	_strcmp_sloc2_1_0,a
      000123 08               [12]  543 	inc	r0
      000124 E2               [24]  544 	movx	a,@r0
      000125 F5 0F            [12]  545 	mov	(_strcmp_sloc2_1_0 + 1),a
      000127 08               [12]  546 	inc	r0
      000128 E2               [24]  547 	movx	a,@r0
      000129 F5 10            [12]  548 	mov	(_strcmp_sloc2_1_0 + 2),a
      00012B                        549 00104$:
      00012B 8D 82            [24]  550 	mov	dpl,r5
      00012D 8E 83            [24]  551 	mov	dph,r6
      00012F 8F F0            [24]  552 	mov	b,r7
      000131 12 15 99         [24]  553 	lcall	__gptrget
      000134 F5 0C            [12]  554 	mov	_strcmp_sloc0_1_0,a
      000136 60 2B            [24]  555 	jz	00106$
      000138 85 0E 82         [24]  556 	mov	dpl,_strcmp_sloc2_1_0
      00013B 85 0F 83         [24]  557 	mov	dph,(_strcmp_sloc2_1_0 + 1)
      00013E 85 10 F0         [24]  558 	mov	b,(_strcmp_sloc2_1_0 + 2)
      000141 12 15 99         [24]  559 	lcall	__gptrget
      000144 F5 0D            [12]  560 	mov	_strcmp_sloc1_1_0,a
      000146 60 1B            [24]  561 	jz	00106$
      000148 AC 0C            [24]  562 	mov	r4,_strcmp_sloc0_1_0
      00014A 0D               [12]  563 	inc	r5
      00014B BD 00 01         [24]  564 	cjne	r5,#0x00,00127$
      00014E 0E               [12]  565 	inc	r6
      00014F                        566 00127$:
      00014F AB 0D            [24]  567 	mov	r3,_strcmp_sloc1_1_0
      000151 05 0E            [12]  568 	inc	_strcmp_sloc2_1_0
      000153 E4               [12]  569 	clr	a
      000154 B5 0E 02         [24]  570 	cjne	a,_strcmp_sloc2_1_0,00128$
      000157 05 0F            [12]  571 	inc	(_strcmp_sloc2_1_0 + 1)
      000159                        572 00128$:
      000159 EC               [12]  573 	mov	a,r4
      00015A B5 03 02         [24]  574 	cjne	a,ar3,00129$
      00015D 80 CC            [24]  575 	sjmp	00104$
      00015F                        576 00129$:
      00015F 75 82 00         [24]  577 	mov	dpl,#0x00
      000162 22               [24]  578 	ret
      000163                        579 00106$:
                                    580 ;	main.c:35: return 1;
      000163 75 82 01         [24]  581 	mov	dpl,#0x01
                                    582 ;	main.c:36: }
      000166 22               [24]  583 	ret
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'hexCharToInt'
                                    586 ;------------------------------------------------------------
                                    587 ;	main.c:38: unsigned char hexCharToInt(char c) {
                                    588 ;	-----------------------------------------
                                    589 ;	 function hexCharToInt
                                    590 ;	-----------------------------------------
      000167                        591 _hexCharToInt:
                                    592 ;	main.c:39: return c <= '9' ? c - '0' : c <= 'F' ? c - 'A' + 10 : c - 'a' + 10;
      000167 E5 82            [12]  593 	mov	a,dpl
      000169 FF               [12]  594 	mov	r7,a
      00016A 24 C6            [12]  595 	add	a,#0xff - 0x39
      00016C 40 08            [24]  596 	jc	00103$
      00016E 8F 06            [24]  597 	mov	ar6,r7
      000170 EE               [12]  598 	mov	a,r6
      000171 24 D0            [12]  599 	add	a,#0xd0
      000173 FE               [12]  600 	mov	r6,a
      000174 80 13            [24]  601 	sjmp	00104$
      000176                        602 00103$:
      000176 EF               [12]  603 	mov	a,r7
      000177 24 B9            [12]  604 	add	a,#0xff - 0x46
      000179 40 08            [24]  605 	jc	00105$
      00017B 8F 05            [24]  606 	mov	ar5,r7
      00017D 74 C9            [12]  607 	mov	a,#0xc9
      00017F 2D               [12]  608 	add	a,r5
      000180 FD               [12]  609 	mov	r5,a
      000181 80 04            [24]  610 	sjmp	00106$
      000183                        611 00105$:
      000183 74 A9            [12]  612 	mov	a,#0xa9
      000185 2F               [12]  613 	add	a,r7
      000186 FD               [12]  614 	mov	r5,a
      000187                        615 00106$:
      000187 8D 06            [24]  616 	mov	ar6,r5
      000189                        617 00104$:
      000189 8E 82            [24]  618 	mov	dpl,r6
                                    619 ;	main.c:40: }
      00018B 22               [24]  620 	ret
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'parseMAC'
                                    623 ;------------------------------------------------------------
                                    624 ;	main.c:42: void parseMAC(const char* str) {
                                    625 ;	-----------------------------------------
                                    626 ;	 function parseMAC
                                    627 ;	-----------------------------------------
      00018C                        628 _parseMAC:
      00018C AF F0            [24]  629 	mov	r7,b
      00018E AE 83            [24]  630 	mov	r6,dph
      000190 E5 82            [12]  631 	mov	a,dpl
      000192 78 1E            [12]  632 	mov	r0,#_parseMAC_str_65536_57
      000194 F2               [24]  633 	movx	@r0,a
      000195 08               [12]  634 	inc	r0
      000196 EE               [12]  635 	mov	a,r6
      000197 F2               [24]  636 	movx	@r0,a
      000198 08               [12]  637 	inc	r0
      000199 EF               [12]  638 	mov	a,r7
      00019A F2               [24]  639 	movx	@r0,a
                                    640 ;	main.c:43: if(str[0] == 'M' && str[1] == 'A' && str[2] == 'C' && str[3] == '=') {
      00019B 78 1E            [12]  641 	mov	r0,#_parseMAC_str_65536_57
      00019D E2               [24]  642 	movx	a,@r0
      00019E F5 82            [12]  643 	mov	dpl,a
      0001A0 08               [12]  644 	inc	r0
      0001A1 E2               [24]  645 	movx	a,@r0
      0001A2 F5 83            [12]  646 	mov	dph,a
      0001A4 08               [12]  647 	inc	r0
      0001A5 E2               [24]  648 	movx	a,@r0
      0001A6 F5 F0            [12]  649 	mov	b,a
      0001A8 12 15 99         [24]  650 	lcall	__gptrget
      0001AB FC               [12]  651 	mov	r4,a
      0001AC BC 4D 02         [24]  652 	cjne	r4,#0x4d,00137$
      0001AF 80 01            [24]  653 	sjmp	00138$
      0001B1                        654 00137$:
      0001B1 22               [24]  655 	ret
      0001B2                        656 00138$:
      0001B2 78 1E            [12]  657 	mov	r0,#_parseMAC_str_65536_57
      0001B4 E2               [24]  658 	movx	a,@r0
      0001B5 24 01            [12]  659 	add	a,#0x01
      0001B7 FA               [12]  660 	mov	r2,a
      0001B8 08               [12]  661 	inc	r0
      0001B9 E2               [24]  662 	movx	a,@r0
      0001BA 34 00            [12]  663 	addc	a,#0x00
      0001BC FB               [12]  664 	mov	r3,a
      0001BD 08               [12]  665 	inc	r0
      0001BE E2               [24]  666 	movx	a,@r0
      0001BF FC               [12]  667 	mov	r4,a
      0001C0 8A 82            [24]  668 	mov	dpl,r2
      0001C2 8B 83            [24]  669 	mov	dph,r3
      0001C4 8C F0            [24]  670 	mov	b,r4
      0001C6 12 15 99         [24]  671 	lcall	__gptrget
      0001C9 FA               [12]  672 	mov	r2,a
      0001CA BA 41 02         [24]  673 	cjne	r2,#0x41,00139$
      0001CD 80 01            [24]  674 	sjmp	00140$
      0001CF                        675 00139$:
      0001CF 22               [24]  676 	ret
      0001D0                        677 00140$:
      0001D0 78 1E            [12]  678 	mov	r0,#_parseMAC_str_65536_57
      0001D2 E2               [24]  679 	movx	a,@r0
      0001D3 24 02            [12]  680 	add	a,#0x02
      0001D5 FA               [12]  681 	mov	r2,a
      0001D6 08               [12]  682 	inc	r0
      0001D7 E2               [24]  683 	movx	a,@r0
      0001D8 34 00            [12]  684 	addc	a,#0x00
      0001DA FB               [12]  685 	mov	r3,a
      0001DB 08               [12]  686 	inc	r0
      0001DC E2               [24]  687 	movx	a,@r0
      0001DD FC               [12]  688 	mov	r4,a
      0001DE 8A 82            [24]  689 	mov	dpl,r2
      0001E0 8B 83            [24]  690 	mov	dph,r3
      0001E2 8C F0            [24]  691 	mov	b,r4
      0001E4 12 15 99         [24]  692 	lcall	__gptrget
      0001E7 FA               [12]  693 	mov	r2,a
      0001E8 BA 43 02         [24]  694 	cjne	r2,#0x43,00141$
      0001EB 80 01            [24]  695 	sjmp	00142$
      0001ED                        696 00141$:
      0001ED 22               [24]  697 	ret
      0001EE                        698 00142$:
      0001EE 78 1E            [12]  699 	mov	r0,#_parseMAC_str_65536_57
      0001F0 E2               [24]  700 	movx	a,@r0
      0001F1 24 03            [12]  701 	add	a,#0x03
      0001F3 FA               [12]  702 	mov	r2,a
      0001F4 08               [12]  703 	inc	r0
      0001F5 E2               [24]  704 	movx	a,@r0
      0001F6 34 00            [12]  705 	addc	a,#0x00
      0001F8 FB               [12]  706 	mov	r3,a
      0001F9 08               [12]  707 	inc	r0
      0001FA E2               [24]  708 	movx	a,@r0
      0001FB FC               [12]  709 	mov	r4,a
      0001FC 8A 82            [24]  710 	mov	dpl,r2
      0001FE 8B 83            [24]  711 	mov	dph,r3
      000200 8C F0            [24]  712 	mov	b,r4
      000202 12 15 99         [24]  713 	lcall	__gptrget
      000205 FA               [12]  714 	mov	r2,a
      000206 BA 3D 02         [24]  715 	cjne	r2,#0x3d,00143$
      000209 80 01            [24]  716 	sjmp	00144$
      00020B                        717 00143$:
      00020B 22               [24]  718 	ret
      00020C                        719 00144$:
                                    720 ;	main.c:44: for(unsigned char i = 0; i < 6; i++) {
      00020C 7D 00            [12]  721 	mov	r5,#0x00
      00020E                        722 00108$:
      00020E BD 06 00         [24]  723 	cjne	r5,#0x06,00145$
      000211                        724 00145$:
      000211 40 01            [24]  725 	jc	00146$
      000213 22               [24]  726 	ret
      000214                        727 00146$:
                                    728 ;	main.c:45: mac[i] = (hexCharToInt(str[4 + i*2]) << 4) + hexCharToInt(str[5 + i*2]);
      000214 ED               [12]  729 	mov	a,r5
      000215 24 0D            [12]  730 	add	a,#_mac
      000217 F9               [12]  731 	mov	r1,a
      000218 8D 02            [24]  732 	mov	ar2,r5
      00021A 7B 00            [12]  733 	mov	r3,#0x00
      00021C EA               [12]  734 	mov	a,r2
      00021D 2A               [12]  735 	add	a,r2
      00021E FA               [12]  736 	mov	r2,a
      00021F EB               [12]  737 	mov	a,r3
      000220 33               [12]  738 	rlc	a
      000221 FB               [12]  739 	mov	r3,a
      000222 74 04            [12]  740 	mov	a,#0x04
      000224 2A               [12]  741 	add	a,r2
      000225 FC               [12]  742 	mov	r4,a
      000226 E4               [12]  743 	clr	a
      000227 3B               [12]  744 	addc	a,r3
      000228 FF               [12]  745 	mov	r7,a
      000229 78 1E            [12]  746 	mov	r0,#_parseMAC_str_65536_57
      00022B E2               [24]  747 	movx	a,@r0
      00022C 2C               [12]  748 	add	a,r4
      00022D FC               [12]  749 	mov	r4,a
      00022E 08               [12]  750 	inc	r0
      00022F E2               [24]  751 	movx	a,@r0
      000230 3F               [12]  752 	addc	a,r7
      000231 FF               [12]  753 	mov	r7,a
      000232 08               [12]  754 	inc	r0
      000233 E2               [24]  755 	movx	a,@r0
      000234 FE               [12]  756 	mov	r6,a
      000235 8C 82            [24]  757 	mov	dpl,r4
      000237 8F 83            [24]  758 	mov	dph,r7
      000239 8E F0            [24]  759 	mov	b,r6
      00023B 12 15 99         [24]  760 	lcall	__gptrget
      00023E F5 82            [12]  761 	mov	dpl,a
      000240 C0 05            [24]  762 	push	ar5
      000242 C0 03            [24]  763 	push	ar3
      000244 C0 02            [24]  764 	push	ar2
      000246 C0 01            [24]  765 	push	ar1
      000248 12 01 67         [24]  766 	lcall	_hexCharToInt
      00024B AF 82            [24]  767 	mov	r7,dpl
      00024D D0 01            [24]  768 	pop	ar1
      00024F D0 02            [24]  769 	pop	ar2
      000251 D0 03            [24]  770 	pop	ar3
      000253 D0 05            [24]  771 	pop	ar5
      000255 EF               [12]  772 	mov	a,r7
      000256 C4               [12]  773 	swap	a
      000257 54 F0            [12]  774 	anl	a,#0xf0
      000259 FF               [12]  775 	mov	r7,a
      00025A 74 05            [12]  776 	mov	a,#0x05
      00025C 2A               [12]  777 	add	a,r2
      00025D FA               [12]  778 	mov	r2,a
      00025E E4               [12]  779 	clr	a
      00025F 3B               [12]  780 	addc	a,r3
      000260 FB               [12]  781 	mov	r3,a
      000261 78 1E            [12]  782 	mov	r0,#_parseMAC_str_65536_57
      000263 E2               [24]  783 	movx	a,@r0
      000264 2A               [12]  784 	add	a,r2
      000265 FA               [12]  785 	mov	r2,a
      000266 08               [12]  786 	inc	r0
      000267 E2               [24]  787 	movx	a,@r0
      000268 3B               [12]  788 	addc	a,r3
      000269 FB               [12]  789 	mov	r3,a
      00026A 08               [12]  790 	inc	r0
      00026B E2               [24]  791 	movx	a,@r0
      00026C FE               [12]  792 	mov	r6,a
      00026D 8A 82            [24]  793 	mov	dpl,r2
      00026F 8B 83            [24]  794 	mov	dph,r3
      000271 8E F0            [24]  795 	mov	b,r6
      000273 12 15 99         [24]  796 	lcall	__gptrget
      000276 F5 82            [12]  797 	mov	dpl,a
      000278 C0 07            [24]  798 	push	ar7
      00027A C0 05            [24]  799 	push	ar5
      00027C C0 01            [24]  800 	push	ar1
      00027E 12 01 67         [24]  801 	lcall	_hexCharToInt
      000281 AE 82            [24]  802 	mov	r6,dpl
      000283 D0 01            [24]  803 	pop	ar1
      000285 D0 05            [24]  804 	pop	ar5
      000287 D0 07            [24]  805 	pop	ar7
      000289 EE               [12]  806 	mov	a,r6
      00028A 2F               [12]  807 	add	a,r7
      00028B F3               [24]  808 	movx	@r1,a
                                    809 ;	main.c:44: for(unsigned char i = 0; i < 6; i++) {
      00028C 0D               [12]  810 	inc	r5
                                    811 ;	main.c:48: }
      00028D 02 02 0E         [24]  812 	ljmp	00108$
                                    813 ;------------------------------------------------------------
                                    814 ;Allocation info for local variables in function 'extractAndAssign'
                                    815 ;------------------------------------------------------------
                                    816 ;sloc0                     Allocated with name '_extractAndAssign_sloc0_1_0'
                                    817 ;------------------------------------------------------------
                                    818 ;	main.c:50: void extractAndAssign(char *arr)
                                    819 ;	-----------------------------------------
                                    820 ;	 function extractAndAssign
                                    821 ;	-----------------------------------------
      000290                        822 _extractAndAssign:
      000290 AD 82            [24]  823 	mov	r5,dpl
      000292 AE 83            [24]  824 	mov	r6,dph
      000294 AF F0            [24]  825 	mov	r7,b
                                    826 ;	main.c:52: unsigned char *curr_address = NULL;
      000296 78 24            [12]  827 	mov	r0,#_extractAndAssign_curr_address_65536_63
      000298 E4               [12]  828 	clr	a
      000299 F2               [24]  829 	movx	@r0,a
      00029A 08               [12]  830 	inc	r0
      00029B F2               [24]  831 	movx	@r0,a
      00029C 08               [12]  832 	inc	r0
      00029D F2               [24]  833 	movx	@r0,a
                                    834 ;	main.c:53: unsigned char octet = 0;
      00029E 78 27            [12]  835 	mov	r0,#_extractAndAssign_octet_65536_63
      0002A0 F2               [24]  836 	movx	@r0,a
                                    837 ;	main.c:56: while (*arr)
      0002A1                        838 00128$:
      0002A1 8D 82            [24]  839 	mov	dpl,r5
      0002A3 8E 83            [24]  840 	mov	dph,r6
      0002A5 8F F0            [24]  841 	mov	b,r7
      0002A7 12 15 99         [24]  842 	lcall	__gptrget
      0002AA FB               [12]  843 	mov	r3,a
      0002AB 70 01            [24]  844 	jnz	00234$
      0002AD 22               [24]  845 	ret
      0002AE                        846 00234$:
                                    847 ;	main.c:58: if (arr[0] == 'I' && arr[1] == 'P' && arr[2] == '=')
      0002AE BB 49 42         [24]  848 	cjne	r3,#0x49,00114$
      0002B1 74 01            [12]  849 	mov	a,#0x01
      0002B3 2D               [12]  850 	add	a,r5
      0002B4 FA               [12]  851 	mov	r2,a
      0002B5 E4               [12]  852 	clr	a
      0002B6 3E               [12]  853 	addc	a,r6
      0002B7 FB               [12]  854 	mov	r3,a
      0002B8 8F 04            [24]  855 	mov	ar4,r7
      0002BA 8A 82            [24]  856 	mov	dpl,r2
      0002BC 8B 83            [24]  857 	mov	dph,r3
      0002BE 8C F0            [24]  858 	mov	b,r4
      0002C0 12 15 99         [24]  859 	lcall	__gptrget
      0002C3 FA               [12]  860 	mov	r2,a
      0002C4 BA 50 2C         [24]  861 	cjne	r2,#0x50,00114$
      0002C7 74 02            [12]  862 	mov	a,#0x02
      0002C9 2D               [12]  863 	add	a,r5
      0002CA FA               [12]  864 	mov	r2,a
      0002CB E4               [12]  865 	clr	a
      0002CC 3E               [12]  866 	addc	a,r6
      0002CD FB               [12]  867 	mov	r3,a
      0002CE 8F 04            [24]  868 	mov	ar4,r7
      0002D0 8A 82            [24]  869 	mov	dpl,r2
      0002D2 8B 83            [24]  870 	mov	dph,r3
      0002D4 8C F0            [24]  871 	mov	b,r4
      0002D6 12 15 99         [24]  872 	lcall	__gptrget
      0002D9 FA               [12]  873 	mov	r2,a
      0002DA BA 3D 16         [24]  874 	cjne	r2,#0x3d,00114$
                                    875 ;	main.c:60: curr_address = ip;
      0002DD 78 24            [12]  876 	mov	r0,#_extractAndAssign_curr_address_65536_63
      0002DF 74 09            [12]  877 	mov	a,#_ip
      0002E1 F2               [24]  878 	movx	@r0,a
      0002E2 08               [12]  879 	inc	r0
      0002E3 E4               [12]  880 	clr	a
      0002E4 F2               [24]  881 	movx	@r0,a
      0002E5 08               [12]  882 	inc	r0
      0002E6 74 60            [12]  883 	mov	a,#0x60
      0002E8 F2               [24]  884 	movx	@r0,a
                                    885 ;	main.c:61: arr += 3;
      0002E9 74 03            [12]  886 	mov	a,#0x03
      0002EB 2D               [12]  887 	add	a,r5
      0002EC FD               [12]  888 	mov	r5,a
      0002ED E4               [12]  889 	clr	a
      0002EE 3E               [12]  890 	addc	a,r6
      0002EF FE               [12]  891 	mov	r6,a
      0002F0 02 03 D5         [24]  892 	ljmp	00115$
      0002F3                        893 00114$:
                                    894 ;	main.c:63: else if (arr[0] == 'S' && arr[1] == 'U' && arr[2] == 'B' && arr[3] == '=')
      0002F3 8D 82            [24]  895 	mov	dpl,r5
      0002F5 8E 83            [24]  896 	mov	dph,r6
      0002F7 8F F0            [24]  897 	mov	b,r7
      0002F9 12 15 99         [24]  898 	lcall	__gptrget
      0002FC FB               [12]  899 	mov	r3,a
      0002FD BB 53 58         [24]  900 	cjne	r3,#0x53,00108$
      000300 74 01            [12]  901 	mov	a,#0x01
      000302 2D               [12]  902 	add	a,r5
      000303 FA               [12]  903 	mov	r2,a
      000304 E4               [12]  904 	clr	a
      000305 3E               [12]  905 	addc	a,r6
      000306 FB               [12]  906 	mov	r3,a
      000307 8F 04            [24]  907 	mov	ar4,r7
      000309 8A 82            [24]  908 	mov	dpl,r2
      00030B 8B 83            [24]  909 	mov	dph,r3
      00030D 8C F0            [24]  910 	mov	b,r4
      00030F 12 15 99         [24]  911 	lcall	__gptrget
      000312 FA               [12]  912 	mov	r2,a
      000313 BA 55 42         [24]  913 	cjne	r2,#0x55,00108$
      000316 74 02            [12]  914 	mov	a,#0x02
      000318 2D               [12]  915 	add	a,r5
      000319 FA               [12]  916 	mov	r2,a
      00031A E4               [12]  917 	clr	a
      00031B 3E               [12]  918 	addc	a,r6
      00031C FB               [12]  919 	mov	r3,a
      00031D 8F 04            [24]  920 	mov	ar4,r7
      00031F 8A 82            [24]  921 	mov	dpl,r2
      000321 8B 83            [24]  922 	mov	dph,r3
      000323 8C F0            [24]  923 	mov	b,r4
      000325 12 15 99         [24]  924 	lcall	__gptrget
      000328 FA               [12]  925 	mov	r2,a
      000329 BA 42 2C         [24]  926 	cjne	r2,#0x42,00108$
      00032C 74 03            [12]  927 	mov	a,#0x03
      00032E 2D               [12]  928 	add	a,r5
      00032F FA               [12]  929 	mov	r2,a
      000330 E4               [12]  930 	clr	a
      000331 3E               [12]  931 	addc	a,r6
      000332 FB               [12]  932 	mov	r3,a
      000333 8F 04            [24]  933 	mov	ar4,r7
      000335 8A 82            [24]  934 	mov	dpl,r2
      000337 8B 83            [24]  935 	mov	dph,r3
      000339 8C F0            [24]  936 	mov	b,r4
      00033B 12 15 99         [24]  937 	lcall	__gptrget
      00033E FA               [12]  938 	mov	r2,a
      00033F BA 3D 16         [24]  939 	cjne	r2,#0x3d,00108$
                                    940 ;	main.c:65: curr_address = subnet;
      000342 78 24            [12]  941 	mov	r0,#_extractAndAssign_curr_address_65536_63
      000344 74 05            [12]  942 	mov	a,#_subnet
      000346 F2               [24]  943 	movx	@r0,a
      000347 08               [12]  944 	inc	r0
      000348 E4               [12]  945 	clr	a
      000349 F2               [24]  946 	movx	@r0,a
      00034A 08               [12]  947 	inc	r0
      00034B 74 60            [12]  948 	mov	a,#0x60
      00034D F2               [24]  949 	movx	@r0,a
                                    950 ;	main.c:66: arr += 4;
      00034E 74 04            [12]  951 	mov	a,#0x04
      000350 2D               [12]  952 	add	a,r5
      000351 FD               [12]  953 	mov	r5,a
      000352 E4               [12]  954 	clr	a
      000353 3E               [12]  955 	addc	a,r6
      000354 FE               [12]  956 	mov	r6,a
      000355 02 03 D5         [24]  957 	ljmp	00115$
      000358                        958 00108$:
                                    959 ;	main.c:68: else if (arr[0] == 'G' && arr[1] == 'A' && arr[2] == 'T' && arr[3] == 'E' && arr[4] == '=')
      000358 8D 82            [24]  960 	mov	dpl,r5
      00035A 8E 83            [24]  961 	mov	dph,r6
      00035C 8F F0            [24]  962 	mov	b,r7
      00035E 12 15 99         [24]  963 	lcall	__gptrget
      000361 FB               [12]  964 	mov	r3,a
      000362 BB 47 02         [24]  965 	cjne	r3,#0x47,00249$
      000365 80 03            [24]  966 	sjmp	00250$
      000367                        967 00249$:
      000367 02 03 D5         [24]  968 	ljmp	00115$
      00036A                        969 00250$:
      00036A 74 01            [12]  970 	mov	a,#0x01
      00036C 2D               [12]  971 	add	a,r5
      00036D FA               [12]  972 	mov	r2,a
      00036E E4               [12]  973 	clr	a
      00036F 3E               [12]  974 	addc	a,r6
      000370 FB               [12]  975 	mov	r3,a
      000371 8F 04            [24]  976 	mov	ar4,r7
      000373 8A 82            [24]  977 	mov	dpl,r2
      000375 8B 83            [24]  978 	mov	dph,r3
      000377 8C F0            [24]  979 	mov	b,r4
      000379 12 15 99         [24]  980 	lcall	__gptrget
      00037C FA               [12]  981 	mov	r2,a
      00037D BA 41 55         [24]  982 	cjne	r2,#0x41,00115$
      000380 74 02            [12]  983 	mov	a,#0x02
      000382 2D               [12]  984 	add	a,r5
      000383 FA               [12]  985 	mov	r2,a
      000384 E4               [12]  986 	clr	a
      000385 3E               [12]  987 	addc	a,r6
      000386 FB               [12]  988 	mov	r3,a
      000387 8F 04            [24]  989 	mov	ar4,r7
      000389 8A 82            [24]  990 	mov	dpl,r2
      00038B 8B 83            [24]  991 	mov	dph,r3
      00038D 8C F0            [24]  992 	mov	b,r4
      00038F 12 15 99         [24]  993 	lcall	__gptrget
      000392 FA               [12]  994 	mov	r2,a
      000393 BA 54 3F         [24]  995 	cjne	r2,#0x54,00115$
      000396 74 03            [12]  996 	mov	a,#0x03
      000398 2D               [12]  997 	add	a,r5
      000399 FA               [12]  998 	mov	r2,a
      00039A E4               [12]  999 	clr	a
      00039B 3E               [12] 1000 	addc	a,r6
      00039C FB               [12] 1001 	mov	r3,a
      00039D 8F 04            [24] 1002 	mov	ar4,r7
      00039F 8A 82            [24] 1003 	mov	dpl,r2
      0003A1 8B 83            [24] 1004 	mov	dph,r3
      0003A3 8C F0            [24] 1005 	mov	b,r4
      0003A5 12 15 99         [24] 1006 	lcall	__gptrget
      0003A8 FA               [12] 1007 	mov	r2,a
      0003A9 BA 45 29         [24] 1008 	cjne	r2,#0x45,00115$
      0003AC 74 04            [12] 1009 	mov	a,#0x04
      0003AE 2D               [12] 1010 	add	a,r5
      0003AF FA               [12] 1011 	mov	r2,a
      0003B0 E4               [12] 1012 	clr	a
      0003B1 3E               [12] 1013 	addc	a,r6
      0003B2 FB               [12] 1014 	mov	r3,a
      0003B3 8F 04            [24] 1015 	mov	ar4,r7
      0003B5 8A 82            [24] 1016 	mov	dpl,r2
      0003B7 8B 83            [24] 1017 	mov	dph,r3
      0003B9 8C F0            [24] 1018 	mov	b,r4
      0003BB 12 15 99         [24] 1019 	lcall	__gptrget
      0003BE FA               [12] 1020 	mov	r2,a
      0003BF BA 3D 13         [24] 1021 	cjne	r2,#0x3d,00115$
                                   1022 ;	main.c:70: curr_address = gateway;
      0003C2 78 24            [12] 1023 	mov	r0,#_extractAndAssign_curr_address_65536_63
      0003C4 74 01            [12] 1024 	mov	a,#_gateway
      0003C6 F2               [24] 1025 	movx	@r0,a
      0003C7 08               [12] 1026 	inc	r0
      0003C8 E4               [12] 1027 	clr	a
      0003C9 F2               [24] 1028 	movx	@r0,a
      0003CA 08               [12] 1029 	inc	r0
      0003CB 74 60            [12] 1030 	mov	a,#0x60
      0003CD F2               [24] 1031 	movx	@r0,a
                                   1032 ;	main.c:71: arr += 5;
      0003CE 74 05            [12] 1033 	mov	a,#0x05
      0003D0 2D               [12] 1034 	add	a,r5
      0003D1 FD               [12] 1035 	mov	r5,a
      0003D2 E4               [12] 1036 	clr	a
      0003D3 3E               [12] 1037 	addc	a,r6
      0003D4 FE               [12] 1038 	mov	r6,a
      0003D5                       1039 00115$:
                                   1040 ;	main.c:73: value = 0;
      0003D5 78 28            [12] 1041 	mov	r0,#_extractAndAssign_value_65536_63
      0003D7 E4               [12] 1042 	clr	a
      0003D8 F2               [24] 1043 	movx	@r0,a
                                   1044 ;	main.c:74: while (*arr >= '0' && *arr <= '9')
      0003D9 8D 0C            [24] 1045 	mov	_extractAndAssign_sloc0_1_0,r5
      0003DB 8E 0D            [24] 1046 	mov	(_extractAndAssign_sloc0_1_0 + 1),r6
      0003DD 8F 0E            [24] 1047 	mov	(_extractAndAssign_sloc0_1_0 + 2),r7
      0003DF                       1048 00119$:
      0003DF 85 0C 82         [24] 1049 	mov	dpl,_extractAndAssign_sloc0_1_0
      0003E2 85 0D 83         [24] 1050 	mov	dph,(_extractAndAssign_sloc0_1_0 + 1)
      0003E5 85 0E F0         [24] 1051 	mov	b,(_extractAndAssign_sloc0_1_0 + 2)
      0003E8 12 15 99         [24] 1052 	lcall	__gptrget
      0003EB FA               [12] 1053 	mov	r2,a
      0003EC BA 30 00         [24] 1054 	cjne	r2,#0x30,00259$
      0003EF                       1055 00259$:
      0003EF 40 1E            [24] 1056 	jc	00153$
      0003F1 EA               [12] 1057 	mov	a,r2
      0003F2 24 C6            [12] 1058 	add	a,#0xff - 0x39
      0003F4 40 19            [24] 1059 	jc	00153$
                                   1060 ;	main.c:76: value = value * 10 + (*arr - '0');
      0003F6 78 28            [12] 1061 	mov	r0,#_extractAndAssign_value_65536_63
      0003F8 E2               [24] 1062 	movx	a,@r0
      0003F9 75 F0 0A         [24] 1063 	mov	b,#0x0a
      0003FC A4               [48] 1064 	mul	ab
      0003FD FC               [12] 1065 	mov	r4,a
      0003FE EA               [12] 1066 	mov	a,r2
      0003FF 24 D0            [12] 1067 	add	a,#0xd0
      000401 78 28            [12] 1068 	mov	r0,#_extractAndAssign_value_65536_63
      000403 2C               [12] 1069 	add	a,r4
      000404 F2               [24] 1070 	movx	@r0,a
                                   1071 ;	main.c:77: arr++;
      000405 05 0C            [12] 1072 	inc	_extractAndAssign_sloc0_1_0
      000407 E4               [12] 1073 	clr	a
      000408 B5 0C D4         [24] 1074 	cjne	a,_extractAndAssign_sloc0_1_0,00119$
      00040B 05 0D            [12] 1075 	inc	(_extractAndAssign_sloc0_1_0 + 1)
      00040D 80 D0            [24] 1076 	sjmp	00119$
      00040F                       1077 00153$:
      00040F 78 21            [12] 1078 	mov	r0,#_extractAndAssign_arr_65536_62
      000411 E5 0C            [12] 1079 	mov	a,_extractAndAssign_sloc0_1_0
      000413 F2               [24] 1080 	movx	@r0,a
      000414 08               [12] 1081 	inc	r0
      000415 E5 0D            [12] 1082 	mov	a,(_extractAndAssign_sloc0_1_0 + 1)
      000417 F2               [24] 1083 	movx	@r0,a
      000418 08               [12] 1084 	inc	r0
      000419 E5 0E            [12] 1085 	mov	a,(_extractAndAssign_sloc0_1_0 + 2)
      00041B F2               [24] 1086 	movx	@r0,a
                                   1087 ;	main.c:80: if (curr_address && octet < 4)
      00041C 78 24            [12] 1088 	mov	r0,#_extractAndAssign_curr_address_65536_63
      00041E E2               [24] 1089 	movx	a,@r0
      00041F F5 F0            [12] 1090 	mov	b,a
      000421 08               [12] 1091 	inc	r0
      000422 E2               [24] 1092 	movx	a,@r0
      000423 45 F0            [12] 1093 	orl	a,b
      000425 60 4F            [24] 1094 	jz	00126$
      000427 78 27            [12] 1095 	mov	r0,#_extractAndAssign_octet_65536_63
      000429 E2               [24] 1096 	movx	a,@r0
      00042A B4 04 00         [24] 1097 	cjne	a,#0x04,00264$
      00042D                       1098 00264$:
      00042D 50 47            [24] 1099 	jnc	00126$
                                   1100 ;	main.c:82: curr_address[octet] = value;
      00042F 78 24            [12] 1101 	mov	r0,#_extractAndAssign_curr_address_65536_63
      000431 79 27            [12] 1102 	mov	r1,#_extractAndAssign_octet_65536_63
      000433 E3               [24] 1103 	movx	a,@r1
      000434 C5 F0            [12] 1104 	xch	a,b
      000436 E2               [24] 1105 	movx	a,@r0
      000437 25 F0            [12] 1106 	add	a,b
      000439 FA               [12] 1107 	mov	r2,a
      00043A 08               [12] 1108 	inc	r0
      00043B E2               [24] 1109 	movx	a,@r0
      00043C 34 00            [12] 1110 	addc	a,#0x00
      00043E FB               [12] 1111 	mov	r3,a
      00043F 08               [12] 1112 	inc	r0
      000440 E2               [24] 1113 	movx	a,@r0
      000441 FC               [12] 1114 	mov	r4,a
      000442 8A 82            [24] 1115 	mov	dpl,r2
      000444 8B 83            [24] 1116 	mov	dph,r3
      000446 8C F0            [24] 1117 	mov	b,r4
      000448 78 28            [12] 1118 	mov	r0,#_extractAndAssign_value_65536_63
      00044A E2               [24] 1119 	movx	a,@r0
      00044B 12 13 C8         [24] 1120 	lcall	__gptrput
                                   1121 ;	main.c:83: octet++;
      00044E 78 27            [12] 1122 	mov	r0,#_extractAndAssign_octet_65536_63
      000450 E2               [24] 1123 	movx	a,@r0
      000451 24 01            [12] 1124 	add	a,#0x01
      000453 F2               [24] 1125 	movx	@r0,a
                                   1126 ;	main.c:85: if (*arr == '.')
      000454 85 0C 82         [24] 1127 	mov	dpl,_extractAndAssign_sloc0_1_0
      000457 85 0D 83         [24] 1128 	mov	dph,(_extractAndAssign_sloc0_1_0 + 1)
      00045A 85 0E F0         [24] 1129 	mov	b,(_extractAndAssign_sloc0_1_0 + 2)
      00045D 12 15 99         [24] 1130 	lcall	__gptrget
      000460 FC               [12] 1131 	mov	r4,a
      000461 BC 2E 0E         [24] 1132 	cjne	r4,#0x2e,00123$
                                   1133 ;	main.c:87: arr++;
      000464 74 01            [12] 1134 	mov	a,#0x01
      000466 25 0C            [12] 1135 	add	a,_extractAndAssign_sloc0_1_0
      000468 FD               [12] 1136 	mov	r5,a
      000469 E4               [12] 1137 	clr	a
      00046A 35 0D            [12] 1138 	addc	a,(_extractAndAssign_sloc0_1_0 + 1)
      00046C FE               [12] 1139 	mov	r6,a
      00046D AF 0E            [24] 1140 	mov	r7,(_extractAndAssign_sloc0_1_0 + 2)
                                   1141 ;	main.c:88: continue;
      00046F 02 02 A1         [24] 1142 	ljmp	00128$
      000472                       1143 00123$:
                                   1144 ;	main.c:92: octet = 0; // Reset octet count for the next IP address
      000472 78 27            [12] 1145 	mov	r0,#_extractAndAssign_octet_65536_63
      000474 E4               [12] 1146 	clr	a
      000475 F2               [24] 1147 	movx	@r0,a
      000476                       1148 00126$:
                                   1149 ;	main.c:95: arr++;
      000476 78 21            [12] 1150 	mov	r0,#_extractAndAssign_arr_65536_62
      000478 E2               [24] 1151 	movx	a,@r0
      000479 24 01            [12] 1152 	add	a,#0x01
      00047B FD               [12] 1153 	mov	r5,a
      00047C 08               [12] 1154 	inc	r0
      00047D E2               [24] 1155 	movx	a,@r0
      00047E 34 00            [12] 1156 	addc	a,#0x00
      000480 FE               [12] 1157 	mov	r6,a
      000481 08               [12] 1158 	inc	r0
      000482 E2               [24] 1159 	movx	a,@r0
      000483 FF               [12] 1160 	mov	r7,a
                                   1161 ;	main.c:97: }
      000484 02 02 A1         [24] 1162 	ljmp	00128$
                                   1163 ;------------------------------------------------------------
                                   1164 ;Allocation info for local variables in function 'displayIPAddress'
                                   1165 ;------------------------------------------------------------
                                   1166 ;	main.c:101: void displayIPAddress(unsigned char *address)
                                   1167 ;	-----------------------------------------
                                   1168 ;	 function displayIPAddress
                                   1169 ;	-----------------------------------------
      000487                       1170 _displayIPAddress:
      000487 AD 82            [24] 1171 	mov	r5,dpl
      000489 AE 83            [24] 1172 	mov	r6,dph
      00048B AF F0            [24] 1173 	mov	r7,b
                                   1174 ;	main.c:103: for (unsigned char i = 0; i < 4; i++)
      00048D 7C 00            [12] 1175 	mov	r4,#0x00
      00048F                       1176 00105$:
      00048F BC 04 00         [24] 1177 	cjne	r4,#0x04,00122$
      000492                       1178 00122$:
      000492 50 44            [24] 1179 	jnc	00107$
                                   1180 ;	main.c:105: _serial_putbyte_dec(address[i]);
      000494 EC               [12] 1181 	mov	a,r4
      000495 2D               [12] 1182 	add	a,r5
      000496 F9               [12] 1183 	mov	r1,a
      000497 E4               [12] 1184 	clr	a
      000498 3E               [12] 1185 	addc	a,r6
      000499 FA               [12] 1186 	mov	r2,a
      00049A 8F 03            [24] 1187 	mov	ar3,r7
      00049C 89 82            [24] 1188 	mov	dpl,r1
      00049E 8A 83            [24] 1189 	mov	dph,r2
      0004A0 8B F0            [24] 1190 	mov	b,r3
      0004A2 12 15 99         [24] 1191 	lcall	__gptrget
      0004A5 F5 82            [12] 1192 	mov	dpl,a
      0004A7 C0 07            [24] 1193 	push	ar7
      0004A9 C0 06            [24] 1194 	push	ar6
      0004AB C0 05            [24] 1195 	push	ar5
      0004AD C0 04            [24] 1196 	push	ar4
      0004AF 12 0C A1         [24] 1197 	lcall	__serial_putbyte_dec
      0004B2 D0 04            [24] 1198 	pop	ar4
      0004B4 D0 05            [24] 1199 	pop	ar5
      0004B6 D0 06            [24] 1200 	pop	ar6
      0004B8 D0 07            [24] 1201 	pop	ar7
                                   1202 ;	main.c:106: if (i != 3)
      0004BA BC 03 02         [24] 1203 	cjne	r4,#0x03,00124$
      0004BD 80 16            [24] 1204 	sjmp	00106$
      0004BF                       1205 00124$:
                                   1206 ;	main.c:107: _serial_putchar('.');
      0004BF 75 82 2E         [24] 1207 	mov	dpl,#0x2e
      0004C2 C0 07            [24] 1208 	push	ar7
      0004C4 C0 06            [24] 1209 	push	ar6
      0004C6 C0 05            [24] 1210 	push	ar5
      0004C8 C0 04            [24] 1211 	push	ar4
      0004CA 12 0D 56         [24] 1212 	lcall	__serial_putchar
      0004CD D0 04            [24] 1213 	pop	ar4
      0004CF D0 05            [24] 1214 	pop	ar5
      0004D1 D0 06            [24] 1215 	pop	ar6
      0004D3 D0 07            [24] 1216 	pop	ar7
      0004D5                       1217 00106$:
                                   1218 ;	main.c:103: for (unsigned char i = 0; i < 4; i++)
      0004D5 0C               [12] 1219 	inc	r4
      0004D6 80 B7            [24] 1220 	sjmp	00105$
      0004D8                       1221 00107$:
                                   1222 ;	main.c:109: }
      0004D8 22               [24] 1223 	ret
                                   1224 ;------------------------------------------------------------
                                   1225 ;Allocation info for local variables in function 'displayMACAddress'
                                   1226 ;------------------------------------------------------------
                                   1227 ;	main.c:112: void displayMACAddress(unsigned char *address)
                                   1228 ;	-----------------------------------------
                                   1229 ;	 function displayMACAddress
                                   1230 ;	-----------------------------------------
      0004D9                       1231 _displayMACAddress:
      0004D9 AD 82            [24] 1232 	mov	r5,dpl
      0004DB AE 83            [24] 1233 	mov	r6,dph
      0004DD AF F0            [24] 1234 	mov	r7,b
                                   1235 ;	main.c:114: for (unsigned char i = 0; i < 6; i++)
      0004DF 7C 00            [12] 1236 	mov	r4,#0x00
      0004E1                       1237 00105$:
      0004E1 BC 06 00         [24] 1238 	cjne	r4,#0x06,00122$
      0004E4                       1239 00122$:
      0004E4 50 47            [24] 1240 	jnc	00107$
                                   1241 ;	main.c:116: _serial_putbyte_hex(address[i]);
      0004E6 EC               [12] 1242 	mov	a,r4
      0004E7 2D               [12] 1243 	add	a,r5
      0004E8 F9               [12] 1244 	mov	r1,a
      0004E9 E4               [12] 1245 	clr	a
      0004EA 3E               [12] 1246 	addc	a,r6
      0004EB FA               [12] 1247 	mov	r2,a
      0004EC 8F 03            [24] 1248 	mov	ar3,r7
      0004EE 89 82            [24] 1249 	mov	dpl,r1
      0004F0 8A 83            [24] 1250 	mov	dph,r2
      0004F2 8B F0            [24] 1251 	mov	b,r3
      0004F4 12 15 99         [24] 1252 	lcall	__gptrget
      0004F7 F5 82            [12] 1253 	mov	dpl,a
      0004F9 C0 07            [24] 1254 	push	ar7
      0004FB C0 06            [24] 1255 	push	ar6
      0004FD C0 05            [24] 1256 	push	ar5
      0004FF C0 04            [24] 1257 	push	ar4
      000501 12 0C 56         [24] 1258 	lcall	__serial_putbyte_hex
      000504 D0 04            [24] 1259 	pop	ar4
      000506 D0 05            [24] 1260 	pop	ar5
      000508 D0 06            [24] 1261 	pop	ar6
      00050A D0 07            [24] 1262 	pop	ar7
                                   1263 ;	main.c:117: if (i != 5)
      00050C BC 05 02         [24] 1264 	cjne	r4,#0x05,00124$
      00050F 80 19            [24] 1265 	sjmp	00106$
      000511                       1266 00124$:
                                   1267 ;	main.c:118: _serial_putstr(" ");
      000511 90 15 B9         [24] 1268 	mov	dptr,#___str_0
      000514 75 F0 80         [24] 1269 	mov	b,#0x80
      000517 C0 07            [24] 1270 	push	ar7
      000519 C0 06            [24] 1271 	push	ar6
      00051B C0 05            [24] 1272 	push	ar5
      00051D C0 04            [24] 1273 	push	ar4
      00051F 12 0C 2B         [24] 1274 	lcall	__serial_putstr
      000522 D0 04            [24] 1275 	pop	ar4
      000524 D0 05            [24] 1276 	pop	ar5
      000526 D0 06            [24] 1277 	pop	ar6
      000528 D0 07            [24] 1278 	pop	ar7
      00052A                       1279 00106$:
                                   1280 ;	main.c:114: for (unsigned char i = 0; i < 6; i++)
      00052A 0C               [12] 1281 	inc	r4
      00052B 80 B4            [24] 1282 	sjmp	00105$
      00052D                       1283 00107$:
                                   1284 ;	main.c:120: }
      00052D 22               [24] 1285 	ret
                                   1286 ;------------------------------------------------------------
                                   1287 ;Allocation info for local variables in function 'menudisplay'
                                   1288 ;------------------------------------------------------------
                                   1289 ;	main.c:124: void menudisplay()
                                   1290 ;	-----------------------------------------
                                   1291 ;	 function menudisplay
                                   1292 ;	-----------------------------------------
      00052E                       1293 _menudisplay:
                                   1294 ;	main.c:128: _serial_putstr("\n\rCURRENT CONFIG:                    CHANGE CMD:\n\r");
      00052E 90 15 BB         [24] 1295 	mov	dptr,#___str_1
      000531 75 F0 80         [24] 1296 	mov	b,#0x80
      000534 12 0C 2B         [24] 1297 	lcall	__serial_putstr
                                   1298 ;	main.c:129: _serial_putstr("RTU Addr (0-9): ");
      000537 90 15 EE         [24] 1299 	mov	dptr,#___str_2
      00053A 75 F0 80         [24] 1300 	mov	b,#0x80
      00053D 12 0C 2B         [24] 1301 	lcall	__serial_putstr
                                   1302 ;	main.c:130: _serial_putchar(RTU_Address);
      000540 78 17            [12] 1303 	mov	r0,#_RTU_Address
      000542 E2               [24] 1304 	movx	a,@r0
      000543 F5 82            [12] 1305 	mov	dpl,a
      000545 12 0D 56         [24] 1306 	lcall	__serial_putchar
                                   1307 ;	main.c:131: _serial_putstr("                  RTU=#\n\r");
      000548 90 15 FF         [24] 1308 	mov	dptr,#___str_3
      00054B 75 F0 80         [24] 1309 	mov	b,#0x80
      00054E 12 0C 2B         [24] 1310 	lcall	__serial_putstr
                                   1311 ;	main.c:134: _serial_putstr("IP Addr: ");
      000551 90 16 19         [24] 1312 	mov	dptr,#___str_4
      000554 75 F0 80         [24] 1313 	mov	b,#0x80
      000557 12 0C 2B         [24] 1314 	lcall	__serial_putstr
                                   1315 ;	main.c:135: displayIPAddress(ip);
      00055A 90 00 09         [24] 1316 	mov	dptr,#_ip
      00055D 75 F0 60         [24] 1317 	mov	b,#0x60
      000560 12 04 87         [24] 1318 	lcall	_displayIPAddress
                                   1319 ;	main.c:136: _serial_putstr("             IP=###.###.###.###\n\r");
      000563 90 16 23         [24] 1320 	mov	dptr,#___str_5
      000566 75 F0 80         [24] 1321 	mov	b,#0x80
      000569 12 0C 2B         [24] 1322 	lcall	__serial_putstr
                                   1323 ;	main.c:139: _serial_putstr("Subnet Mask: ");
      00056C 90 16 45         [24] 1324 	mov	dptr,#___str_6
      00056F 75 F0 80         [24] 1325 	mov	b,#0x80
      000572 12 0C 2B         [24] 1326 	lcall	__serial_putstr
                                   1327 ;	main.c:140: displayIPAddress(subnet);
      000575 90 00 05         [24] 1328 	mov	dptr,#_subnet
      000578 75 F0 60         [24] 1329 	mov	b,#0x60
      00057B 12 04 87         [24] 1330 	lcall	_displayIPAddress
                                   1331 ;	main.c:141: _serial_putstr("         SUB=###.###.###.###\n\r");
      00057E 90 16 53         [24] 1332 	mov	dptr,#___str_7
      000581 75 F0 80         [24] 1333 	mov	b,#0x80
      000584 12 0C 2B         [24] 1334 	lcall	__serial_putstr
                                   1335 ;	main.c:144: _serial_putstr("Gateway: ");
      000587 90 16 72         [24] 1336 	mov	dptr,#___str_8
      00058A 75 F0 80         [24] 1337 	mov	b,#0x80
      00058D 12 0C 2B         [24] 1338 	lcall	__serial_putstr
                                   1339 ;	main.c:145: displayIPAddress(gateway);
      000590 90 00 01         [24] 1340 	mov	dptr,#_gateway
      000593 75 F0 60         [24] 1341 	mov	b,#0x60
      000596 12 04 87         [24] 1342 	lcall	_displayIPAddress
                                   1343 ;	main.c:146: _serial_putstr("              GATE=###.###.###.###\n\r");
      000599 90 16 7C         [24] 1344 	mov	dptr,#___str_9
      00059C 75 F0 80         [24] 1345 	mov	b,#0x80
      00059F 12 0C 2B         [24] 1346 	lcall	__serial_putstr
                                   1347 ;	main.c:149: _serial_putstr("MAC Addr: ");
      0005A2 90 16 A1         [24] 1348 	mov	dptr,#___str_10
      0005A5 75 F0 80         [24] 1349 	mov	b,#0x80
      0005A8 12 0C 2B         [24] 1350 	lcall	__serial_putstr
                                   1351 ;	main.c:150: displayMACAddress(mac);
      0005AB 90 00 0D         [24] 1352 	mov	dptr,#_mac
      0005AE 75 F0 60         [24] 1353 	mov	b,#0x60
      0005B1 12 04 D9         [24] 1354 	lcall	_displayMACAddress
                                   1355 ;	main.c:151: _serial_putstr("        MAC=FF FF FF FF FF FF\n\r");
      0005B4 90 16 AC         [24] 1356 	mov	dptr,#___str_11
      0005B7 75 F0 80         [24] 1357 	mov	b,#0x80
                                   1358 ;	main.c:152: }
      0005BA 02 0C 2B         [24] 1359 	ljmp	__serial_putstr
                                   1360 ;------------------------------------------------------------
                                   1361 ;Allocation info for local variables in function 'setuptcp'
                                   1362 ;------------------------------------------------------------
                                   1363 ;	main.c:155: void setuptcp(){
                                   1364 ;	-----------------------------------------
                                   1365 ;	 function setuptcp
                                   1366 ;	-----------------------------------------
      0005BD                       1367 _setuptcp:
                                   1368 ;	main.c:156: _w5500_set_tcp(SOCKET1);
      0005BD 75 82 01         [24] 1369 	mov	dpl,#0x01
      0005C0 12 0E AA         [24] 1370 	lcall	__w5500_set_tcp
                                   1371 ;	main.c:157: _w5500_set_sourceport(SOCKET1, 5002);
      0005C3 78 DE            [12] 1372 	mov	r0,#__w5500_set_sourceport_PARM_2
      0005C5 74 8A            [12] 1373 	mov	a,#0x8a
      0005C7 F2               [24] 1374 	movx	@r0,a
      0005C8 08               [12] 1375 	inc	r0
      0005C9 74 13            [12] 1376 	mov	a,#0x13
      0005CB F2               [24] 1377 	movx	@r0,a
      0005CC 75 82 01         [24] 1378 	mov	dpl,#0x01
      0005CF 12 10 42         [24] 1379 	lcall	__w5500_set_sourceport
                                   1380 ;	main.c:158: _w5500_open(SOCKET1);
      0005D2 75 82 01         [24] 1381 	mov	dpl,#0x01
      0005D5 12 0D B4         [24] 1382 	lcall	__w5500_open
                                   1383 ;	main.c:159: _w5500_listen(SOCKET1);
      0005D8 75 82 01         [24] 1384 	mov	dpl,#0x01
      0005DB 12 10 19         [24] 1385 	lcall	__w5500_listen
                                   1386 ;	main.c:160: _w5500_set_IMR(SOCKET1);
      0005DE 75 82 01         [24] 1387 	mov	dpl,#0x01
                                   1388 ;	main.c:161: }
      0005E1 02 0F 50         [24] 1389 	ljmp	__w5500_set_IMR
                                   1390 ;------------------------------------------------------------
                                   1391 ;Allocation info for local variables in function 'setup'
                                   1392 ;------------------------------------------------------------
                                   1393 ;	main.c:164: void setup() {
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function setup
                                   1396 ;	-----------------------------------------
      0005E4                       1397 _setup:
                                   1398 ;	main.c:165: _serial_begin();
      0005E4 12 0C 12         [24] 1399 	lcall	__serial_begin
                                   1400 ;	main.c:166: _spigeneric_reset();
      0005E7 12 0C 0C         [24] 1401 	lcall	__spigeneric_reset
                                   1402 ;	main.c:167: _w5500_set_gateway(gateway);
      0005EA 78 F1            [12] 1403 	mov	r0,#__w5500_write_PARM_3
      0005EC 74 01            [12] 1404 	mov	a,#_gateway
      0005EE F2               [24] 1405 	movx	@r0,a
      0005EF 08               [12] 1406 	inc	r0
      0005F0 E4               [12] 1407 	clr	a
      0005F1 F2               [24] 1408 	movx	@r0,a
      0005F2 08               [12] 1409 	inc	r0
      0005F3 74 60            [12] 1410 	mov	a,#0x60
      0005F5 F2               [24] 1411 	movx	@r0,a
      0005F6 78 F0            [12] 1412 	mov	r0,#__w5500_write_PARM_2
      0005F8 E4               [12] 1413 	clr	a
      0005F9 F2               [24] 1414 	movx	@r0,a
      0005FA 78 F4            [12] 1415 	mov	r0,#__w5500_write_PARM_4
      0005FC 74 04            [12] 1416 	mov	a,#0x04
      0005FE F2               [24] 1417 	movx	@r0,a
      0005FF 08               [12] 1418 	inc	r0
      000600 E4               [12] 1419 	clr	a
      000601 F2               [24] 1420 	movx	@r0,a
      000602 90 00 01         [24] 1421 	mov	dptr,#0x0001
      000605 12 13 50         [24] 1422 	lcall	__w5500_write
                                   1423 ;	main.c:168: _w5500_set_subnet(subnet);
      000608 78 F1            [12] 1424 	mov	r0,#__w5500_write_PARM_3
      00060A 74 05            [12] 1425 	mov	a,#_subnet
      00060C F2               [24] 1426 	movx	@r0,a
      00060D 08               [12] 1427 	inc	r0
      00060E E4               [12] 1428 	clr	a
      00060F F2               [24] 1429 	movx	@r0,a
      000610 08               [12] 1430 	inc	r0
      000611 74 60            [12] 1431 	mov	a,#0x60
      000613 F2               [24] 1432 	movx	@r0,a
      000614 78 F0            [12] 1433 	mov	r0,#__w5500_write_PARM_2
      000616 E4               [12] 1434 	clr	a
      000617 F2               [24] 1435 	movx	@r0,a
      000618 78 F4            [12] 1436 	mov	r0,#__w5500_write_PARM_4
      00061A 74 04            [12] 1437 	mov	a,#0x04
      00061C F2               [24] 1438 	movx	@r0,a
      00061D 08               [12] 1439 	inc	r0
      00061E E4               [12] 1440 	clr	a
      00061F F2               [24] 1441 	movx	@r0,a
      000620 90 00 05         [24] 1442 	mov	dptr,#0x0005
      000623 12 13 50         [24] 1443 	lcall	__w5500_write
                                   1444 ;	main.c:169: _w5500_set_ip(ip);
      000626 78 F1            [12] 1445 	mov	r0,#__w5500_write_PARM_3
      000628 74 09            [12] 1446 	mov	a,#_ip
      00062A F2               [24] 1447 	movx	@r0,a
      00062B 08               [12] 1448 	inc	r0
      00062C E4               [12] 1449 	clr	a
      00062D F2               [24] 1450 	movx	@r0,a
      00062E 08               [12] 1451 	inc	r0
      00062F 74 60            [12] 1452 	mov	a,#0x60
      000631 F2               [24] 1453 	movx	@r0,a
      000632 78 F0            [12] 1454 	mov	r0,#__w5500_write_PARM_2
      000634 E4               [12] 1455 	clr	a
      000635 F2               [24] 1456 	movx	@r0,a
      000636 78 F4            [12] 1457 	mov	r0,#__w5500_write_PARM_4
      000638 74 04            [12] 1458 	mov	a,#0x04
      00063A F2               [24] 1459 	movx	@r0,a
      00063B 08               [12] 1460 	inc	r0
      00063C E4               [12] 1461 	clr	a
      00063D F2               [24] 1462 	movx	@r0,a
      00063E 90 00 0F         [24] 1463 	mov	dptr,#0x000f
      000641 12 13 50         [24] 1464 	lcall	__w5500_write
                                   1465 ;	main.c:170: _w5500_set_mac(mac);
      000644 78 F1            [12] 1466 	mov	r0,#__w5500_write_PARM_3
      000646 74 0D            [12] 1467 	mov	a,#_mac
      000648 F2               [24] 1468 	movx	@r0,a
      000649 08               [12] 1469 	inc	r0
      00064A E4               [12] 1470 	clr	a
      00064B F2               [24] 1471 	movx	@r0,a
      00064C 08               [12] 1472 	inc	r0
      00064D 74 60            [12] 1473 	mov	a,#0x60
      00064F F2               [24] 1474 	movx	@r0,a
      000650 78 F0            [12] 1475 	mov	r0,#__w5500_write_PARM_2
      000652 E4               [12] 1476 	clr	a
      000653 F2               [24] 1477 	movx	@r0,a
      000654 78 F4            [12] 1478 	mov	r0,#__w5500_write_PARM_4
      000656 74 06            [12] 1479 	mov	a,#0x06
      000658 F2               [24] 1480 	movx	@r0,a
      000659 08               [12] 1481 	inc	r0
      00065A E4               [12] 1482 	clr	a
      00065B F2               [24] 1483 	movx	@r0,a
      00065C 90 00 09         [24] 1484 	mov	dptr,#0x0009
      00065F 12 13 50         [24] 1485 	lcall	__w5500_write
                                   1486 ;	main.c:171: _w5500_set_SIMR();
      000662 78 F1            [12] 1487 	mov	r0,#__w5500_write_PARM_3
      000664 74 CC            [12] 1488 	mov	a,#___str_12
      000666 F2               [24] 1489 	movx	@r0,a
      000667 08               [12] 1490 	inc	r0
      000668 74 16            [12] 1491 	mov	a,#(___str_12 >> 8)
      00066A F2               [24] 1492 	movx	@r0,a
      00066B 08               [12] 1493 	inc	r0
      00066C 74 80            [12] 1494 	mov	a,#0x80
      00066E F2               [24] 1495 	movx	@r0,a
      00066F 78 F0            [12] 1496 	mov	r0,#__w5500_write_PARM_2
      000671 E4               [12] 1497 	clr	a
      000672 F2               [24] 1498 	movx	@r0,a
      000673 78 F4            [12] 1499 	mov	r0,#__w5500_write_PARM_4
      000675 04               [12] 1500 	inc	a
      000676 F2               [24] 1501 	movx	@r0,a
      000677 08               [12] 1502 	inc	r0
      000678 E4               [12] 1503 	clr	a
      000679 F2               [24] 1504 	movx	@r0,a
      00067A 90 00 18         [24] 1505 	mov	dptr,#0x0018
      00067D 12 13 50         [24] 1506 	lcall	__w5500_write
                                   1507 ;	main.c:172: _serial_putstr("\n\rget_smir: ");
      000680 90 16 CE         [24] 1508 	mov	dptr,#___str_13
      000683 75 F0 80         [24] 1509 	mov	b,#0x80
      000686 12 0C 2B         [24] 1510 	lcall	__serial_putstr
                                   1511 ;	main.c:173: _serial_putbyte_hex(_w5500_get_SIMR());
      000689 12 0F 79         [24] 1512 	lcall	__w5500_get_SIMR
      00068C 12 0C 56         [24] 1513 	lcall	__serial_putbyte_hex
                                   1514 ;	main.c:174: _serial_putstr("\n\rget_sir: ");
      00068F 90 16 DB         [24] 1515 	mov	dptr,#___str_14
      000692 75 F0 80         [24] 1516 	mov	b,#0x80
      000695 12 0C 2B         [24] 1517 	lcall	__serial_putstr
                                   1518 ;	main.c:175: _serial_putbyte_hex(_w5500_get_SIR());
      000698 12 0F 2D         [24] 1519 	lcall	__w5500_get_SIR
      00069B 12 0C 56         [24] 1520 	lcall	__serial_putbyte_hex
                                   1521 ;	main.c:176: _serial_putstr("\n\rget_imr_socket0: ");
      00069E 90 16 E7         [24] 1522 	mov	dptr,#___str_15
      0006A1 75 F0 80         [24] 1523 	mov	b,#0x80
      0006A4 12 0C 2B         [24] 1524 	lcall	__serial_putstr
                                   1525 ;	main.c:177: _serial_putbyte_hex(_w5500_get_IMR(SOCKET0));
      0006A7 75 82 00         [24] 1526 	mov	dpl,#0x00
      0006AA 12 0F 03         [24] 1527 	lcall	__w5500_get_IMR
      0006AD 12 0C 56         [24] 1528 	lcall	__serial_putbyte_hex
                                   1529 ;	main.c:178: _serial_putstr("\n\rget_imr_socket1:");
      0006B0 90 16 FB         [24] 1530 	mov	dptr,#___str_16
      0006B3 75 F0 80         [24] 1531 	mov	b,#0x80
      0006B6 12 0C 2B         [24] 1532 	lcall	__serial_putstr
                                   1533 ;	main.c:179: _serial_putbyte_hex(_w5500_get_IMR(SOCKET1));
      0006B9 75 82 01         [24] 1534 	mov	dpl,#0x01
      0006BC 12 0F 03         [24] 1535 	lcall	__w5500_get_IMR
      0006BF 12 0C 56         [24] 1536 	lcall	__serial_putbyte_hex
                                   1537 ;	main.c:181: setuptcp();
      0006C2 12 05 BD         [24] 1538 	lcall	_setuptcp
                                   1539 ;	main.c:182: _w5500_set_destinationip(SOCKET0, dest_ip);
      0006C5 78 E2            [12] 1540 	mov	r0,#__w5500_set_destinationip_PARM_2
      0006C7 74 13            [12] 1541 	mov	a,#_dest_ip
      0006C9 F2               [24] 1542 	movx	@r0,a
      0006CA 08               [12] 1543 	inc	r0
      0006CB E4               [12] 1544 	clr	a
      0006CC F2               [24] 1545 	movx	@r0,a
      0006CD 08               [12] 1546 	inc	r0
      0006CE 74 60            [12] 1547 	mov	a,#0x60
      0006D0 F2               [24] 1548 	movx	@r0,a
      0006D1 75 82 00         [24] 1549 	mov	dpl,#0x00
      0006D4 12 10 A4         [24] 1550 	lcall	__w5500_set_destinationip
                                   1551 ;	main.c:183: _w5500_set_sourceport(SOCKET0, 5001);
      0006D7 78 DE            [12] 1552 	mov	r0,#__w5500_set_sourceport_PARM_2
      0006D9 74 89            [12] 1553 	mov	a,#0x89
      0006DB F2               [24] 1554 	movx	@r0,a
      0006DC 08               [12] 1555 	inc	r0
      0006DD 23               [12] 1556 	rl	a
      0006DE F2               [24] 1557 	movx	@r0,a
      0006DF 75 82 00         [24] 1558 	mov	dpl,#0x00
      0006E2 12 10 42         [24] 1559 	lcall	__w5500_set_sourceport
                                   1560 ;	main.c:184: _w5500_set_remoteport(SOCKET0, 37052);
      0006E5 78 E0            [12] 1561 	mov	r0,#__w5500_set_remoteport_PARM_2
      0006E7 74 BC            [12] 1562 	mov	a,#0xbc
      0006E9 F2               [24] 1563 	movx	@r0,a
      0006EA 08               [12] 1564 	inc	r0
      0006EB 74 90            [12] 1565 	mov	a,#0x90
      0006ED F2               [24] 1566 	movx	@r0,a
      0006EE 75 82 00         [24] 1567 	mov	dpl,#0x00
      0006F1 12 10 73         [24] 1568 	lcall	__w5500_set_remoteport
                                   1569 ;	main.c:185: _w5500_set_udp(SOCKET0);
      0006F4 75 82 00         [24] 1570 	mov	dpl,#0x00
      0006F7 12 0E 51         [24] 1571 	lcall	__w5500_set_udp
                                   1572 ;	main.c:186: _w5500_open(SOCKET0);
      0006FA 75 82 00         [24] 1573 	mov	dpl,#0x00
      0006FD 12 0D B4         [24] 1574 	lcall	__w5500_open
                                   1575 ;	main.c:187: _w5500_set_IMR(SOCKET0);
      000700 75 82 00         [24] 1576 	mov	dpl,#0x00
      000703 12 0F 50         [24] 1577 	lcall	__w5500_set_IMR
                                   1578 ;	main.c:189: P1_0 = 1;
                                   1579 ;	assignBit
      000706 D2 90            [12] 1580 	setb	_P1_0
                                   1581 ;	main.c:190: P1_1 = 1;
                                   1582 ;	assignBit
      000708 D2 91            [12] 1583 	setb	_P1_1
                                   1584 ;	main.c:191: }
      00070A 22               [24] 1585 	ret
                                   1586 ;------------------------------------------------------------
                                   1587 ;Allocation info for local variables in function 'loop'
                                   1588 ;------------------------------------------------------------
                                   1589 ;	main.c:193: void loop() {
                                   1590 ;	-----------------------------------------
                                   1591 ;	 function loop
                                   1592 ;	-----------------------------------------
      00070B                       1593 _loop:
                                   1594 ;	main.c:196: unsigned char recieved_udp = 0;
      00070B 78 29            [12] 1595 	mov	r0,#_loop_recieved_udp_65536_83
      00070D E4               [12] 1596 	clr	a
      00070E F2               [24] 1597 	movx	@r0,a
                                   1598 ;	main.c:197: unsigned char recieved_tcp = 0;
      00070F 78 2A            [12] 1599 	mov	r0,#_loop_recieved_tcp_65536_83
      000711 F2               [24] 1600 	movx	@r0,a
                                   1601 ;	main.c:199: unsigned char input_index = 0;
      000712 7D 00            [12] 1602 	mov	r5,#0x00
                                   1603 ;	main.c:203: unsigned char serial_index = 0;
      000714 78 67            [12] 1604 	mov	r0,#_loop_serial_index_65536_83
      000716 F2               [24] 1605 	movx	@r0,a
                                   1606 ;	main.c:207: while(1){
      000717                       1607 00167$:
                                   1608 ;	main.c:209: serialInput = _serial_emptybuffer();
      000717 C0 05            [24] 1609 	push	ar5
      000719 12 0D 27         [24] 1610 	lcall	__serial_emptybuffer
      00071C AA 82            [24] 1611 	mov	r2,dpl
      00071E AB 83            [24] 1612 	mov	r3,dph
      000720 AC F0            [24] 1613 	mov	r4,b
      000722 78 18            [12] 1614 	mov	r0,#_serialInput
      000724 EA               [12] 1615 	mov	a,r2
      000725 F2               [24] 1616 	movx	@r0,a
      000726 08               [12] 1617 	inc	r0
      000727 EB               [12] 1618 	mov	a,r3
      000728 F2               [24] 1619 	movx	@r0,a
      000729 08               [12] 1620 	inc	r0
      00072A EC               [12] 1621 	mov	a,r4
      00072B F2               [24] 1622 	movx	@r0,a
                                   1623 ;	main.c:210: unsigned char inputLength = strlen(serialInput);
      00072C 8A 82            [24] 1624 	mov	dpl,r2
      00072E 8B 83            [24] 1625 	mov	dph,r3
      000730 8C F0            [24] 1626 	mov	b,r4
      000732 12 00 F8         [24] 1627 	lcall	_strlen
      000735 AC 82            [24] 1628 	mov	r4,dpl
      000737 D0 05            [24] 1629 	pop	ar5
      000739 78 68            [12] 1630 	mov	r0,#_loop_inputLength_131073_85
      00073B EC               [12] 1631 	mov	a,r4
      00073C F2               [24] 1632 	movx	@r0,a
                                   1633 ;	main.c:211: if (inputLength) {
      00073D EC               [12] 1634 	mov	a,r4
      00073E 70 03            [24] 1635 	jnz	00353$
      000740 02 09 1B         [24] 1636 	ljmp	00207$
      000743                       1637 00353$:
                                   1638 ;	main.c:212: if(strcmp(serialInput, "?")){
      000743 78 1B            [12] 1639 	mov	r0,#_strcmp_PARM_2
      000745 74 0E            [12] 1640 	mov	a,#___str_18
      000747 F2               [24] 1641 	movx	@r0,a
      000748 08               [12] 1642 	inc	r0
      000749 74 17            [12] 1643 	mov	a,#(___str_18 >> 8)
      00074B F2               [24] 1644 	movx	@r0,a
      00074C 08               [12] 1645 	inc	r0
      00074D 74 80            [12] 1646 	mov	a,#0x80
      00074F F2               [24] 1647 	movx	@r0,a
      000750 78 18            [12] 1648 	mov	r0,#_serialInput
      000752 E2               [24] 1649 	movx	a,@r0
      000753 F5 82            [12] 1650 	mov	dpl,a
      000755 08               [12] 1651 	inc	r0
      000756 E2               [24] 1652 	movx	a,@r0
      000757 F5 83            [12] 1653 	mov	dph,a
      000759 08               [12] 1654 	inc	r0
      00075A E2               [24] 1655 	movx	a,@r0
      00075B F5 F0            [12] 1656 	mov	b,a
      00075D C0 05            [24] 1657 	push	ar5
      00075F 12 01 18         [24] 1658 	lcall	_strcmp
      000762 E5 82            [12] 1659 	mov	a,dpl
      000764 D0 05            [24] 1660 	pop	ar5
      000766 60 0A            [24] 1661 	jz	00127$
                                   1662 ;	main.c:213: menudisplay();
      000768 C0 05            [24] 1663 	push	ar5
      00076A 12 05 2E         [24] 1664 	lcall	_menudisplay
      00076D D0 05            [24] 1665 	pop	ar5
      00076F 02 09 1B         [24] 1666 	ljmp	00207$
      000772                       1667 00127$:
                                   1668 ;	main.c:217: if(strcmp(serialInput, "\r")){
      000772 78 1B            [12] 1669 	mov	r0,#_strcmp_PARM_2
      000774 74 10            [12] 1670 	mov	a,#___str_19
      000776 F2               [24] 1671 	movx	@r0,a
      000777 08               [12] 1672 	inc	r0
      000778 74 17            [12] 1673 	mov	a,#(___str_19 >> 8)
      00077A F2               [24] 1674 	movx	@r0,a
      00077B 08               [12] 1675 	inc	r0
      00077C 74 80            [12] 1676 	mov	a,#0x80
      00077E F2               [24] 1677 	movx	@r0,a
      00077F 78 18            [12] 1678 	mov	r0,#_serialInput
      000781 E2               [24] 1679 	movx	a,@r0
      000782 F5 82            [12] 1680 	mov	dpl,a
      000784 08               [12] 1681 	inc	r0
      000785 E2               [24] 1682 	movx	a,@r0
      000786 F5 83            [12] 1683 	mov	dph,a
      000788 08               [12] 1684 	inc	r0
      000789 E2               [24] 1685 	movx	a,@r0
      00078A F5 F0            [12] 1686 	mov	b,a
      00078C C0 05            [24] 1687 	push	ar5
      00078E 12 01 18         [24] 1688 	lcall	_strcmp
      000791 E5 82            [12] 1689 	mov	a,dpl
      000793 D0 05            [24] 1690 	pop	ar5
      000795 70 03            [24] 1691 	jnz	00355$
      000797 02 08 CF         [24] 1692 	ljmp	00204$
      00079A                       1693 00355$:
                                   1694 ;	main.c:218: if(serial_buffer[0]=='I' && serial_buffer[2]=='='){
      00079A 78 53            [12] 1695 	mov	r0,#_loop_serial_buffer_65536_83
      00079C E2               [24] 1696 	movx	a,@r0
      00079D FB               [12] 1697 	mov	r3,a
      00079E BB 49 35         [24] 1698 	cjne	r3,#0x49,00118$
      0007A1 78 55            [12] 1699 	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0002)
      0007A3 E2               [24] 1700 	movx	a,@r0
      0007A4 FB               [12] 1701 	mov	r3,a
      0007A5 BB 3D 2E         [24] 1702 	cjne	r3,#0x3d,00118$
                                   1703 ;	main.c:219: extractAndAssign(serial_buffer);
      0007A8 90 00 53         [24] 1704 	mov	dptr,#_loop_serial_buffer_65536_83
      0007AB 75 F0 60         [24] 1705 	mov	b,#0x60
      0007AE C0 05            [24] 1706 	push	ar5
      0007B0 12 02 90         [24] 1707 	lcall	_extractAndAssign
                                   1708 ;	main.c:220: _w5500_set_ip(ip);
      0007B3 78 F1            [12] 1709 	mov	r0,#__w5500_write_PARM_3
      0007B5 74 09            [12] 1710 	mov	a,#_ip
      0007B7 F2               [24] 1711 	movx	@r0,a
      0007B8 08               [12] 1712 	inc	r0
      0007B9 E4               [12] 1713 	clr	a
      0007BA F2               [24] 1714 	movx	@r0,a
      0007BB 08               [12] 1715 	inc	r0
      0007BC 74 60            [12] 1716 	mov	a,#0x60
      0007BE F2               [24] 1717 	movx	@r0,a
      0007BF 78 F0            [12] 1718 	mov	r0,#__w5500_write_PARM_2
      0007C1 E4               [12] 1719 	clr	a
      0007C2 F2               [24] 1720 	movx	@r0,a
      0007C3 78 F4            [12] 1721 	mov	r0,#__w5500_write_PARM_4
      0007C5 74 04            [12] 1722 	mov	a,#0x04
      0007C7 F2               [24] 1723 	movx	@r0,a
      0007C8 08               [12] 1724 	inc	r0
      0007C9 E4               [12] 1725 	clr	a
      0007CA F2               [24] 1726 	movx	@r0,a
      0007CB 90 00 0F         [24] 1727 	mov	dptr,#0x000f
      0007CE 12 13 50         [24] 1728 	lcall	__w5500_write
      0007D1 D0 05            [24] 1729 	pop	ar5
      0007D3 02 08 AC         [24] 1730 	ljmp	00202$
      0007D6                       1731 00118$:
                                   1732 ;	main.c:221: } else if(serial_buffer[0]=='R' && serial_buffer[3]=='='){
      0007D6 78 53            [12] 1733 	mov	r0,#_loop_serial_buffer_65536_83
      0007D8 E2               [24] 1734 	movx	a,@r0
      0007D9 FB               [12] 1735 	mov	r3,a
      0007DA BB 52 10         [24] 1736 	cjne	r3,#0x52,00114$
      0007DD 78 56            [12] 1737 	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0003)
      0007DF E2               [24] 1738 	movx	a,@r0
      0007E0 FB               [12] 1739 	mov	r3,a
      0007E1 BB 3D 09         [24] 1740 	cjne	r3,#0x3d,00114$
                                   1741 ;	main.c:222: RTU_Address = serial_buffer[4];
      0007E4 78 57            [12] 1742 	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0004)
      0007E6 79 17            [12] 1743 	mov	r1,#_RTU_Address
      0007E8 E2               [24] 1744 	movx	a,@r0
      0007E9 F3               [24] 1745 	movx	@r1,a
      0007EA 02 08 AC         [24] 1746 	ljmp	00202$
      0007ED                       1747 00114$:
                                   1748 ;	main.c:223: } else if(serial_buffer[0]=='G' && serial_buffer[4]=='='){
      0007ED 78 53            [12] 1749 	mov	r0,#_loop_serial_buffer_65536_83
      0007EF E2               [24] 1750 	movx	a,@r0
      0007F0 FB               [12] 1751 	mov	r3,a
      0007F1 BB 47 35         [24] 1752 	cjne	r3,#0x47,00110$
      0007F4 78 57            [12] 1753 	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0004)
      0007F6 E2               [24] 1754 	movx	a,@r0
      0007F7 FB               [12] 1755 	mov	r3,a
      0007F8 BB 3D 2E         [24] 1756 	cjne	r3,#0x3d,00110$
                                   1757 ;	main.c:224: extractAndAssign(serial_buffer);
      0007FB 90 00 53         [24] 1758 	mov	dptr,#_loop_serial_buffer_65536_83
      0007FE 75 F0 60         [24] 1759 	mov	b,#0x60
      000801 C0 05            [24] 1760 	push	ar5
      000803 12 02 90         [24] 1761 	lcall	_extractAndAssign
                                   1762 ;	main.c:225: _w5500_set_gateway(gateway);
      000806 78 F1            [12] 1763 	mov	r0,#__w5500_write_PARM_3
      000808 74 01            [12] 1764 	mov	a,#_gateway
      00080A F2               [24] 1765 	movx	@r0,a
      00080B 08               [12] 1766 	inc	r0
      00080C E4               [12] 1767 	clr	a
      00080D F2               [24] 1768 	movx	@r0,a
      00080E 08               [12] 1769 	inc	r0
      00080F 74 60            [12] 1770 	mov	a,#0x60
      000811 F2               [24] 1771 	movx	@r0,a
      000812 78 F0            [12] 1772 	mov	r0,#__w5500_write_PARM_2
      000814 E4               [12] 1773 	clr	a
      000815 F2               [24] 1774 	movx	@r0,a
      000816 78 F4            [12] 1775 	mov	r0,#__w5500_write_PARM_4
      000818 74 04            [12] 1776 	mov	a,#0x04
      00081A F2               [24] 1777 	movx	@r0,a
      00081B 08               [12] 1778 	inc	r0
      00081C E4               [12] 1779 	clr	a
      00081D F2               [24] 1780 	movx	@r0,a
      00081E 90 00 01         [24] 1781 	mov	dptr,#0x0001
      000821 12 13 50         [24] 1782 	lcall	__w5500_write
      000824 D0 05            [24] 1783 	pop	ar5
      000826 02 08 AC         [24] 1784 	ljmp	00202$
      000829                       1785 00110$:
                                   1786 ;	main.c:226: } else if(serial_buffer[0]=='S' && serial_buffer[3]=='='){
      000829 78 53            [12] 1787 	mov	r0,#_loop_serial_buffer_65536_83
      00082B E2               [24] 1788 	movx	a,@r0
      00082C FB               [12] 1789 	mov	r3,a
      00082D BB 53 34         [24] 1790 	cjne	r3,#0x53,00106$
      000830 78 56            [12] 1791 	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0003)
      000832 E2               [24] 1792 	movx	a,@r0
      000833 FB               [12] 1793 	mov	r3,a
      000834 BB 3D 2D         [24] 1794 	cjne	r3,#0x3d,00106$
                                   1795 ;	main.c:227: extractAndAssign(serial_buffer);
      000837 90 00 53         [24] 1796 	mov	dptr,#_loop_serial_buffer_65536_83
      00083A 75 F0 60         [24] 1797 	mov	b,#0x60
      00083D C0 05            [24] 1798 	push	ar5
      00083F 12 02 90         [24] 1799 	lcall	_extractAndAssign
                                   1800 ;	main.c:228: _w5500_set_subnet(subnet);
      000842 78 F1            [12] 1801 	mov	r0,#__w5500_write_PARM_3
      000844 74 05            [12] 1802 	mov	a,#_subnet
      000846 F2               [24] 1803 	movx	@r0,a
      000847 08               [12] 1804 	inc	r0
      000848 E4               [12] 1805 	clr	a
      000849 F2               [24] 1806 	movx	@r0,a
      00084A 08               [12] 1807 	inc	r0
      00084B 74 60            [12] 1808 	mov	a,#0x60
      00084D F2               [24] 1809 	movx	@r0,a
      00084E 78 F0            [12] 1810 	mov	r0,#__w5500_write_PARM_2
      000850 E4               [12] 1811 	clr	a
      000851 F2               [24] 1812 	movx	@r0,a
      000852 78 F4            [12] 1813 	mov	r0,#__w5500_write_PARM_4
      000854 74 04            [12] 1814 	mov	a,#0x04
      000856 F2               [24] 1815 	movx	@r0,a
      000857 08               [12] 1816 	inc	r0
      000858 E4               [12] 1817 	clr	a
      000859 F2               [24] 1818 	movx	@r0,a
      00085A 90 00 05         [24] 1819 	mov	dptr,#0x0005
      00085D 12 13 50         [24] 1820 	lcall	__w5500_write
      000860 D0 05            [24] 1821 	pop	ar5
      000862 80 48            [24] 1822 	sjmp	00202$
      000864                       1823 00106$:
                                   1824 ;	main.c:229: } else if(serial_buffer[0]=='M' && serial_buffer[3]=='='){
      000864 78 53            [12] 1825 	mov	r0,#_loop_serial_buffer_65536_83
      000866 E2               [24] 1826 	movx	a,@r0
      000867 FB               [12] 1827 	mov	r3,a
      000868 BB 4D 34         [24] 1828 	cjne	r3,#0x4d,00102$
      00086B 78 56            [12] 1829 	mov	r0,#(_loop_serial_buffer_65536_83 + 0x0003)
      00086D E2               [24] 1830 	movx	a,@r0
      00086E FB               [12] 1831 	mov	r3,a
      00086F BB 3D 2D         [24] 1832 	cjne	r3,#0x3d,00102$
                                   1833 ;	main.c:230: parseMAC(serial_buffer);
      000872 90 00 53         [24] 1834 	mov	dptr,#_loop_serial_buffer_65536_83
      000875 75 F0 60         [24] 1835 	mov	b,#0x60
      000878 C0 05            [24] 1836 	push	ar5
      00087A 12 01 8C         [24] 1837 	lcall	_parseMAC
                                   1838 ;	main.c:231: _w5500_set_mac(mac);
      00087D 78 F1            [12] 1839 	mov	r0,#__w5500_write_PARM_3
      00087F 74 0D            [12] 1840 	mov	a,#_mac
      000881 F2               [24] 1841 	movx	@r0,a
      000882 08               [12] 1842 	inc	r0
      000883 E4               [12] 1843 	clr	a
      000884 F2               [24] 1844 	movx	@r0,a
      000885 08               [12] 1845 	inc	r0
      000886 74 60            [12] 1846 	mov	a,#0x60
      000888 F2               [24] 1847 	movx	@r0,a
      000889 78 F0            [12] 1848 	mov	r0,#__w5500_write_PARM_2
      00088B E4               [12] 1849 	clr	a
      00088C F2               [24] 1850 	movx	@r0,a
      00088D 78 F4            [12] 1851 	mov	r0,#__w5500_write_PARM_4
      00088F 74 06            [12] 1852 	mov	a,#0x06
      000891 F2               [24] 1853 	movx	@r0,a
      000892 08               [12] 1854 	inc	r0
      000893 E4               [12] 1855 	clr	a
      000894 F2               [24] 1856 	movx	@r0,a
      000895 90 00 09         [24] 1857 	mov	dptr,#0x0009
      000898 12 13 50         [24] 1858 	lcall	__w5500_write
      00089B D0 05            [24] 1859 	pop	ar5
      00089D 80 0D            [24] 1860 	sjmp	00202$
      00089F                       1861 00102$:
                                   1862 ;	main.c:233: _serial_putstr("\n\rInvalid Command");
      00089F 90 17 12         [24] 1863 	mov	dptr,#___str_20
      0008A2 75 F0 80         [24] 1864 	mov	b,#0x80
      0008A5 C0 05            [24] 1865 	push	ar5
      0008A7 12 0C 2B         [24] 1866 	lcall	__serial_putstr
      0008AA D0 05            [24] 1867 	pop	ar5
                                   1868 ;	main.c:236: for(unsigned char i = 0; i< 20; i++){
      0008AC                       1869 00202$:
      0008AC 7B 00            [12] 1870 	mov	r3,#0x00
      0008AE                       1871 00172$:
      0008AE BB 14 00         [24] 1872 	cjne	r3,#0x14,00376$
      0008B1                       1873 00376$:
      0008B1 50 09            [24] 1874 	jnc	00121$
                                   1875 ;	main.c:237: serial_buffer[i] = '\0';
      0008B3 EB               [12] 1876 	mov	a,r3
      0008B4 24 53            [12] 1877 	add	a,#_loop_serial_buffer_65536_83
      0008B6 F8               [12] 1878 	mov	r0,a
      0008B7 E4               [12] 1879 	clr	a
      0008B8 F2               [24] 1880 	movx	@r0,a
                                   1881 ;	main.c:236: for(unsigned char i = 0; i< 20; i++){
      0008B9 0B               [12] 1882 	inc	r3
      0008BA 80 F2            [24] 1883 	sjmp	00172$
      0008BC                       1884 00121$:
                                   1885 ;	main.c:239: _serial_putstr("\n");
      0008BC 90 17 24         [24] 1886 	mov	dptr,#___str_21
      0008BF 75 F0 80         [24] 1887 	mov	b,#0x80
      0008C2 C0 05            [24] 1888 	push	ar5
      0008C4 12 0C 2B         [24] 1889 	lcall	__serial_putstr
      0008C7 D0 05            [24] 1890 	pop	ar5
                                   1891 ;	main.c:240: serial_index=0;
      0008C9 78 67            [12] 1892 	mov	r0,#_loop_serial_index_65536_83
      0008CB E4               [12] 1893 	clr	a
      0008CC F2               [24] 1894 	movx	@r0,a
                                   1895 ;	main.c:242: for (unsigned char charIndex = 0; charIndex < inputLength; charIndex++)
      0008CD 80 38            [24] 1896 	sjmp	00125$
      0008CF                       1897 00204$:
      0008CF 78 67            [12] 1898 	mov	r0,#_loop_serial_index_65536_83
      0008D1 E2               [24] 1899 	movx	a,@r0
      0008D2 FB               [12] 1900 	mov	r3,a
      0008D3 7A 00            [12] 1901 	mov	r2,#0x00
      0008D5                       1902 00175$:
      0008D5 78 68            [12] 1903 	mov	r0,#_loop_inputLength_131073_85
      0008D7 C3               [12] 1904 	clr	c
      0008D8 E2               [24] 1905 	movx	a,@r0
      0008D9 F5 F0            [12] 1906 	mov	b,a
      0008DB EA               [12] 1907 	mov	a,r2
      0008DC 95 F0            [12] 1908 	subb	a,b
      0008DE 50 23            [24] 1909 	jnc	00229$
                                   1910 ;	main.c:244: serial_buffer[serial_index] = serialInput[charIndex];
      0008E0 C0 05            [24] 1911 	push	ar5
      0008E2 EB               [12] 1912 	mov	a,r3
      0008E3 24 53            [12] 1913 	add	a,#_loop_serial_buffer_65536_83
      0008E5 F9               [12] 1914 	mov	r1,a
      0008E6 78 18            [12] 1915 	mov	r0,#_serialInput
      0008E8 E2               [24] 1916 	movx	a,@r0
      0008E9 2A               [12] 1917 	add	a,r2
      0008EA FD               [12] 1918 	mov	r5,a
      0008EB 08               [12] 1919 	inc	r0
      0008EC E2               [24] 1920 	movx	a,@r0
      0008ED 34 00            [12] 1921 	addc	a,#0x00
      0008EF FE               [12] 1922 	mov	r6,a
      0008F0 08               [12] 1923 	inc	r0
      0008F1 E2               [24] 1924 	movx	a,@r0
      0008F2 FF               [12] 1925 	mov	r7,a
      0008F3 8D 82            [24] 1926 	mov	dpl,r5
      0008F5 8E 83            [24] 1927 	mov	dph,r6
      0008F7 8F F0            [24] 1928 	mov	b,r7
      0008F9 12 15 99         [24] 1929 	lcall	__gptrget
      0008FC F3               [24] 1930 	movx	@r1,a
                                   1931 ;	main.c:245: serial_index++;
      0008FD 0B               [12] 1932 	inc	r3
                                   1933 ;	main.c:242: for (unsigned char charIndex = 0; charIndex < inputLength; charIndex++)
      0008FE 0A               [12] 1934 	inc	r2
      0008FF D0 05            [24] 1935 	pop	ar5
      000901 80 D2            [24] 1936 	sjmp	00175$
      000903                       1937 00229$:
      000903 78 67            [12] 1938 	mov	r0,#_loop_serial_index_65536_83
      000905 EB               [12] 1939 	mov	a,r3
      000906 F2               [24] 1940 	movx	@r0,a
      000907                       1941 00125$:
                                   1942 ;	main.c:248: _serial_putstr(serialInput);
      000907 78 18            [12] 1943 	mov	r0,#_serialInput
      000909 E2               [24] 1944 	movx	a,@r0
      00090A F5 82            [12] 1945 	mov	dpl,a
      00090C 08               [12] 1946 	inc	r0
      00090D E2               [24] 1947 	movx	a,@r0
      00090E F5 83            [12] 1948 	mov	dph,a
      000910 08               [12] 1949 	inc	r0
      000911 E2               [24] 1950 	movx	a,@r0
      000912 F5 F0            [12] 1951 	mov	b,a
      000914 C0 05            [24] 1952 	push	ar5
      000916 12 0C 2B         [24] 1953 	lcall	__serial_putstr
      000919 D0 05            [24] 1954 	pop	ar5
                                   1955 ;	main.c:256: while (_w5500_bytesinbuffer(SOCKET0)) {
      00091B                       1956 00207$:
      00091B 7F 00            [12] 1957 	mov	r7,#0x00
      00091D 8D 06            [24] 1958 	mov	ar6,r5
      00091F                       1959 00135$:
      00091F 75 82 00         [24] 1960 	mov	dpl,#0x00
      000922 C0 07            [24] 1961 	push	ar7
      000924 C0 06            [24] 1962 	push	ar6
      000926 12 11 68         [24] 1963 	lcall	__w5500_bytesinbuffer
      000929 E5 82            [12] 1964 	mov	a,dpl
      00092B 85 83 F0         [24] 1965 	mov	b,dph
      00092E D0 06            [24] 1966 	pop	ar6
      000930 D0 07            [24] 1967 	pop	ar7
      000932 45 F0            [12] 1968 	orl	a,b
      000934 60 5D            [24] 1969 	jz	00230$
                                   1970 ;	main.c:257: P1_0 = 0;
                                   1971 ;	assignBit
      000936 C2 90            [12] 1972 	clr	_P1_0
                                   1973 ;	main.c:258: P1_1 = 1;
                                   1974 ;	assignBit
      000938 D2 91            [12] 1975 	setb	_P1_1
                                   1976 ;	main.c:259: ++read;
      00093A 0F               [12] 1977 	inc	r7
                                   1978 ;	main.c:260: if (read < 9) {
      00093B BF 09 00         [24] 1979 	cjne	r7,#0x09,00380$
      00093E                       1980 00380$:
      00093E 50 10            [24] 1981 	jnc	00132$
                                   1982 ;	main.c:261: _w5500_readchar(SOCKET0);
      000940 75 82 00         [24] 1983 	mov	dpl,#0x00
      000943 C0 07            [24] 1984 	push	ar7
      000945 C0 06            [24] 1985 	push	ar6
      000947 12 11 9F         [24] 1986 	lcall	__w5500_readchar
      00094A D0 06            [24] 1987 	pop	ar6
      00094C D0 07            [24] 1988 	pop	ar7
                                   1989 ;	main.c:262: continue;
      00094E 80 CF            [24] 1990 	sjmp	00135$
      000950                       1991 00132$:
                                   1992 ;	main.c:264: rec_char_byte = _w5500_readchar(SOCKET0);
      000950 75 82 00         [24] 1993 	mov	dpl,#0x00
      000953 C0 07            [24] 1994 	push	ar7
      000955 C0 06            [24] 1995 	push	ar6
      000957 12 11 9F         [24] 1996 	lcall	__w5500_readchar
      00095A AB 82            [24] 1997 	mov	r3,dpl
      00095C D0 06            [24] 1998 	pop	ar6
      00095E D0 07            [24] 1999 	pop	ar7
                                   2000 ;	main.c:265: if (islower(rec_char_byte)) {
      000960 8B 02            [24] 2001 	mov	ar2,r3
                                   2002 ;	/usr/bin/../share/sdcc/include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
      000962 BA 61 00         [24] 2003 	cjne	r2,#0x61,00382$
      000965                       2004 00382$:
      000965 40 1E            [24] 2005 	jc	00134$
      000967 EA               [12] 2006 	mov	a,r2
      000968 24 85            [12] 2007 	add	a,#0xff - 0x7a
      00096A 40 19            [24] 2008 	jc	00134$
                                   2009 ;	main.c:266: rec_char_byte = toupper(rec_char_byte);
      00096C 8B 02            [24] 2010 	mov	ar2,r3
      00096E 7C 00            [12] 2011 	mov	r4,#0x00
      000970 8A 82            [24] 2012 	mov	dpl,r2
      000972 8C 83            [24] 2013 	mov	dph,r4
      000974 C0 07            [24] 2014 	push	ar7
      000976 C0 06            [24] 2015 	push	ar6
      000978 12 15 76         [24] 2016 	lcall	_toupper
      00097B AA 82            [24] 2017 	mov	r2,dpl
      00097D AC 83            [24] 2018 	mov	r4,dph
      00097F D0 06            [24] 2019 	pop	ar6
      000981 D0 07            [24] 2020 	pop	ar7
      000983 8A 03            [24] 2021 	mov	ar3,r2
      000985                       2022 00134$:
                                   2023 ;	main.c:268: input_buffer[input_index] = rec_char_byte;
      000985 EE               [12] 2024 	mov	a,r6
      000986 24 2B            [12] 2025 	add	a,#_loop_input_buffer_65536_83
      000988 F8               [12] 2026 	mov	r0,a
      000989 EB               [12] 2027 	mov	a,r3
      00098A F2               [24] 2028 	movx	@r0,a
                                   2029 ;	main.c:269: input_index++;
      00098B 0E               [12] 2030 	inc	r6
                                   2031 ;	main.c:270: recieved_udp = 1;
      00098C 78 29            [12] 2032 	mov	r0,#_loop_recieved_udp_65536_83
      00098E 74 01            [12] 2033 	mov	a,#0x01
      000990 F2               [24] 2034 	movx	@r0,a
      000991 80 8C            [24] 2035 	sjmp	00135$
      000993                       2036 00230$:
      000993 8E 05            [24] 2037 	mov	ar5,r6
                                   2038 ;	main.c:272: if(recieved_udp){
      000995 78 29            [12] 2039 	mov	r0,#_loop_recieved_udp_65536_83
      000997 E2               [24] 2040 	movx	a,@r0
      000998 70 03            [24] 2041 	jnz	00385$
      00099A 02 0A 80         [24] 2042 	ljmp	00147$
      00099D                       2043 00385$:
                                   2044 ;	main.c:273: P1_0 = 1;
                                   2045 ;	assignBit
      00099D D2 90            [12] 2046 	setb	_P1_0
                                   2047 ;	main.c:274: P1_1 = 0;
                                   2048 ;	assignBit
      00099F C2 91            [12] 2049 	clr	_P1_1
                                   2050 ;	main.c:275: if(input_buffer[0] == ':' && input_buffer[1] == '<' && input_buffer[input_index-1] == '>'){
      0009A1 78 2B            [12] 2051 	mov	r0,#_loop_input_buffer_65536_83
      0009A3 E2               [24] 2052 	movx	a,@r0
      0009A4 FF               [12] 2053 	mov	r7,a
      0009A5 BF 3A 4D         [24] 2054 	cjne	r7,#0x3a,00141$
      0009A8 78 2C            [12] 2055 	mov	r0,#(_loop_input_buffer_65536_83 + 0x0001)
      0009AA E2               [24] 2056 	movx	a,@r0
      0009AB FF               [12] 2057 	mov	r7,a
      0009AC BF 3C 46         [24] 2058 	cjne	r7,#0x3c,00141$
      0009AF 8E 07            [24] 2059 	mov	ar7,r6
      0009B1 EF               [12] 2060 	mov	a,r7
      0009B2 14               [12] 2061 	dec	a
      0009B3 24 2B            [12] 2062 	add	a,#_loop_input_buffer_65536_83
      0009B5 F9               [12] 2063 	mov	r1,a
      0009B6 E3               [24] 2064 	movx	a,@r1
      0009B7 FC               [12] 2065 	mov	r4,a
      0009B8 BC 3E 3A         [24] 2066 	cjne	r4,#0x3e,00141$
                                   2067 ;	main.c:276: input_buffer[1] = '[';
      0009BB 78 2C            [12] 2068 	mov	r0,#(_loop_input_buffer_65536_83 + 0x0001)
      0009BD 74 5B            [12] 2069 	mov	a,#0x5b
      0009BF F2               [24] 2070 	movx	@r0,a
                                   2071 ;	main.c:277: input_buffer[input_index-1] = ']';
      0009C0 EF               [12] 2072 	mov	a,r7
      0009C1 14               [12] 2073 	dec	a
      0009C2 24 2B            [12] 2074 	add	a,#_loop_input_buffer_65536_83
      0009C4 F8               [12] 2075 	mov	r0,a
      0009C5 74 5D            [12] 2076 	mov	a,#0x5d
      0009C7 F2               [24] 2077 	movx	@r0,a
                                   2078 ;	main.c:278: if(input_buffer[2] == RTU_Address){
      0009C8 78 2D            [12] 2079 	mov	r0,#(_loop_input_buffer_65536_83 + 0x0002)
      0009CA E2               [24] 2080 	movx	a,@r0
      0009CB FF               [12] 2081 	mov	r7,a
      0009CC 78 17            [12] 2082 	mov	r0,#_RTU_Address
      0009CE E2               [24] 2083 	movx	a,@r0
      0009CF B5 07 02         [24] 2084 	cjne	a,ar7,00392$
      0009D2 80 03            [24] 2085 	sjmp	00393$
      0009D4                       2086 00392$:
      0009D4 02 0A 58         [24] 2087 	ljmp	00216$
      0009D7                       2088 00393$:
                                   2089 ;	main.c:279: _w5500_writeto(SOCKET0, input_buffer, input_index);
      0009D7 78 E5            [12] 2090 	mov	r0,#__w5500_writeto_PARM_2
      0009D9 74 2B            [12] 2091 	mov	a,#_loop_input_buffer_65536_83
      0009DB F2               [24] 2092 	movx	@r0,a
      0009DC 08               [12] 2093 	inc	r0
      0009DD E4               [12] 2094 	clr	a
      0009DE F2               [24] 2095 	movx	@r0,a
      0009DF 08               [12] 2096 	inc	r0
      0009E0 74 60            [12] 2097 	mov	a,#0x60
      0009E2 F2               [24] 2098 	movx	@r0,a
      0009E3 78 E8            [12] 2099 	mov	r0,#__w5500_writeto_PARM_3
      0009E5 EE               [12] 2100 	mov	a,r6
      0009E6 F2               [24] 2101 	movx	@r0,a
      0009E7 75 82 00         [24] 2102 	mov	dpl,#0x00
      0009EA 12 10 CA         [24] 2103 	lcall	__w5500_writeto
                                   2104 ;	main.c:280: _w5500_send(SOCKET0);
      0009ED 75 82 00         [24] 2105 	mov	dpl,#0x00
      0009F0 12 12 69         [24] 2106 	lcall	__w5500_send
      0009F3 80 63            [24] 2107 	sjmp	00216$
      0009F5                       2108 00141$:
                                   2109 ;	main.c:283: unsigned char fail[14] = "Invalid Format";
      0009F5 78 69            [12] 2110 	mov	r0,#_loop_fail_262145_107
      0009F7 74 49            [12] 2111 	mov	a,#0x49
      0009F9 F2               [24] 2112 	movx	@r0,a
      0009FA 78 6A            [12] 2113 	mov	r0,#(_loop_fail_262145_107 + 0x0001)
      0009FC 74 6E            [12] 2114 	mov	a,#0x6e
      0009FE F2               [24] 2115 	movx	@r0,a
      0009FF 78 6B            [12] 2116 	mov	r0,#(_loop_fail_262145_107 + 0x0002)
      000A01 74 76            [12] 2117 	mov	a,#0x76
      000A03 F2               [24] 2118 	movx	@r0,a
      000A04 78 6C            [12] 2119 	mov	r0,#(_loop_fail_262145_107 + 0x0003)
      000A06 74 61            [12] 2120 	mov	a,#0x61
      000A08 F2               [24] 2121 	movx	@r0,a
      000A09 78 6D            [12] 2122 	mov	r0,#(_loop_fail_262145_107 + 0x0004)
      000A0B 74 6C            [12] 2123 	mov	a,#0x6c
      000A0D F2               [24] 2124 	movx	@r0,a
      000A0E 78 6E            [12] 2125 	mov	r0,#(_loop_fail_262145_107 + 0x0005)
      000A10 74 69            [12] 2126 	mov	a,#0x69
      000A12 F2               [24] 2127 	movx	@r0,a
      000A13 78 6F            [12] 2128 	mov	r0,#(_loop_fail_262145_107 + 0x0006)
      000A15 74 64            [12] 2129 	mov	a,#0x64
      000A17 F2               [24] 2130 	movx	@r0,a
      000A18 78 70            [12] 2131 	mov	r0,#(_loop_fail_262145_107 + 0x0007)
      000A1A 74 20            [12] 2132 	mov	a,#0x20
      000A1C F2               [24] 2133 	movx	@r0,a
      000A1D 78 71            [12] 2134 	mov	r0,#(_loop_fail_262145_107 + 0x0008)
      000A1F 74 46            [12] 2135 	mov	a,#0x46
      000A21 F2               [24] 2136 	movx	@r0,a
      000A22 78 72            [12] 2137 	mov	r0,#(_loop_fail_262145_107 + 0x0009)
      000A24 74 6F            [12] 2138 	mov	a,#0x6f
      000A26 F2               [24] 2139 	movx	@r0,a
      000A27 78 73            [12] 2140 	mov	r0,#(_loop_fail_262145_107 + 0x000a)
      000A29 74 72            [12] 2141 	mov	a,#0x72
      000A2B F2               [24] 2142 	movx	@r0,a
      000A2C 78 74            [12] 2143 	mov	r0,#(_loop_fail_262145_107 + 0x000b)
      000A2E 74 6D            [12] 2144 	mov	a,#0x6d
      000A30 F2               [24] 2145 	movx	@r0,a
      000A31 78 75            [12] 2146 	mov	r0,#(_loop_fail_262145_107 + 0x000c)
      000A33 74 61            [12] 2147 	mov	a,#0x61
      000A35 F2               [24] 2148 	movx	@r0,a
      000A36 78 76            [12] 2149 	mov	r0,#(_loop_fail_262145_107 + 0x000d)
      000A38 74 74            [12] 2150 	mov	a,#0x74
      000A3A F2               [24] 2151 	movx	@r0,a
                                   2152 ;	main.c:284: _w5500_writeto(SOCKET0, fail, 13);
      000A3B 78 E5            [12] 2153 	mov	r0,#__w5500_writeto_PARM_2
      000A3D 74 69            [12] 2154 	mov	a,#_loop_fail_262145_107
      000A3F F2               [24] 2155 	movx	@r0,a
      000A40 08               [12] 2156 	inc	r0
      000A41 E4               [12] 2157 	clr	a
      000A42 F2               [24] 2158 	movx	@r0,a
      000A43 08               [12] 2159 	inc	r0
      000A44 74 60            [12] 2160 	mov	a,#0x60
      000A46 F2               [24] 2161 	movx	@r0,a
      000A47 78 E8            [12] 2162 	mov	r0,#__w5500_writeto_PARM_3
      000A49 74 0D            [12] 2163 	mov	a,#0x0d
      000A4B F2               [24] 2164 	movx	@r0,a
      000A4C 75 82 00         [24] 2165 	mov	dpl,#0x00
      000A4F 12 10 CA         [24] 2166 	lcall	__w5500_writeto
                                   2167 ;	main.c:285: _w5500_send(SOCKET0);
      000A52 75 82 00         [24] 2168 	mov	dpl,#0x00
      000A55 12 12 69         [24] 2169 	lcall	__w5500_send
                                   2170 ;	main.c:287: for(unsigned char j = 0; j < 20; j++){
      000A58                       2171 00216$:
      000A58 7F 00            [12] 2172 	mov	r7,#0x00
      000A5A                       2173 00178$:
      000A5A BF 14 00         [24] 2174 	cjne	r7,#0x14,00394$
      000A5D                       2175 00394$:
      000A5D 50 0B            [24] 2176 	jnc	00145$
                                   2177 ;	main.c:288: P2_4 = !P2_4;
      000A5F B2 A4            [12] 2178 	cpl	_P2_4
                                   2179 ;	main.c:289: input_buffer[j] = '\0';
      000A61 EF               [12] 2180 	mov	a,r7
      000A62 24 2B            [12] 2181 	add	a,#_loop_input_buffer_65536_83
      000A64 F8               [12] 2182 	mov	r0,a
      000A65 E4               [12] 2183 	clr	a
      000A66 F2               [24] 2184 	movx	@r0,a
                                   2185 ;	main.c:287: for(unsigned char j = 0; j < 20; j++){
      000A67 0F               [12] 2186 	inc	r7
      000A68 80 F0            [24] 2187 	sjmp	00178$
      000A6A                       2188 00145$:
                                   2189 ;	main.c:291: input_index = 0;
      000A6A 7D 00            [12] 2190 	mov	r5,#0x00
                                   2191 ;	main.c:292: recieved_udp = 0;
      000A6C 78 29            [12] 2192 	mov	r0,#_loop_recieved_udp_65536_83
      000A6E E4               [12] 2193 	clr	a
      000A6F F2               [24] 2194 	movx	@r0,a
                                   2195 ;	main.c:293: _w5500_clear_SNIR(SOCKET1);
      000A70 75 82 01         [24] 2196 	mov	dpl,#0x01
      000A73 C0 05            [24] 2197 	push	ar5
      000A75 12 0F 9C         [24] 2198 	lcall	__w5500_clear_SNIR
                                   2199 ;	main.c:294: _w5500_clear_SNIR(SOCKET0);
      000A78 75 82 00         [24] 2200 	mov	dpl,#0x00
      000A7B 12 0F 9C         [24] 2201 	lcall	__w5500_clear_SNIR
      000A7E D0 05            [24] 2202 	pop	ar5
      000A80                       2203 00147$:
                                   2204 ;	main.c:300: unsigned char status = _w5500_get_status(SOCKET1);
      000A80 75 82 01         [24] 2205 	mov	dpl,#0x01
      000A83 C0 05            [24] 2206 	push	ar5
      000A85 12 0F EF         [24] 2207 	lcall	__w5500_get_status
      000A88 AF 82            [24] 2208 	mov	r7,dpl
      000A8A D0 05            [24] 2209 	pop	ar5
                                   2210 ;	main.c:301: count=0;
      000A8C 7E 00            [12] 2211 	mov	r6,#0x00
                                   2212 ;	main.c:303: if (status == SOCK_ESTABLISHED) {
      000A8E BF 17 02         [24] 2213 	cjne	r7,#0x17,00396$
      000A91 80 03            [24] 2214 	sjmp	00397$
      000A93                       2215 00396$:
      000A93 02 0B 96         [24] 2216 	ljmp	00163$
      000A96                       2217 00397$:
                                   2218 ;	main.c:304: while (_w5500_bytesinbuffer(SOCKET1)) {
      000A96                       2219 00150$:
      000A96 75 82 01         [24] 2220 	mov	dpl,#0x01
      000A99 C0 07            [24] 2221 	push	ar7
      000A9B C0 06            [24] 2222 	push	ar6
      000A9D C0 05            [24] 2223 	push	ar5
      000A9F 12 11 68         [24] 2224 	lcall	__w5500_bytesinbuffer
      000AA2 E5 82            [12] 2225 	mov	a,dpl
      000AA4 85 83 F0         [24] 2226 	mov	b,dph
      000AA7 D0 05            [24] 2227 	pop	ar5
      000AA9 D0 06            [24] 2228 	pop	ar6
      000AAB D0 07            [24] 2229 	pop	ar7
      000AAD 45 F0            [12] 2230 	orl	a,b
      000AAF 60 53            [24] 2231 	jz	00152$
                                   2232 ;	main.c:305: P1_0 = 0;
                                   2233 ;	assignBit
      000AB1 C2 90            [12] 2234 	clr	_P1_0
                                   2235 ;	main.c:306: P1_1 = 1;
                                   2236 ;	assignBit
      000AB3 D2 91            [12] 2237 	setb	_P1_1
                                   2238 ;	main.c:307: rec_char_byte_tcp = _w5500_readchar(SOCKET1);
      000AB5 75 82 01         [24] 2239 	mov	dpl,#0x01
      000AB8 C0 07            [24] 2240 	push	ar7
      000ABA C0 06            [24] 2241 	push	ar6
      000ABC C0 05            [24] 2242 	push	ar5
      000ABE 12 11 9F         [24] 2243 	lcall	__w5500_readchar
      000AC1 AC 82            [24] 2244 	mov	r4,dpl
      000AC3 D0 05            [24] 2245 	pop	ar5
      000AC5 D0 06            [24] 2246 	pop	ar6
      000AC7 D0 07            [24] 2247 	pop	ar7
                                   2248 ;	main.c:308: if (islower(rec_char_byte_tcp)) {
      000AC9 8C 03            [24] 2249 	mov	ar3,r4
                                   2250 ;	/usr/bin/../share/sdcc/include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
      000ACB BB 61 00         [24] 2251 	cjne	r3,#0x61,00399$
      000ACE                       2252 00399$:
      000ACE 40 22            [24] 2253 	jc	00149$
      000AD0 EB               [12] 2254 	mov	a,r3
      000AD1 24 85            [12] 2255 	add	a,#0xff - 0x7a
      000AD3 40 1D            [24] 2256 	jc	00149$
                                   2257 ;	main.c:309: rec_char_byte_tcp = toupper(rec_char_byte_tcp);
      000AD5 8C 02            [24] 2258 	mov	ar2,r4
      000AD7 7B 00            [12] 2259 	mov	r3,#0x00
      000AD9 8A 82            [24] 2260 	mov	dpl,r2
      000ADB 8B 83            [24] 2261 	mov	dph,r3
      000ADD C0 07            [24] 2262 	push	ar7
      000ADF C0 06            [24] 2263 	push	ar6
      000AE1 C0 05            [24] 2264 	push	ar5
      000AE3 12 15 76         [24] 2265 	lcall	_toupper
      000AE6 AA 82            [24] 2266 	mov	r2,dpl
      000AE8 AB 83            [24] 2267 	mov	r3,dph
      000AEA D0 05            [24] 2268 	pop	ar5
      000AEC D0 06            [24] 2269 	pop	ar6
      000AEE D0 07            [24] 2270 	pop	ar7
      000AF0 8A 04            [24] 2271 	mov	ar4,r2
      000AF2                       2272 00149$:
                                   2273 ;	main.c:311: arrbuf[count] = rec_char_byte_tcp;
      000AF2 EE               [12] 2274 	mov	a,r6
      000AF3 24 3F            [12] 2275 	add	a,#_loop_arrbuf_65536_83
      000AF5 F8               [12] 2276 	mov	r0,a
      000AF6 EC               [12] 2277 	mov	a,r4
      000AF7 F2               [24] 2278 	movx	@r0,a
                                   2279 ;	main.c:312: recieved_tcp = 1;
      000AF8 78 2A            [12] 2280 	mov	r0,#_loop_recieved_tcp_65536_83
      000AFA 74 01            [12] 2281 	mov	a,#0x01
      000AFC F2               [24] 2282 	movx	@r0,a
                                   2283 ;	main.c:313: count = count + 1;
      000AFD 8E 04            [24] 2284 	mov	ar4,r6
      000AFF EC               [12] 2285 	mov	a,r4
      000B00 04               [12] 2286 	inc	a
      000B01 FE               [12] 2287 	mov	r6,a
      000B02 80 92            [24] 2288 	sjmp	00150$
      000B04                       2289 00152$:
                                   2290 ;	main.c:315: if(recieved_tcp){
      000B04 78 2A            [12] 2291 	mov	r0,#_loop_recieved_tcp_65536_83
      000B06 E2               [24] 2292 	movx	a,@r0
      000B07 70 03            [24] 2293 	jnz	00402$
      000B09 02 0B 96         [24] 2294 	ljmp	00163$
      000B0C                       2295 00402$:
                                   2296 ;	main.c:316: P1_0 = 1;
                                   2297 ;	assignBit
      000B0C D2 90            [12] 2298 	setb	_P1_0
                                   2299 ;	main.c:317: P1_1 = 0;
                                   2300 ;	assignBit
      000B0E C2 91            [12] 2301 	clr	_P1_1
                                   2302 ;	main.c:318: if (arrbuf[0] == ':' && arrbuf[1] == '<' && arrbuf[count-1] == '>') {
      000B10 78 3F            [12] 2303 	mov	r0,#_loop_arrbuf_65536_83
      000B12 E2               [24] 2304 	movx	a,@r0
      000B13 FC               [12] 2305 	mov	r4,a
      000B14 BC 3A 02         [24] 2306 	cjne	r4,#0x3a,00403$
      000B17 80 03            [24] 2307 	sjmp	00404$
      000B19                       2308 00403$:
      000B19 02 0B 96         [24] 2309 	ljmp	00163$
      000B1C                       2310 00404$:
      000B1C 78 40            [12] 2311 	mov	r0,#(_loop_arrbuf_65536_83 + 0x0001)
      000B1E E2               [24] 2312 	movx	a,@r0
      000B1F FC               [12] 2313 	mov	r4,a
      000B20 BC 3C 73         [24] 2314 	cjne	r4,#0x3c,00163$
      000B23 8E 04            [24] 2315 	mov	ar4,r6
      000B25 EC               [12] 2316 	mov	a,r4
      000B26 14               [12] 2317 	dec	a
      000B27 24 3F            [12] 2318 	add	a,#_loop_arrbuf_65536_83
      000B29 F9               [12] 2319 	mov	r1,a
      000B2A E3               [24] 2320 	movx	a,@r1
      000B2B FB               [12] 2321 	mov	r3,a
      000B2C BB 3E 67         [24] 2322 	cjne	r3,#0x3e,00163$
                                   2323 ;	main.c:319: arrbuf[1] = '[';
      000B2F 78 40            [12] 2324 	mov	r0,#(_loop_arrbuf_65536_83 + 0x0001)
      000B31 74 5B            [12] 2325 	mov	a,#0x5b
      000B33 F2               [24] 2326 	movx	@r0,a
                                   2327 ;	main.c:320: arrbuf[count - 1] = ']';
      000B34 EC               [12] 2328 	mov	a,r4
      000B35 14               [12] 2329 	dec	a
      000B36 24 3F            [12] 2330 	add	a,#_loop_arrbuf_65536_83
      000B38 F8               [12] 2331 	mov	r0,a
      000B39 74 5D            [12] 2332 	mov	a,#0x5d
      000B3B F2               [24] 2333 	movx	@r0,a
                                   2334 ;	main.c:321: if(arrbuf[2] == RTU_Address){
      000B3C 78 41            [12] 2335 	mov	r0,#(_loop_arrbuf_65536_83 + 0x0002)
      000B3E E2               [24] 2336 	movx	a,@r0
      000B3F FC               [12] 2337 	mov	r4,a
      000B40 78 17            [12] 2338 	mov	r0,#_RTU_Address
      000B42 E2               [24] 2339 	movx	a,@r0
      000B43 B5 04 20         [24] 2340 	cjne	a,ar4,00154$
                                   2341 ;	main.c:322: _w5500_writeto(SOCKET1, arrbuf, count);  
      000B46 78 E5            [12] 2342 	mov	r0,#__w5500_writeto_PARM_2
      000B48 74 3F            [12] 2343 	mov	a,#_loop_arrbuf_65536_83
      000B4A F2               [24] 2344 	movx	@r0,a
      000B4B 08               [12] 2345 	inc	r0
      000B4C E4               [12] 2346 	clr	a
      000B4D F2               [24] 2347 	movx	@r0,a
      000B4E 08               [12] 2348 	inc	r0
      000B4F 74 60            [12] 2349 	mov	a,#0x60
      000B51 F2               [24] 2350 	movx	@r0,a
      000B52 78 E8            [12] 2351 	mov	r0,#__w5500_writeto_PARM_3
      000B54 EE               [12] 2352 	mov	a,r6
      000B55 F2               [24] 2353 	movx	@r0,a
      000B56 75 82 01         [24] 2354 	mov	dpl,#0x01
      000B59 C0 07            [24] 2355 	push	ar7
      000B5B C0 05            [24] 2356 	push	ar5
      000B5D 12 10 CA         [24] 2357 	lcall	__w5500_writeto
      000B60 D0 05            [24] 2358 	pop	ar5
      000B62 D0 07            [24] 2359 	pop	ar7
      000B64 80 1E            [24] 2360 	sjmp	00155$
      000B66                       2361 00154$:
                                   2362 ;	main.c:324: _w5500_writeto(SOCKET1, arrbuf, count);  
      000B66 78 E5            [12] 2363 	mov	r0,#__w5500_writeto_PARM_2
      000B68 74 3F            [12] 2364 	mov	a,#_loop_arrbuf_65536_83
      000B6A F2               [24] 2365 	movx	@r0,a
      000B6B 08               [12] 2366 	inc	r0
      000B6C E4               [12] 2367 	clr	a
      000B6D F2               [24] 2368 	movx	@r0,a
      000B6E 08               [12] 2369 	inc	r0
      000B6F 74 60            [12] 2370 	mov	a,#0x60
      000B71 F2               [24] 2371 	movx	@r0,a
      000B72 78 E8            [12] 2372 	mov	r0,#__w5500_writeto_PARM_3
      000B74 EE               [12] 2373 	mov	a,r6
      000B75 F2               [24] 2374 	movx	@r0,a
      000B76 75 82 01         [24] 2375 	mov	dpl,#0x01
      000B79 C0 07            [24] 2376 	push	ar7
      000B7B C0 05            [24] 2377 	push	ar5
      000B7D 12 10 CA         [24] 2378 	lcall	__w5500_writeto
      000B80 D0 05            [24] 2379 	pop	ar5
      000B82 D0 07            [24] 2380 	pop	ar7
      000B84                       2381 00155$:
                                   2382 ;	main.c:326: _w5500_send(SOCKET1);
      000B84 75 82 01         [24] 2383 	mov	dpl,#0x01
      000B87 C0 07            [24] 2384 	push	ar7
      000B89 C0 05            [24] 2385 	push	ar5
      000B8B 12 12 69         [24] 2386 	lcall	__w5500_send
      000B8E D0 05            [24] 2387 	pop	ar5
      000B90 D0 07            [24] 2388 	pop	ar7
                                   2389 ;	main.c:327: recieved_tcp = 0;
      000B92 78 2A            [12] 2390 	mov	r0,#_loop_recieved_tcp_65536_83
      000B94 E4               [12] 2391 	clr	a
      000B95 F2               [24] 2392 	movx	@r0,a
      000B96                       2393 00163$:
                                   2394 ;	main.c:331: if(status == SOCK_CLOSE_WAIT){
      000B96 BF 1C 02         [24] 2395 	cjne	r7,#0x1c,00411$
      000B99 80 03            [24] 2396 	sjmp	00412$
      000B9B                       2397 00411$:
      000B9B 02 07 17         [24] 2398 	ljmp	00167$
      000B9E                       2399 00412$:
                                   2400 ;	main.c:333: _w5500_clear_SNIR(SOCKET1);
      000B9E 75 82 01         [24] 2401 	mov	dpl,#0x01
      000BA1 C0 05            [24] 2402 	push	ar5
      000BA3 12 0F 9C         [24] 2403 	lcall	__w5500_clear_SNIR
                                   2404 ;	main.c:334: _w5500_clear_SNIR(SOCKET0);
      000BA6 75 82 00         [24] 2405 	mov	dpl,#0x00
      000BA9 12 0F 9C         [24] 2406 	lcall	__w5500_clear_SNIR
                                   2407 ;	main.c:335: _w5500_close(SOCKET1);
      000BAC 75 82 01         [24] 2408 	mov	dpl,#0x01
      000BAF 12 0D FF         [24] 2409 	lcall	__w5500_close
                                   2410 ;	main.c:336: setuptcp();
      000BB2 12 05 BD         [24] 2411 	lcall	_setuptcp
      000BB5 D0 05            [24] 2412 	pop	ar5
                                   2413 ;	main.c:340: }
      000BB7 02 07 17         [24] 2414 	ljmp	00167$
                                   2415 ;------------------------------------------------------------
                                   2416 ;Allocation info for local variables in function 'main'
                                   2417 ;------------------------------------------------------------
                                   2418 ;	main.c:342: void main(void) {
                                   2419 ;	-----------------------------------------
                                   2420 ;	 function main
                                   2421 ;	-----------------------------------------
      000BBA                       2422 _main:
                                   2423 ;	main.c:343: setup();
      000BBA 12 05 E4         [24] 2424 	lcall	_setup
                                   2425 ;	main.c:344: while(1) {
      000BBD                       2426 00102$:
                                   2427 ;	main.c:345: loop();
      000BBD 12 07 0B         [24] 2428 	lcall	_loop
                                   2429 ;	main.c:347: }
      000BC0 80 FB            [24] 2430 	sjmp	00102$
                                   2431 	.area CSEG    (CODE)
                                   2432 	.area CONST   (CODE)
                                   2433 	.area CONST   (CODE)
      0015B9                       2434 ___str_0:
      0015B9 20                    2435 	.ascii " "
      0015BA 00                    2436 	.db 0x00
                                   2437 	.area CSEG    (CODE)
                                   2438 	.area CONST   (CODE)
      0015BB                       2439 ___str_1:
      0015BB 0A                    2440 	.db 0x0a
      0015BC 0D                    2441 	.db 0x0d
      0015BD 43 55 52 52 45 4E 54  2442 	.ascii "CURRENT CONFIG:                    CHANGE CMD:"
             20 43 4F 4E 46 49 47
             3A 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             43 48 41 4E 47 45 20
             43 4D 44 3A
      0015EB 0A                    2443 	.db 0x0a
      0015EC 0D                    2444 	.db 0x0d
      0015ED 00                    2445 	.db 0x00
                                   2446 	.area CSEG    (CODE)
                                   2447 	.area CONST   (CODE)
      0015EE                       2448 ___str_2:
      0015EE 52 54 55 20 41 64 64  2449 	.ascii "RTU Addr (0-9): "
             72 20 28 30 2D 39 29
             3A 20
      0015FE 00                    2450 	.db 0x00
                                   2451 	.area CSEG    (CODE)
                                   2452 	.area CONST   (CODE)
      0015FF                       2453 ___str_3:
      0015FF 20 20 20 20 20 20 20  2454 	.ascii "                  RTU=#"
             20 20 20 20 20 20 20
             20 20 20 20 52 54 55
             3D 23
      001616 0A                    2455 	.db 0x0a
      001617 0D                    2456 	.db 0x0d
      001618 00                    2457 	.db 0x00
                                   2458 	.area CSEG    (CODE)
                                   2459 	.area CONST   (CODE)
      001619                       2460 ___str_4:
      001619 49 50 20 41 64 64 72  2461 	.ascii "IP Addr: "
             3A 20
      001622 00                    2462 	.db 0x00
                                   2463 	.area CSEG    (CODE)
                                   2464 	.area CONST   (CODE)
      001623                       2465 ___str_5:
      001623 20 20 20 20 20 20 20  2466 	.ascii "             IP=###.###.###.###"
             20 20 20 20 20 20 49
             50 3D 23 23 23 2E 23
             23 23 2E 23 23 23 2E
             23 23 23
      001642 0A                    2467 	.db 0x0a
      001643 0D                    2468 	.db 0x0d
      001644 00                    2469 	.db 0x00
                                   2470 	.area CSEG    (CODE)
                                   2471 	.area CONST   (CODE)
      001645                       2472 ___str_6:
      001645 53 75 62 6E 65 74 20  2473 	.ascii "Subnet Mask: "
             4D 61 73 6B 3A 20
      001652 00                    2474 	.db 0x00
                                   2475 	.area CSEG    (CODE)
                                   2476 	.area CONST   (CODE)
      001653                       2477 ___str_7:
      001653 20 20 20 20 20 20 20  2478 	.ascii "         SUB=###.###.###.###"
             20 20 53 55 42 3D 23
             23 23 2E 23 23 23 2E
             23 23 23 2E 23 23 23
      00166F 0A                    2479 	.db 0x0a
      001670 0D                    2480 	.db 0x0d
      001671 00                    2481 	.db 0x00
                                   2482 	.area CSEG    (CODE)
                                   2483 	.area CONST   (CODE)
      001672                       2484 ___str_8:
      001672 47 61 74 65 77 61 79  2485 	.ascii "Gateway: "
             3A 20
      00167B 00                    2486 	.db 0x00
                                   2487 	.area CSEG    (CODE)
                                   2488 	.area CONST   (CODE)
      00167C                       2489 ___str_9:
      00167C 20 20 20 20 20 20 20  2490 	.ascii "              GATE=###.###.###.###"
             20 20 20 20 20 20 20
             47 41 54 45 3D 23 23
             23 2E 23 23 23 2E 23
             23 23 2E 23 23 23
      00169E 0A                    2491 	.db 0x0a
      00169F 0D                    2492 	.db 0x0d
      0016A0 00                    2493 	.db 0x00
                                   2494 	.area CSEG    (CODE)
                                   2495 	.area CONST   (CODE)
      0016A1                       2496 ___str_10:
      0016A1 4D 41 43 20 41 64 64  2497 	.ascii "MAC Addr: "
             72 3A 20
      0016AB 00                    2498 	.db 0x00
                                   2499 	.area CSEG    (CODE)
                                   2500 	.area CONST   (CODE)
      0016AC                       2501 ___str_11:
      0016AC 20 20 20 20 20 20 20  2502 	.ascii "        MAC=FF FF FF FF FF FF"
             20 4D 41 43 3D 46 46
             20 46 46 20 46 46 20
             46 46 20 46 46 20 46
             46
      0016C9 0A                    2503 	.db 0x0a
      0016CA 0D                    2504 	.db 0x0d
      0016CB 00                    2505 	.db 0x00
                                   2506 	.area CSEG    (CODE)
                                   2507 	.area CONST   (CODE)
      0016CC                       2508 ___str_12:
      0016CC 03                    2509 	.db 0x03
      0016CD 00                    2510 	.db 0x00
                                   2511 	.area CSEG    (CODE)
                                   2512 	.area CONST   (CODE)
      0016CE                       2513 ___str_13:
      0016CE 0A                    2514 	.db 0x0a
      0016CF 0D                    2515 	.db 0x0d
      0016D0 67 65 74 5F 73 6D 69  2516 	.ascii "get_smir: "
             72 3A 20
      0016DA 00                    2517 	.db 0x00
                                   2518 	.area CSEG    (CODE)
                                   2519 	.area CONST   (CODE)
      0016DB                       2520 ___str_14:
      0016DB 0A                    2521 	.db 0x0a
      0016DC 0D                    2522 	.db 0x0d
      0016DD 67 65 74 5F 73 69 72  2523 	.ascii "get_sir: "
             3A 20
      0016E6 00                    2524 	.db 0x00
                                   2525 	.area CSEG    (CODE)
                                   2526 	.area CONST   (CODE)
      0016E7                       2527 ___str_15:
      0016E7 0A                    2528 	.db 0x0a
      0016E8 0D                    2529 	.db 0x0d
      0016E9 67 65 74 5F 69 6D 72  2530 	.ascii "get_imr_socket0: "
             5F 73 6F 63 6B 65 74
             30 3A 20
      0016FA 00                    2531 	.db 0x00
                                   2532 	.area CSEG    (CODE)
                                   2533 	.area CONST   (CODE)
      0016FB                       2534 ___str_16:
      0016FB 0A                    2535 	.db 0x0a
      0016FC 0D                    2536 	.db 0x0d
      0016FD 67 65 74 5F 69 6D 72  2537 	.ascii "get_imr_socket1:"
             5F 73 6F 63 6B 65 74
             31 3A
      00170D 00                    2538 	.db 0x00
                                   2539 	.area CSEG    (CODE)
                                   2540 	.area CONST   (CODE)
      00170E                       2541 ___str_18:
      00170E 3F                    2542 	.ascii "?"
      00170F 00                    2543 	.db 0x00
                                   2544 	.area CSEG    (CODE)
                                   2545 	.area CONST   (CODE)
      001710                       2546 ___str_19:
      001710 0D                    2547 	.db 0x0d
      001711 00                    2548 	.db 0x00
                                   2549 	.area CSEG    (CODE)
                                   2550 	.area CONST   (CODE)
      001712                       2551 ___str_20:
      001712 0A                    2552 	.db 0x0a
      001713 0D                    2553 	.db 0x0d
      001714 49 6E 76 61 6C 69 64  2554 	.ascii "Invalid Command"
             20 43 6F 6D 6D 61 6E
             64
      001723 00                    2555 	.db 0x00
                                   2556 	.area CSEG    (CODE)
                                   2557 	.area CONST   (CODE)
      001724                       2558 ___str_21:
      001724 0A                    2559 	.db 0x0a
      001725 00                    2560 	.db 0x00
                                   2561 	.area CSEG    (CODE)
                                   2562 	.area XINIT   (CODE)
                                   2563 	.area CABS    (ABS,CODE)
