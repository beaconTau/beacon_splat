#! /bin/sh 

### notes: 
 # -L 1 is receiver at 1 m 
 # -m 1.333 uses 4/3 earth approximation for atmospheric bending 
 # -dbm is power instead of field (I think) 
 # -R is radius in km that is tried
splat -t beacon.qth  -L 1 -metric -o beacon.ppm  -m 1.333 -d sdf/  -dbm -R 300 -s cities.dat 
convert beacon.ppm beacon.png
rm beacon.ppm 

