#!/bin/bash

## Change the I/O scheduler for non-rotating disks on kernel change, if you happen to use more kerels!
## In this case Linux-CK changes to BFQ (Budget Fair Queueing) &
## Linux kernel changes to CFQ (Completely Fair Queuing)
## Leaves rotational disks on CFQ
## Put the script 'iodrive.sh', in, '/usr/local/bin'

_kernel=$(uname -r |cut -d'-' -f3)			## kernel version check, check U'r versioning notation, and change accordingly!, or don't use cut;)

if [ "$_kernel" = "ARCH" ]; then 						
	echo cfq > /sys/block/"$1"/queue/scheduler
f

if [ "$_kernel" = "CK" ]; then 
	echo bfq > /sys/block/"$1"/queue/scheduler
fi



## Put this udev rule in '/etc/udev/60-schedulers.rules' ,Udev rule used;

## set bfq or cfq scheduler for non-rotating disks
ACTION=="add|change", KERNEL=="sd[a-z]", ATTR{queue/rotational}=="0", RUN+="/usr/local/bin/iodrive.sh %k"

## set cfq scheduler for rotating disk
ACTION=="add|change", KERNEL=="sd[a-z]", ATTR{queue/rotational}=="1", ATTR{queue/scheduler}="cfq"


# copy left here by qinohe ;)