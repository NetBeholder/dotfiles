#!/bin/bash
# use doas if installed
#NetworkManager instead of dhcpcd

# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"
[ -x "$(command -v sudo)" ] && presco="sudo"

# install wget and unzip if not installed
[ -x "$(command -v wget)" ] || $presco xbps-install -Suy wget
[ -x "$(command -v unzip)" ] || $presco xbps-install -Suy unzip

$presco xbps-install -Suy NetworkManager
$presco ln -s /etc/sv/NetworkManager/ /var/service
$presco ln -s /etc/sv/dbus/ /var/service
$presco cat <<EOF > /etc/NetworkManager/NetworkManager.conf
[main]
plugins=keyfile

#[device]
#wifi.backend=iwd
EOF

$presco rm /var/service/dhcpcd
