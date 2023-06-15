#!/bin/bash
#Heavily inspired by https://docs.voidlinux.org/config/power-management.html
# use doas if installed

# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"
[ -x "$(command -v sudo)" ] && presco="sudo"

#Install tlp

$presco xbps-install -Suy tlp tlp-rdw smartmontools powertop
$presco ln -s /etc/sv/tlp/ /var/service
