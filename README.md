# W5500-8051
The goal of this project is to design a simple UDP/TCP responder using an STC89/STC12 microcontroller on a demo board. The microcontroller will handle SPI (Serial Peripheral Interface) transmissions between itself and a WIZNET LAN development board.
<br>
![Alt text](https://raw.githubusercontent.com/Zayant21/W5500-8051/main/previewImage.jpg)
<br>
![Alt text](https://raw.githubusercontent.com/Zayant21/W5500-8051/main/UDP.png)
<br>
![Alt text](https://raw.githubusercontent.com/Zayant21/W5500-8051/main/TCP.png)
<br>
  
```makefile will build this for you, you need SDCC, SDAS (should come with sdcc package/installer) and Python (if you want to use the included STC loader). There is a Code::Blocks project that you can open as well if you want, but it is not really necessary to use, it builds using the makefile anyway. As far as setting this up from a hardware standpoint goes, it is expected P1.2 will be SCLK on the Wiznet board, P1.3 will be CS, P1.4 will be MISO, P1.5 will be MOSI, and P1.6 will be RESET. I don't know that reset is really necessary to connect, but the code will drive P1.6 high every time it sends a command, so you will surely not want P1.6 tied to anything else. The used pins are defined in SPIGeneric.asm/SPIGeneric.c by equating them with the addresses of the relevant SFRs, this is not super user friendly but the comments explain which pin is which. Unfortunately this means that to change them you must look up the addresses of the pins you wish to replace them with.```

<br>
**Assembly (ASM) is faster than C for specific tasks in this code due to the following reasons:**

1. **Direct Hardware Control:** ASM allows direct control of hardware registers, resulting in precise and optimized code for a specific microcontroller or platform.

2. **Minimal Overhead:** ASM code typically has less overhead compared to C. C compilers generate more general-purpose code that includes function calls and parameter handling. ASM can be tailored for a specific task, reducing unnecessary overhead.

3. **Fine-Grained Optimization:** ASM code permits optimization at the instruction level, making efficient use of resources such as CPU cycles and memory.
