import serial
import time

ser = serial.Serial('COM3', 19200)  # open serial port
print(ser.name)  # check which port was really used
pwm = 255
brakeTime = 1
runTime = 0.2

motor1Addr = 16
motor2Addr = 48
motorForward = 5
motorBackward = 6
motorBrake = 4

try:

    ser.write(bytearray([motor2Addr | motorBackward]))
    ser.write(bytearray([pwm]))

    time.sleep(runTime)

    while True:

        ser.write(bytearray([motor1Addr | motorBrake]))
        ser.write(bytearray([0]))

        ser.write(bytearray([motor2Addr | motorBrake]))
        ser.write(bytearray([0]))

        time.sleep(brakeTime)

        ser.write(bytearray([motor1Addr | motorForward]))
        ser.write(bytearray([pwm]))

        ser.write(bytearray([motor2Addr | motorForward]))
        ser.write(bytearray([pwm]))

        time.sleep(runTime)

        ser.write(bytearray([motor1Addr | motorBrake]))
        ser.write(bytearray([0]))

        ser.write(bytearray([motor2Addr | motorBrake]))
        ser.write(bytearray([0]))


        time.sleep(brakeTime)

        ser.write(bytearray([motor1Addr | motorBackward]))
        ser.write(bytearray([pwm]))

        ser.write(bytearray([motor2Addr | motorBackward]))
        ser.write(bytearray([pwm]))

        time.sleep(runTime)

except KeyboardInterrupt:
    pass
ser.close()  # close port
