import serial
import sys
from serial import Serial


serial_port = "COM1"
baud_rate = 9600
bytesize = 8
parity = 'N'
stopbits = 1
timeout = 5
writeTimeout = 5

KEY_SIZE = 32


rsa_serial = Serial(serial_port,
                    baud_rate,
                    bytesize=bytesize,
                    parity=parity,
                    stopbits=stopbits,
                    timeout=timeout,
                    writeTimeout=writeTimeout
                    )

while True:
    command = raw_input("Command to execute on device (e, d or...): ")
    if len(command) != 1:
        print "Command is not allowed!"
        sys.exit(0)

    data = raw_input("Enter data to be sent to device (ASCII). Up to " + str(KEY_SIZE/8) + " characters: ")

    if len(data) > KEY_SIZE/8:
        print "Data has more characters than allowed: %d!" % len(data)
        sys.exit(0)

    data_gap = KEY_SIZE/8 - len(data)

    for i in xrange(data_gap):
        data = chr(0) + data

    final_data = command + data

    if len(final_data) != KEY_SIZE/8 + 1:
        print "Invalid data length of %d bytes!" % len(final_data)
        sys.exit(0)

    print "Sending data:"
    print repr(final_data)

    rsa_serial.write(final_data)
    # start receiving

    response = rsa_serial.read(KEY_SIZE/8 + 1)

    print "Response:"
    print repr(response)
