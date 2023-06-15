#!/bin/bash
#Heavily inspired by https://docs.voidlinux.org/config/network/iwd.html
# use doas if installed

# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"
[ -x "$(command -v sudo)" ] && presco="sudo"

#Install iwd
$presco xbps-install -Suy iwd

$presco cat <<EOF > /etc/iwd/main.conf
[General]
UseDefaultInterface=true
EOF

#add to NetworkManager 
#[device]
#wifi.backend=iwd

#uncomment [device] section with iwd backend settings. See '00-network.sh' script.
$presco sed -i 's/#\[device\]/\[device\]/g' /etc/NetworkManager/NetworkManager.conf
$presco sed -i 's/#wifi.backend=iwd/wifi.backend=iwd/g' /etc/NetworkManager/NetworkManager.conf


$presco ln -s /etc/sv/iwd/ /var/service/
$presco sv restart NetworkManager

#install some wifi firmware if need
