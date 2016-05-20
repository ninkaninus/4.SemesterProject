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
    '1 25544U 98067A   16141.62816457  .00016717  00000-0  10270-3 0  9032',
    '2 25544  51.6405 195.5226 0001738 107.9306 252.2036 15.54677601   695'
)

ser = serial.Serial('COM7', 115200, serial.EIGHTBITS, serial.PARITY_NONE, serial.STOPBITS_ONE, 0)  # open serial port
print(ser.name)  # check which port was really used

try:

    while True:
        home.date = datetime.utcnow()
        iss.compute(home)

        altitude = iss.alt * degrees_per_radian
        azimuth = iss.az * degrees_per_radian

        #Program coordinates are between -180 and 180. Convert to between 0 and 360
        if altitude < 0:
            altitude = 360 + altitude

        #Correct for the different definitions of where 0 is
        altitude = 90 - altitude

        #Correct if former correction went negative
        if altitude < 0:
            altitude = 360 + altitude

        azimuth = 360 - azimuth

        s1 = "\\st"
        s2 = "\\sp"

        t1 =  '{:03.1f}'.format(altitude)
        t2 = '{:03.1f}'.format(azimuth)

        print('|AZI: {:05.1f} deg, ALT:  {:06.1f} deg|'.format(iss.az * degrees_per_radian, iss.alt * degrees_per_radian))
        print('|PAN: {:<5} deg, TILT:  {:<5} deg|'.format(t2, t1))
        print("*--------------------------------*")

        t1 = t1.replace(".","")
        t2 = t2.replace(".","")

        s1 += t1
        s2 += t2

        b2 = bytearray(map(ord,s2))
        ser.write(b2)

        b1 = bytearray(map(ord,s1))
        ser.write(b1)

        time.sleep(1)

except KeyboardInterrupt:
    pass
ser.close()  # close port