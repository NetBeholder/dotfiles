#!/bin/sh
case "$2" in
    PBTN|PWRD)
        logger "PowerButton pressed: $2 u zzz-ing..." 
	zzz
        ;;
    *)  logger "ACPI action undefined: $2" ;;
esac
;;

