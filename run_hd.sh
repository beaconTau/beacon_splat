#! /bin/sh 

### notes: 
 # -L 1 is receiver at 1 m 
 # -m 1.333 uses 4/3 earth approximation for atmospheric bending 
 # -dbm is power instead of field (I think) 
 # -R is radius in km that is tried
splat-hd -t beacon.qth  -L 1 -metric -o beacon-hd.ppm  -m 1.333 -d sdf-hd/  -dbm -R 300 -s cities.dat  -kml 
convert beacon-hd.ppm beacon-hd.png

