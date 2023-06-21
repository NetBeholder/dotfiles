#!/bin/bash
# 
#

set -euo pipefail

# use doas if installed
# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"
[ -x "$(command -v sudo)" ] && presco="sudo"


UserName=$1
UserNameStrLength=${#UserName}
echo "Name length is: ${UserNameStrLength}"

if [[ ${UserNameStrLength} == 0 ]] 
then
    UserName="user" #some fallback name
    #echo "No name was input"
fi
#echo "Name of user: ${UserName}"
UserPassword="P@ssw0rd"

#some xdg's software and doas
$presco xbps-install -Suy xdg-utils xdg-user-dirs opendoas

#create user with temporary password
$presco useradd -s /bin/bash -m -G wheel,users,video,audio,lp,storage,scanner,input,socklog $UserName -p $UserPassword --badnames

#create xdg compliant dirs in ~
sudo -i -u $UserName xdg-user-dirs-update

#simple doas.conf for created user
$presco cat <<EOF > /etc/doas.conf
permit persist $UserName as root
permit setenv { XAUTHORITY LANG LC_ALL } $UserName
permit nopass $UserName as root cmd xbps-install
permit nopass $UserName as root cmd updatedb
permit nopass $UserName as root cmd nano
permit nopass $UserName as root cmd ls
permit nopass $UserName as root cmd cp
EOF

#set user's pass finally
echo "Set password for new user:"
passwd $UserName

#cloning dotfiles repo to new location
mkdir /home/$UserName/.dotfiles

_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && cd "$(dirname "$(readlink "${BASH_SOURCE[0]}" || echo ".")")" && pwd)"
git clone "${_path}/.." /home/$UserName/.dotfiles
chown -R $UserName:$UserName /home/$UserName/.dotfiles
