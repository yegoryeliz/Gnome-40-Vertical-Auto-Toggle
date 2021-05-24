#!/bin/bash

while true; do

#add to chron and run every few seconds

#check screen dims and print to log /dev/shm (shared memory device - so you done wear a hole in your drive)
xdpyinfo | grep dimensions | egrep -o [[:digit:]]{4}| cat > /dev/shm/scdim.log

#read log and make variables
while read line; do
  eval "$line" ;
done < <(cat -n /dev/shm/scdim.log | perl -pe 's/^(\s*)(\d+)(\s*)/p$2="/; s/$/"/')

#delete log
#rm scdim.log

#calculate ratio
p3=$(awk "BEGIN {print $p1/$p2}")

#toggle extention if screen ration is greater than 1.75
if (( $(echo "$p3 > 1.75" |bc -l) ));
  then echo gnome-extensions enable vertical-overview@RensAlthuis.github.com
  else echo gnome-extensions disable vertical-overview@RensAlthuis.github.com
fi

  sleep 5;
done
