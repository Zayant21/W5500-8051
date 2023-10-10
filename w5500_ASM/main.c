#include <8051.h>
#include "Serial.h"
#include "SPIGeneric.h"
#include "W5500.h"
#include <ctype.h>


unsigned char gateway[4] = {192, 168, 16, 1};
unsigned char subnet[4] = {255, 255, 255, 0};
unsigned char ip[4] = {192, 168, 16, 69};
unsigned char mac[6] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
unsigned char dest_ip[4] = {192, 168, 16, 151};



unsigned char RTU_Address = '3';

#ifndef NULL
#define NULL ((void *)0)
#endif
// String pointer

unsigned char* serialInput;

void _serial_interrupt(void) __interrupt (4);

unsigned char strlen(const unsigned char* str) {
    unsigned char ret = 0;
    while (*(str++)) ++ret;
    return ret;
}

unsigned char strcmp(unsigned char* first, unsigned char* second) {
    while (*first && *second) if (*(first++) != *(second++)) return 0;
    return 1;
}

unsigned char hexCharToInt(char c) {
    return c <= '9' ? c - '0' : c <= 'F' ? c - 'A' + 10 : c - 'a' + 10;
}

void parseMAC(const char* str) {
    if(str[0] == 'M' && str[1] == 'A' && str[2] == 'C' && str[3] == '=') {
        for(unsigned char i = 0; i < 6; i++) {
            mac[i] = (hexCharToInt(str[4 + i*2]) << 4) + hexCharToInt(str[5 + i*2]);
        }
    }
}

void extractAndAssign(char *arr)
{
    unsigned char *curr_address = NULL;
    unsigned char octet = 0;
    unsigned char value = 0;

    while (*arr)
    {
        if (arr[0] == 'I' && arr[1] == 'P' && arr[2] == '=')
        {
            curr_address = ip;
            arr += 3;
        }
        else if (arr[0] == 'S' && arr[1] == 'U' && arr[2] == 'B' && arr[3] == '=')
        {
            curr_address = subnet;
            arr += 4;
        }
        else if (arr[0] == 'G' && arr[1] == 'A' && arr[2] == 'T' && arr[3] == 'E' && arr[4] == '=')
        {
            curr_address = gateway;
            arr += 5;
        }
        value = 0;
        while (*arr >= '0' && *arr <= '9')
        {
            value = value * 10 + (*arr - '0');
            arr++;
        }

        if (curr_address && octet < 4)
        {
            curr_address[octet] = value;
            octet++;

            if (*arr == '.')
            {
                arr++;
                continue;
            }
            else
            {
                octet = 0; // Reset octet count for the next IP address
            }
        }
        arr++;
    }
}


// Helper function to display an IP address
void displayIPAddress(unsigned char *address)
{
    for (unsigned char i = 0; i < 4; i++)
    {
        _serial_putbyte_dec(address[i]);
        if (i != 3)
            _serial_putchar('.');
    }
}

// Helper function to display a MAC address
void displayMACAddress(unsigned char *address)
{
    for (unsigned char i = 0; i < 6; i++)
    {
        _serial_putbyte_hex(address[i]);
        if (i != 5)
            _serial_putstr(" ");
    }
}



void menudisplay()
{
    // Display RTU Address

    _serial_putstr("\n\rCURRENT CONFIG:                    CHANGE CMD:\n\r");
    _serial_putstr("RTU Addr (0-9): ");
    _serial_putchar(RTU_Address);
    _serial_putstr("                  RTU=#\n\r");

    // Display IP Address
    _serial_putstr("IP Addr: ");
    displayIPAddress(ip);
    _serial_putstr("             IP=###.###.###.###\n\r");

    // Display Subnet Mask
    _serial_putstr("Subnet Mask: ");
    displayIPAddress(subnet);
    _serial_putstr("         SUB=###.###.###.###\n\r");

    // Display Gateway
    _serial_putstr("Gateway: ");
    displayIPAddress(gateway);
    _serial_putstr("              GATE=###.###.###.###\n\r");

    // Display MAC Address
    _serial_putstr("MAC Addr: ");
    displayMACAddress(mac);
    _serial_putstr("        MAC=FF FF FF FF FF FF\n\r");
}


void setuptcp(){
    _w5500_set_tcp(SOCKET1);
    _w5500_set_sourceport(SOCKET1, 5002);
    _w5500_open(SOCKET1);
    _w5500_listen(SOCKET1);
    _w5500_set_IMR(SOCKET1);
}


void setup() {
    _serial_begin();
    _spigeneric_reset();
    _w5500_set_gateway(gateway);
    _w5500_set_subnet(subnet);
    _w5500_set_ip(ip);
    _w5500_set_mac(mac);
    _w5500_set_SIMR();
    _serial_putstr("\n\rget_smir: ");
    _serial_putbyte_hex(_w5500_get_SIMR());
    _serial_putstr("\n\rget_sir: ");
    _serial_putbyte_hex(_w5500_get_SIR());
    _serial_putstr("\n\rget_imr_socket0: ");
    _serial_putbyte_hex(_w5500_get_IMR(SOCKET0));
    _serial_putstr("\n\rget_imr_socket1:");
    _serial_putbyte_hex(_w5500_get_IMR(SOCKET1));

   setuptcp();
    _w5500_set_destinationip(SOCKET0, dest_ip);
    _w5500_set_sourceport(SOCKET0, 5001);
    _w5500_set_remoteport(SOCKET0, 37052);
    _w5500_set_udp(SOCKET0);
    _w5500_open(SOCKET0);
    _w5500_set_IMR(SOCKET0);

    P1_0 = 1;
    P1_1 = 1;
}

