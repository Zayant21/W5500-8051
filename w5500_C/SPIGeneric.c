#include <8051.h>
#include "SPIGeneric.h"

#define pSCLK P1_2
#define pMOSI P1_5
#define pMISO P1_4
#define pCS P1_3
#define pRESET P1_6

void _spigeneric_frame_start() {
    pRESET = 1;
    pSCLK = 0;
    pMOSI = 0;
    pMISO = 1;
    pCS = 0;
}

void _spigeneric_frame_end() {
    pCS = 1;
    pSCLK = 1;
    pMOSI = 1;
    pMISO = 1;
}

unsigned char _spigeneric_spit_bit(unsigned char bit) {
    pMOSI = bit;
    pSCLK = 1;
    bit = pMISO;
    pSCLK = 0;
    return bit;
}

unsigned char _spigeneric_spit_byte(unsigned char byte) {
    unsigned char i, result = 0;
    for (i = 0; i < 8; i++) {
        result <<= 1;
        result |= _spigeneric_spit_bit((byte >> (7 - i)) & 0x01);
    }
    return result;
}

void _spigeneric_reset() {
    pRESET = 0;
    __asm
        nop
        nop
    __endasm;
    pRESET = 1;
}