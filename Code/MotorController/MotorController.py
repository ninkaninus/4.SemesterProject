import serial
import time

ser = serial.Serial('COM4', 19200)  # open serial port
print(ser.name)  # check which port was really used

waitTime = 5

panPos1 = 1900
panPos2 = 2200

tiltPos1 = 2100
tiltPos2 = 3000

try:

    while True:

        ser.write(b'1900')
        ser.write(b'2100')

        #print(panPos1)

        time.sleep(waitTime)

        ser.write(b'2200')
        ser.write(b'3000')

        time.sleep(waitTime)

except KeyboardInterrupt:
    pass
ser.close()  # close port
