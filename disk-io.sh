#!/bin/sh

UPTIME="/usr/bin/uptime"
HOSTNAME="/bin/hostname"
IOSTAT="/usr/bin/iostat"

D0=`$IOSTAT -dk | grep mmcblk0 | gawk '{print $2}' | cut -d "." -f 1`

echo $D0
$UPTIME | awk '{ print $3, $4, $5 }'
$HOSTNAME
