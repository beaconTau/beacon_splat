#! /bin/sh

MIN_LAT=34
MAX_LAT=41 
MIN_LONG=114
MAX_LONG=124


mkdir -p srtm 
cd srtm 

for i in $( seq $MIN_LAT $MAX_LAT); do
  for j in $( seq $MIN_LONG $MAX_LONG); do

   echo $i $j 
   F=`printf "N%02dW%03d.hgt" $i $j`
   echo $F
   if [ -f $F ]; then
     echo "Skipping existing file $F"
   else
     wget -c https://dds.cr.usgs.gov/srtm/version2_1/SRTM3/North_America/N${i}W${j}.hgt.zip; 
     unzip ${F}.zip
     rm ${F}.zip 
   fi
 done; 
done

cd ..
mkdir -p sdf 
ORIGDIR=`pwd`

cd sdf 
for i in  ${ORIGDIR}/srtm/*.hgt; do
  srtm2sdf $i;
done
