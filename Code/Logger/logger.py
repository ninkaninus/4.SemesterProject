import math
import time
import datetime
from datetime import datetime
import serial
import sys

degrees_per_radian = 180.0 / math.pi

panPos = "0000"
tiltPos = "0000"
nameOfFile = "Default"

axisToMove = "\\st"

ser = serial.Serial('COM7', 115200, serial.EIGHTBITS, serial.PARITY_NONE, serial.STOPBITS_ONE, None)  # open serial port
print(ser.name)  # check which port was really used

ser.write(bytearray(map(ord,"\\sg")))

temp = 0

if len(sys.argv) > 3:

    nameOfFile = sys.argv[1]

    panPos = sys.argv[2]

    tiltPos = sys.argv[3]

f = open(nameOfFile + ".txt","w")

print("PAN: " + panPos + "\n" + "TILT: " + tiltPos)

try:
    ser.write(bytearray(map(ord,"\\st" + tiltPos)))
    ser.write(bytearray(map(ord,"\\sp" + panPos)))

    startTime = time.clock()
    while True:
        temp = ser.read(4)

        #print(temp)

        timeNow = datetime.now()

        temp = '{:7.6f},{:d},{:d}\n'.format(time.clock() - startTime, (temp[0] << 8) | temp[1], (temp[2] << 8) | temp[3])

        f.write(temp)

        f.flush()

        print(temp)

except KeyboardInterrupt:
    pass
ser.write(bytearray(map(ord,"\\sn")))
f.close()
ser.close()  # close port

time.sleep(1)