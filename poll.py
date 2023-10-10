import curses
import socket
import time
import random
import string

# UDP server settings
SERVER_IP = "192.168.16.69"
UDP_SERVER_PORT = 5001
TCP_SERVER_PORT = 5002
RTU = 3
mode = True #True means UDP Mode
exit_program = False
mode_switched=False
while not exit_program:
    # Initialize curses
    stdscr = curses.initscr()
    curses.curs_set(0)
    stdscr.clear()
    stdscr.refresh()

    if(mode):
        # UDP socket setup
        while True:
            try:
                udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
                udp_socket.bind(("192.168.16.151", 37052))
                udp_socket.settimeout(.2)
                udp_socket.sendto("message".encode("utf-8"), (SERVER_IP, UDP_SERVER_PORT))
                msg = udp_socket.recv(1024)
                break
            except :
                time.sleep(0.3)
    else:
         # TCP socket setup
        while True:
            try:
                tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                tcp_socket.connect((SERVER_IP, TCP_SERVER_PORT))
                break  # If the connection is successful, exit the loop
            except ConnectionRefusedError:
                # Connection refused, retry after a delay
                time.sleep(1)


    # Make getch() non-blocking
    stdscr.nodelay(1)

    # Main loop to send and listen for responses
    start_time = time.time()
    last_refresh_time = time.time()
    sent = 0
    rec = 0
    err = 0
    response_time = 0
    sending_packet = True
    received_response = False
    received_data = ""  # Initialize received_data as an empty string 


    while True:
        current_time = time.time()
        # Generate a random message of length between 7 and 9 characters
        message_length = random.randint(7, 9)
        message = f":<{RTU}{''.join(random.choice(string.ascii_letters) for _ in range(message_length))}>"
        if mode :
            udp_socket.sendto(message.encode("utf-8"), (SERVER_IP, UDP_SERVER_PORT))
            sent = sent + 1
            try :
                udp_socket.settimeout(.3)
                data, addr = udp_socket.recvfrom(1024)
                rec = rec + 1
                received_data = data.decode("utf-8")
                # Calculate and update response time
                response_time = time.time() - current_time
            except:
                continue
        else:
            if sending_packet and not received_response:
                tcp_socket.sendto(message.encode("utf-8"), (SERVER_IP, TCP_SERVER_PORT))
                sending_packet = False
                sent = sent + 1

            # Check for a response
            if not sending_packet:
                try:
                    data, addr = tcp_socket.recvfrom(1024)
                    sending_packet = True
                    received_response = False
                    rec = rec + 1
                    received_data = data.decode("utf-8")

                    # Calculate and update response time
                    response_time = time.time() - current_time
                except socket.error:
                    sending_packet = True
                    received_response = False
        response_time = response_time * 1000
        err = (sent - rec) / 100
        # Clear the screen
        stdscr.clear()
        curses.start_color()
        curses.init_pair(1, curses.COLOR_CYAN, curses.COLOR_BLACK)
        curses.init_pair(2, curses.COLOR_RED, curses.COLOR_BLACK)
        curses.init_pair(3, curses.COLOR_GREEN, curses.COLOR_BLACK)
        curses.init_pair(4, curses.COLOR_YELLOW, curses.COLOR_BLACK)
        curses.init_pair(5, curses.COLOR_MAGENTA, curses.COLOR_BLACK)
        curses.init_pair(6, curses.COLOR_BLUE, curses.COLOR_BLACK)

        # Draw a box
        stdscr.box()

        # Add a title string
        stdscr.addstr(0, 32, "Polling Statistics", curses.color_pair(1) | curses.A_BOLD)

        stdscr.addstr(1, 2, f"Packets Sent: {sent}")
        stdscr.addstr(2, 2, f"Packets Received: {rec}")
        stdscr.addstr(3, 2, f"Error Rate: {err:.2f}%", curses.color_pair(2) | curses.A_BOLD)
        stdscr.addstr(4, 2, f"Message Sent: {message}")
        stdscr.addstr(5, 2, f"Message Rec : {received_data}")
        stdscr.addstr(6, 2, f"Response Time: {response_time:.2f} ms")
        if mode:
            stdscr.addstr(7, 2, "Mode: UDP", curses.color_pair(6) | curses.A_BOLD)
        else:
            stdscr.addstr(7, 2, "Mode: TCP", curses.color_pair(3) | curses.A_BOLD)
        stdscr.addstr(9, 2, "Press Enter to stop pinging and M to change mode", curses.color_pair(1) | curses.A_BOLD) 
        stdscr.refresh()
        last_refresh_time = current_time

        # Check for Enter key press to exit the loop
        key = stdscr.getch()
        if key == ord('\n'):
            exit_program=True
            mode_switched=False
            break
        if key == ord('M') or key == ord('m') :
            mode = not mode
            mode_switched=True
            break

    end_time = time.time()

    stdscr.refresh()

    # Cleanup
    if(not mode_switched):
        if mode :
            udp_socket.close()
    
        else:
            tcp_socket.shutdown(socket.SHUT_WR)
            tcp_socket.close()
    
    curses.endwin()
