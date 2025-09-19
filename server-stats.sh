#!/bin/bash

echo "Linux server stats:"

echo "Total CPU usage:"
top -b -n 1 | grep "Cpu(s)" | awk '{print 100 - $8 "% used"}'

echo "Total memory usage (Free vs Used including percentage):"
free -m | head -2 | tail -1 | awk '{print "Free: " $4 "/" $2 " vs Used: " $3 / $2 * 100 "%"}'

echo "Total disk usage (Free vs Used including percentage):"
df -h --total | tail -1 | awk '{print "Free: " $4 "/" $2 " vs Used: " $5}' # df -h --total -a   for all 

echo "Top 5 processes by CPU usage:"
ps -e -o pid,comm,%cpu --sort=-%cpu | awk 'NR>1 && NR <= 6'

echo "Top 5 processes by memory usage:"
ps -e -o pid,comm,%mem --sort=-%mem | awk 'NR>1 && NR <= 6'

echo "OS version:"
grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"'

echo "Uptime:"
uptime -p

echo "Load average:"
uptime | cut -d: -f5 | xargs

echo "Logged in users:"
w -h | awk '{print $1}'