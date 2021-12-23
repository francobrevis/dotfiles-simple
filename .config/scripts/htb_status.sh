#!/bin/sh

IFACE=$(/usr/sbin/ip addr | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
	echo " $(/usr/sbin/ip addr tun0 | grep "inet " | awk '{print $2}')"
	#echo "%{F#ffffff}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')%{u-}"
else
	echo " Disconnected"
	#echo "%{T4} Disconnected%{T-}"
fi
