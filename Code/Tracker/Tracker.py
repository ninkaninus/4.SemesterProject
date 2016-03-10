import math
import time
from datetime import datetime
import ephem

degrees_per_radian = 180.0 / math.pi

home = ephem.Observer()
home.lon = '10.421308'   # +E
home.lat = '55.377526'      # +N
home.elevation = 15 # meters

# Always get the latest ISS TLE data from:
# http://spaceflight.nasa.gov/realdata/sightings/SSapplications/Post/JavaSSOP/orbit/ISS/SVPOST.html
iss = ephem.readtle('ISS',
    '1 25544U 98067A   16070.97008272  .00016717  00000-0  10270-3 0  9028',
    '2 25544  51.6411 187.8542 0001780 283.7398  76.3556 15.53984359 29703'
)

while True:
    home.date = datetime.utcnow()
    iss.compute(home)
    print('iss: altitude %4.1f deg, azimuth %5.1f deg' % (iss.alt * degrees_per_radian, iss.az * degrees_per_radian))
    time.sleep(1.0)