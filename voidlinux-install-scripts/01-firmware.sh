#!/bin/bash
# Heavily inspired by https://docs.voidlinux.org/config/index.html
# use doas if installed

# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"
[ -x "$(command -v sudo)" ] && presco="sudo"

#Nonfree Repo
$presco xbps-install -Suy void-repo-nonfree

#Firmware
$presco xbps-install -Suy linux-firmware
