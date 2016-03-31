import serial
import time

ser = serial.Serial('COM3', 19200)  # open serial port
print(ser.name)  # check which port was really used
riseTime = 0.001
fallTime = 0.001
highTime = 2
lowTime = 0.5

try:
    while True:
        i = 0
        while i < 256:
            ser.write(bytearray([i]))
            i += 1
            time.sleep(riseTime)
        i = 255
        time.sleep(highTime)
        while i > -1:
            ser.write(bytearray([i]))
            i -= 1
            time.sleep(fallTime)
        time.sleep(lowTime)
except KeyboardInterrupt:
    pass
ser.close()  # close port
