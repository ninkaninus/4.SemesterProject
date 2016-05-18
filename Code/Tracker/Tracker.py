import math
import time
from datetime import datetime
import ephem
import serial

degrees_per_radian = 180.0 / math.pi

home = ephem.Observer()
home.lon = '10.421308'   # +E
home.lat = '55.377526'   # +N
home.elevation = 15 # meters

# Always get the latest ISS TLE data from:
# http://spaceflight.nasa.gov/realdata/sightings/SSapplications/Post/JavaSSOP/orbit/ISS/SVPOST.html
iss = ephem.readtle('ISS',
    '1 25544U 98067A   16138.54268332  .00016717  00000-0  10270-3 0  9010',
    '2 25544  51.6427 210.9129 0001457 112.1474 247.9834 15.54660751   218'
)

ser = serial.Serial('COM7', 115200, serial.EIGHTBITS, serial.PARITY_NONE, serial.STOPBITS_ONE, 0)  # open serial port
print(ser.name)  # check which port was really used

try:

    while True:
        home.date = datetime.utcnow()
        iss.compute(home)
        altitude = iss.alt * degrees_per_radian
        azimuth = iss.az * degrees_per_radian

        if altitude<0:
            altitude = 180 + (altitude + 180)

        azimuth = 360 - azimuth

        s1 = "\\st"
        s2 = "\\sp"

        t1 =  '{:03.0f}'.format(altitude)
        t2 = '{:03.0f}'.format(azimuth)

        s1 += t1 + '0'
        s2 += t2 + '0'

        b2 = bytearray(map(ord,s2))
        ser.write(b2)

        b1 = bytearray(map(ord,s1))
        ser.write(b1)


        print('|AZI: {:05.1f} deg, ALT:  {:06.1f} deg|'.format(iss.az * degrees_per_radian, iss.alt * degrees_per_radian))
        print('|PAN: {:<5} deg, TILT:  {:<5} deg|'.format(t1, t2))
        print("*--------------------------------*")

        time.sleep(1)

except KeyboardInterrupt:
    pass
ser.close()  # close port