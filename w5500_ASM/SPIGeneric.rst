ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 1.
Hexadecimal [24-Bits]



                                      1 	.module SPIGeneric
                                      2 
                                      3     .globl __spigeneric_frame_start
                                      4     .globl __spigeneric_frame_end
                                      5     .globl __spigeneric_spit_bit
                                      6     .globl __spigeneric_spit_byte
                                      7     .globl __spigeneric_reset
                                      8 
                                      9 	.area RSEG    (ABS,DATA)
      000000                         10 	.org 0x0000
                           000092    11 pSCLK	=	0x92 ; 0x92 == P1_2
                           000095    12 pMOSI	=	0x95 ; 0x95 == P1_5
                           000094    13 pMISO	=	0x94 ; 0x94 == P1_4
                           000093    14 pCS	=	0x93 ; 0x93 == P1_3
                           000096    15 pRESET  =   0x96 ; P1_6
                                     16 
                                     17     .area CSEG
                                     18 
                                     19 ; This is all designed to be interfaced with C code compiled by SDCC using SPIGeneric.h
                                     20 ; Therefore; the functions that take an argument expect the argument to be in DPL, and the functions that return a value place the value in DPL before returning
                                     21 
      000BC2                         22 __spigeneric_frame_start:
      000BC2 D2 96            [12]   23     SETB    pRESET ; This should always be high, but just in case it somehow isn't, this is probably the cleanest place to set it
      000BC4 C2 92            [12]   24     CLR pSCLK
      000BC6 C2 95            [12]   25     CLR pMOSI
      000BC8 D2 94            [12]   26     SETB    pMISO
      000BCA C2 93            [12]   27     CLR pCS
      000BCC 22               [24]   28     RET
                                     29 
      000BCD                         30 __spigeneric_frame_end:
      000BCD D2 93            [12]   31     SETB    pCS
      000BCF D2 92            [12]   32     SETB    pSCLK
      000BD1 D2 95            [12]   33     SETB    pMOSI
      000BD3 D2 94            [12]   34     SETB    pMISO
      000BD5 22               [24]   35     RET
                                     36 
      000BD6                         37 __spigeneric_spit_bit:
      000BD6 E5 82            [12]   38 	MOV	A,DPL
      000BD8 24 FF            [12]   39 	ADD	A,#0xFF
      000BDA 92 95            [24]   40 	MOV	pMOSI,C
      000BDC D2 92            [12]   41 	SETB	pSCLK
      000BDE 30 94 05         [24]   42 	JNB	pMISO,MAKELOW
      000BE1 75 82 01         [24]   43 	MOV	DPL,#0x01
      000BE4 80 03            [24]   44 	SJMP	DONE
      000BE6                         45     MAKELOW:
      000BE6 75 82 00         [24]   46         MOV	DPL,#0x00
      000BE9                         47     DONE:
      000BE9 C2 92            [12]   48         CLR	pSCLK
      000BEB 22               [24]   49 	RET
                                     50 
      000BEC                         51 __spigeneric_spit_byte:
      000BEC AF 82            [24]   52     MOV R7,DPL ;R7 stores the byte we are clocking out
      000BEE 7E 00            [12]   53 	MOV R6,#0x00 ;R6 stores the byte we are returning
      000BF0 7D 08            [12]   54 	MOV R5,#0x08 ;R5 is our loop counter since we gotta go through the loop eight times regardless of the contents of the byte
                                     55 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Intel 8051), page 2.
Hexadecimal [24-Bits]



      000BF2                         56     TEST:
      000BF2 BD 00 02         [24]   57         CJNE	R5,#0x00,LOOPTY
      000BF5 80 12            [24]   58         SJMP    ALLDONE
      000BF7                         59     LOOPTY:
      000BF7 1D               [12]   60         DEC R5
      000BF8 74 80            [12]   61         MOV	A,#0x80
      000BFA 5F               [12]   62         ANL	A,R7
      000BFB F5 82            [12]   63         MOV	DPL,A
      000BFD 71 D6            [12]   64         ACALL	__spigeneric_spit_bit
      000BFF EE               [12]   65         MOV A,R6
      000C00 23               [12]   66         RL  A
      000C01 45 82            [12]   67         ORL	A,DPL
      000C03 FE               [12]   68         MOV	R6,A
      000C04 EF               [12]   69         MOV A,R7
      000C05 23               [12]   70         RL  A
      000C06 FF               [12]   71         MOV	R7,A
      000C07 80 E9            [24]   72         SJMP	TEST
      000C09                         73     ALLDONE:
      000C09 8E 82            [24]   74         MOV DPL,R6
      000C0B 22               [24]   75         RET
                                     76 
      000C0C                         77 __spigeneric_reset:
      000C0C C2 96            [12]   78     CLR pRESET
      000C0E 00               [12]   79     NOP
      000C0F 00               [12]   80     NOP
      000C10 D2 96            [12]   81     SETB    pRESET
