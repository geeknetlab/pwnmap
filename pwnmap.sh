#!/bin/bash

mkdir /opt/nmap_diff
d=$(date +%Y-%m-%d)
y=$(date -d yesterday +%Y-%m-%d)
NMAP_OPTIONS="-v -T4 -sV -oX"
NMAP_OUTPUT=/opt/nmap_diff/scan_$d.xml
NMAP_TARGET="10.10.10.0/24"

#run nmap and save output
/usr/bin/nmap $NMAP_OPTIONS $NMAP_OUTPUT $NMAP_TARGET > /dev/null 2>&1

#compare output from yesterday and today
if [ -e /opt/nmap_diff/scan_$y.xml ]; then
    /usr/bin/ndiff /opt/nmap_diff/scan_$y.xml /opt/nmap_diff/scan_$d.xml > /opt/nmap_diff/diff.txt
fi

