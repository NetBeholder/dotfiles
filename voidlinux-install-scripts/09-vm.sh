#!/bin/bash
# use doas if installed

# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"
[ -x "$(command -v sudo)" ] && presco="sudo"

#Install open-vm-tools (vmtoolsd)

$presco xbps-install -Suy open-vm-tools
$presco cp /etc/vmware-tools/tools.conf.example /etc/vmware-tools/tools.conf

#autochange screen resolution
$presco sed -i '/\[resolutionKMS\]/a enable=true' /etc/vmware-tools/tools.conf

$presco ln -s /etc/sv/vmtoolsd/ /var/service

#$presco xbps-install -Suy xf86-video-vmware xorg xterm
