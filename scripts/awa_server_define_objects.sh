awa-server-define -o 3302 -j "Presence" -y single \
    -r 5500 -n "Digital Input State" -t boolean -u single -q mandatory -k r \
    -r 5501 -n "Digital Input Counter" -t integer -u single -q optional -k r \
    -r 5505 -n "Digital Input Counter Reset" -t none -u single -q optional -k e \
    -r 5751 -n "Sensor Type" -t string -u single -q optional -k r \
    -r 5903 -n "Busy To Clear Delay" -t integer -u single -q optional -k rw \
    -r 5904 -n "Clear To Busy Delay" -t integer -u single -q optional -k rw