void loop() {

    unsigned char read = 0;
    unsigned char recieved_udp = 0;
    unsigned char recieved_tcp = 0;
    unsigned char input_buffer[20];
    unsigned char input_index = 0;
    unsigned char arrbuf[20];
    unsigned char count = 0;
    unsigned char serial_buffer[20];
    unsigned char serial_index = 0;
    unsigned char rec_char_byte;
    unsigned char rec_char_byte_tcp;

while(1){
        
        serialInput = _serial_emptybuffer();
        unsigned char inputLength = strlen(serialInput);
        if (inputLength) {
            if(strcmp(serialInput, "?")){
                menudisplay();
            }

            else {
                if(strcmp(serialInput, "\r")){
                    if(serial_buffer[0]=='I' && serial_buffer[2]=='='){
                        extractAndAssign(serial_buffer);
                        _w5500_set_ip(ip);
                    } else if(serial_buffer[0]=='R' && serial_buffer[3]=='='){
                        RTU_Address = serial_buffer[4];
                    } else if(serial_buffer[0]=='G' && serial_buffer[4]=='='){
                        extractAndAssign(serial_buffer);
                        _w5500_set_gateway(gateway);
                    } else if(serial_buffer[0]=='S' && serial_buffer[3]=='='){
                        extractAndAssign(serial_buffer);
                        _w5500_set_subnet(subnet);
                    } else if(serial_buffer[0]=='M' && serial_buffer[3]=='='){
                        parseMAC(serial_buffer);
                        _w5500_set_mac(mac);
                    } else {
                        _serial_putstr("\n\rInvalid Command");
                    }

                    for(unsigned char i = 0; i< 20; i++){
                        serial_buffer[i] = '\0';
                    }
                    _serial_putstr("\n");
                    serial_index=0;
                } else {
                    for (unsigned char charIndex = 0; charIndex < inputLength; charIndex++)
                    {
                        serial_buffer[serial_index] = serialInput[charIndex];
                        serial_index++;
                    }
                }
                _serial_putstr(serialInput);
            }

        }


        read = 0;
          //  if ( _w5500_get_SNIR(SOCKET0) == 0x04 ){
            while (_w5500_bytesinbuffer(SOCKET0)) {
                P1_0 = 0;
                P1_1 = 1;
                ++read;
                if (read < 9) {
                    _w5500_readchar(SOCKET0);
                    continue;
                }
                rec_char_byte = _w5500_readchar(SOCKET0);
               if (islower(rec_char_byte)) {
                    rec_char_byte = toupper(rec_char_byte);
                }
                input_buffer[input_index] = rec_char_byte;
                input_index++;
                recieved_udp = 1;
            }
            if(recieved_udp){
                P1_0 = 1;
                P1_1 = 0;
                if(input_buffer[0] == ':' && input_buffer[1] == '<' && input_buffer[input_index-1] == '>'){
                    input_buffer[1] = '[';
                    input_buffer[input_index-1] = ']';
                    if(input_buffer[2] == RTU_Address){
                        _w5500_writeto(SOCKET0, input_buffer, input_index);
                        _w5500_send(SOCKET0);
                    }
                } else {
                    unsigned char fail[14] = "Invalid Format";
                    _w5500_writeto(SOCKET0, fail, 13);
                    _w5500_send(SOCKET0);
                }
                for(unsigned char j = 0; j < 20; j++){
                    P2_4 = !P2_4;
                    input_buffer[j] = '\0';
                }
                input_index = 0;
                recieved_udp = 0;
                _w5500_clear_SNIR(SOCKET1);
                _w5500_clear_SNIR(SOCKET0);
            }
          //  }
        

    
    unsigned char status = _w5500_get_status(SOCKET1);
    count=0;
   // if ( _w5500_get_SNIR(SOCKET1) == 0x04 ){
    if (status == SOCK_ESTABLISHED) {
        while (_w5500_bytesinbuffer(SOCKET1)) {
                P1_0 = 0;
                P1_1 = 1;
            rec_char_byte_tcp = _w5500_readchar(SOCKET1);
            if (islower(rec_char_byte_tcp)) {
                rec_char_byte_tcp = toupper(rec_char_byte_tcp);
            }
            arrbuf[count] = rec_char_byte_tcp;
            recieved_tcp = 1;
            count = count + 1;
        }
        if(recieved_tcp){
            P1_0 = 1;
            P1_1 = 0;
            if (arrbuf[0] == ':' && arrbuf[1] == '<' && arrbuf[count-1] == '>') {
                arrbuf[1] = '[';
                arrbuf[count - 1] = ']';
                if(arrbuf[2] == RTU_Address){
                    _w5500_writeto(SOCKET1, arrbuf, count);  
                } else {
                    _w5500_writeto(SOCKET1, arrbuf, count);  
                }
            _w5500_send(SOCKET1);
            recieved_tcp = 0;
        } 
    }
    }
    if(status == SOCK_CLOSE_WAIT){

        _w5500_clear_SNIR(SOCKET1);
        _w5500_clear_SNIR(SOCKET0);
        _w5500_close(SOCKET1);
        setuptcp();
    }
    //}
}
}

void main(void) {
    setup();
    while(1) {
        loop();
    }
}
