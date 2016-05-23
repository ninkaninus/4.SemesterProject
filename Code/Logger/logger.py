import math
import time
import datetime
from datetime import datetime
import serial
import sys

degrees_per_radian = 180.0 / math.pi

placeToMove = "0000"

axisToMove = "\\st"

ser = serial.Serial('COM7', 115200, serial.EIGHTBITS, serial.PARITY_NONE, serial.STOPBITS_ONE, None)  # open serial port
print(ser.name)  # check which port was really used

ser.write(bytearray(map(ord,"\\sg")))

time.sleep(3)

temp = 0

if len(sys.argv) > 3:
    if sys.argv[1] == "PAN":
        axisToMove = "\\sp"

    placeToMove = sys.argv[2]

    nameOfFile = sys.argv[3]

f = open(nameOfFile + ".txt","w")

try:
    dataToWrite = 0
    ser.write(bytearray(map(ord,axisToMove + placeToMove)))
    startTime = time.clock()
    while True:
        temp = ser.read(2)

        dataToWrite = (temp[0] << 8) | temp[1]

        timeNow = datetime.now()

        temp = '{},{:d}\n'.format(time.clock() - startTime, dataToWrite)

        f.write(temp)

        f.flush()

        print(dataToWrite)

except KeyboardInterrupt:
    pass
ser.write(bytearray(map(ord,"\\sn")))
f.close()
ser.close()  # close port

time.sleep(1)