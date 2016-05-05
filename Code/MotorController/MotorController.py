import serial
import time

ser = serial.Serial('COM3', 19200)  # open serial port
print(ser.name)  # check which port was really used
riseTime = 0.1
fallTime = 0.1
highTime = 0.1
lowTime = 0.1
topPwm = 210
lowPwm = 150
brakeTime = 0.1

try:
    while True:

        ser.write(bytearray([32]))
        ser.write(bytearray([0]))

        time.sleep(brakeTime)

        ser.write(bytearray([32]))
        ser.write(bytearray([1]))
        i = lowPwm
        while i < topPwm + 1:
            ser.write(bytearray([16]))
            ser.write(bytearray([i]))
            i += 1
            time.sleep(riseTime)
        i = topPwm
        time.sleep(highTime)
        while i > lowPwm-1:
            ser.write(bytearray([16]))
            ser.write(bytearray([i]))
            i -= 1
            time.sleep(fallTime)
        time.sleep(lowTime)

        ser.write(bytearray([32]))
        ser.write(bytearray([0]))

        time.sleep(brakeTime)

        ser.write(bytearray([32]))
        ser.write(bytearray([2]))

        i = lowPwm
        while i < topPwm + 1:
            ser.write(bytearray([16]))
            ser.write(bytearray([i]))
            i += 1
            time.sleep(riseTime)
        i = topPwm
        time.sleep(highTime)
        while i > lowPwm-1:
            ser.write(bytearray([16]))
            ser.write(bytearray([i]))
            i -= 1
            time.sleep(fallTime)
        time.sleep(lowTime)
except KeyboardInterrupt:
    pass
ser.close()  # close port
