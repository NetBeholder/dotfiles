#!/bin/sh
#
userresources=$HOME/.Xresources
#usermodmap=$HOME/.Xmodmap
#sysresources=/etc/X11/xinit/.Xresources
#sysmodmap=/etc/X11/xinit/.Xmodmap
#
## merge in defaults and keymaps
#
#if [ -f $sysresources ]; then
#    xrdb -merge $sysresources
#fi
#
#if [ -f $sysmodmap ]; then
#    xmodmap $sysmodmap
#fi
#
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
#
#if [ -f "$usermodmap" ]; then
#    xmodmap "$usermodmap"
#fi
#
## start some nice programs
#
#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
# for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
#  [ -x "$f" ] && . "$f"
# done
# unset f
#fi
#
##twm &
##xclock -geometry 50x50-1+1 &
##xterm -geometry 80x50+494+51 &
##xterm -geometry 80x20+494-0 &
##dbus-update-activation-environment --all --verbose
#
#[ -f /etc/xprofile ] && . /etc/xprofile
#[ -f ~/.xprofile ] && . ~/.xprofile
##exec xterm -geometry 80x66+0+0 -name login
#feh --bg-scale --randomize ~/.local/share/backgrounds/* &
#
#~/.screenlayout/laptop.sh &
#
##desktop portal has no it's own runit service...
#/usr/libexec/xdg-desktop-portal &
#/usr/libexec/xdg-desktop-portal-gtk &
#
#feh --bg-scale --randomize ~/.local/share/backgrounds/* &
##pipewire &
#dbus-run-session pipewire &
#dbus-run-session wireplumber &
#pipewire-pulse &
##wireplumber &
#
#sxhkd &
#
if [ -f "${XDG_CONFIG_HOME:-$HOME/.config}/x11/xprofile" ]; then
	. "${XDG_CONFIG_HOME:-$HOME/.config}/x11/xprofile"
else
	. "$HOME/.xprofile"
fi
##exec dbus-run-session dwm
##exec dbus-run-session ~/.local/src/suckless/dwm-statusbar/dwm
#exec dbus-launch --sh-syntax --exit-with-session ~/.local/src/suckless/dwm-6.4/dwm
#~/.local/src/suckless/dwm-6.4/dwm
dbus-update-activation-environment --all
#dbus-launch dwm
exec dbus-run-session ~/.local/src/suckless/dwm-6.4/dwm
