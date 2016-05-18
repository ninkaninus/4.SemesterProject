import serial
import time

ser = serial.Serial('COM7', 115200)  # open serial port
print(ser.name)  # check which port was really used

waitTime = 0.25

iStep1 = 10
iStep2 = 5

panLimitHigh = 359
panLimitLow = 0

tiltLimitHigh = 95
tiltLimitLow = 85

i1 = panLimitLow
i2 = tiltLimitLow

try:

    #ser.write(bytearray(map(ord,"\\st085")))

    while True:

        s1 = "\\sp"
        s2 = "\\st"

        if i1> panLimitHigh:
            i1 = panLimitLow

        if i2> tiltLimitHigh:
            i2 = tiltLimitLow

        if i1 < 100:
            s1 += '0'

        if i1 < 10:
            s1 += '0'

        if i2 < 100:
            s2 += '0'

        if i2 < 10:
            s2 += '0'

        s1 += str(i1)
        s2 += str(i2)

        b1 = bytearray(map(ord,s1))
        ser.write(b1)

        b2 = bytearray(map(ord,s2))
        ser.write(b2)

        print("PAN: " + str(i1) + " " + "TILT: " + str(i2))

        i1 += iStep1
        i2 += iStep2

        time.sleep(waitTime)

except KeyboardInterrupt:
    pass
ser.close()  # close port
