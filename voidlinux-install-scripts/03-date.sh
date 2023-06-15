#!/bin/bash
#Heavily inspired by https://docs.voidlinux.org/config/date-time.html
# use doas if installed

# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"
[ -x "$(command -v sudo)" ] && presco="sudo"

#Set the timezone:
$presco ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime

#Set hardware clock to localtime (Windows-style) from #HARDWARECLOCK="UTC"
$presco sed -i 's/#HARDWARECLOCK="UTC"/HARDWARECLOCK="localtime"/g' /etc/rc.conf

#NTP daemon
$presco xbps-install -Suy chrony
ln -s /etc/sv/ntpd/ /var/service/

#Update the Hardware clock:
$presco hwclock --systohc
