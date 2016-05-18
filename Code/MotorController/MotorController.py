import serial
import time

ser = serial.Serial('COM9', 9600, serial.EIGHTBITS, serial.PARITY_NONE, serial.STOPBITS_ONE, 0)  # open serial port
print(ser.name)  # check which port was really used

waitTime = 0.1

iStep1 = 1
iStep2 = 1

panLimitHigh = 359
panLimitLow = 0

tiltLimitHigh = 359
tiltLimitLow = 0

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

        s1 += str(i1) + '0'
        s2 += str(i2) + '0'

        b1 = bytearray(map(ord,s1))
        ser.write(b1)

        b2 = bytearray(map(ord,s2))
        ser.write(b2)

        print("PAN: " + s1 + " " + "TILT: " + s2)

        i1 += iStep1
        i2 += iStep2

        time.sleep(waitTime)

except KeyboardInterrupt:
    pass
ser.close()  # close port
