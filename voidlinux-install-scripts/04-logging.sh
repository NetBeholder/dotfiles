#!/bin/bash
#Heavily inspired by https://docs.voidlinux.org/config/services/logging.html
# use doas if installed

# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"
[ -x "$(command -v sudo)" ] && presco="sudo"

#Install socklogd

$presco xbps-install -Suy socklog-void
$presco ln -s /etc/sv/socklog-unix/ /var/service
$presco ln -s /etc/sv/nanoklogd/ /var/service

#####
#The logs are saved in sub-directories of /var/log/socklog/, and svlogtail can be used to access them conveniently.
#
#The ability to read logs is limited to root and users who are part of the socklog group.
#####
