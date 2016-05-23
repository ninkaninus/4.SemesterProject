import math
import time
from datetime import datetime
import ephem
import serial

degrees_per_radian = 180.0 / math.pi

updateTime = 0.01
updatedValues = False

t1prev = ""
t2prev = ""

home = ephem.Observer()
home.lon = '10.431900'   # +E
home.lat = '55.367129'   # +N
home.elevation = 15 # meters

#Bodies

# Always get the latest ISS TLE data from:
# http://spaceflight.nasa.gov/realdata/sightings/SSapplications/Post/JavaSSOP/orbit/ISS/SVPOST.html
iss = ephem.readtle('ISS',
     '1 25544U 98067A   16144.52075938  .00016717  00000-0  10270-3 0  9035',
     '2 25544  51.6408 181.0913 0001653 118.9223 241.2096 15.54667329  1148'
)

pcSat = ephem.readtle('PCSAT',
     '1 26931U 01043C   16140.32055899  .00000037  00000-0  45874-4 0  9994',
     '2 26931  67.0527  27.3826 0007086 262.9280  97.1015 14.30406980764014'
)

cosmos2504 = ephem.readtle('COSMOS2504',
     '1 40555U 15020D   16143.80913921 +.00000063 +00000-0 +20631-3 0  9999',
     '2 40555 082.4864 143.5120 0215717 012.7184 347.9341 12.80502650053654'
)

brite = ephem.readtle('brite',
     '1 39431U 13066R   16143.91707026 +.00000114 +00000-0 +35042-4 0  9997',
     '2 39431 097.6784 151.1551 0201626 244.0827 113.9465 14.46716276131824'
)

cutie = ephem.readtle('cutie',
     '1 27844U 03031E   16144.54349662  .00000101  00000-0  65456-4 0  9999',
     '2 27844  98.6926 153.1836 0010492  40.2184 319.9768 14.21948798668948'
)

itemToTrack = iss
ser = serial.Serial('COM7', 115200, serial.EIGHTBITS, serial.PARITY_NONE, serial.STOPBITS_ONE, 0)  # open serial port
print(ser.name)  # check which port was really used

ser.write(bytearray(map(ord,"\\sg")))

try:

    while True:
        home.date = datetime.utcnow()
        itemToTrack.compute(home)

        altitude = itemToTrack.alt * degrees_per_radian
        azimuth = itemToTrack.az * degrees_per_radian

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

        t1 =  '{:05.1f}'.format(altitude)
        t2 = '{:05.1f}'.format(azimuth)

        if updatedValues == True:
            print('|AZI: {:05.1f} deg, ALT:  {:06.1f} deg|'.format(itemToTrack.az * degrees_per_radian, itemToTrack.alt * degrees_per_radian))
            print('|PAN: {:<5} deg, TILT:  {:<5} deg|'.format(t2, t1))
            print("*--------------------------------*")
            updatedValues = False


        t1 = t1.replace(".","")
        t2 = t2.replace(".","")

        s1 += t1
        s2 += t2

        if t1prev != t1:
            t1prev = t1
            updatedValues = True
            b1 = bytearray(map(ord,s1))
            ser.write(b1)

        if t2prev != t2:
            t2prev = t2
            updatedValues = True
            b2 = bytearray(map(ord,s2))
            ser.write(b2)

        time.sleep(updateTime)

except KeyboardInterrupt:
    pass
ser.write(bytearray(map(ord,"\\sn")))
ser.close()  # close port