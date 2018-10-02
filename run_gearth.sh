#! /bin/sh 

### notes: 
 # -L 1 is receiver at 1 m 
 # -m 1.333 uses 4/3 earth approximation for atmospheric bending 
 # -dbm is power instead of field (I think) 
 # -R is radius in km that is tried
splat -t beacon.qth  -L 1 -metric -o beacon-gearth.ppm  -m 1.333 -d sdf/  -dbm -R 300 -kml
convert beacon-gearth.ppm beacon-gearth.png
convert beacon-gearth-ck.ppm beacon-gearth-ck.png
sed -i s/ppm/png/ beacon-gearth.kml 

