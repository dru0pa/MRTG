#!/bin/sh
#Get the system disk usage
#partition=root
#partition2=mmcblk0p1
#diskusage=`df -k`

df -k | grep root | awk '{ print $5 }' | sed 's/.$//'

df -k | grep mmcblk0p1 | awk '{ print $5 }' | sed 's/.$//'
