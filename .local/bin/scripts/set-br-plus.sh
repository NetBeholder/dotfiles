#!/bin/bash
# 
#

#set -euo pipefail

# use doas if installed
# Set Privilege-Escalation-Command OR presco OR pr-es-co

#[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"
#[ -x "$(command -v sudo)" ] && presco="sudo"

#up ot down; +/-5 step
ActionParam=$1
BrightnessStep=5
ActualBrightness=`cat /sys/class/backlight/amdgpu_bl0/actual_brightness`
MaxBrightness=`cat /sys/class/backlight/amdgpu_bl0/max_brightness`
if [[ ${ActualBrightness} -le $((${MaxBrightness}-${BrightnessStep})) ]]
	then
		#echo "before 250"
		echo $((${ActualBrightness}+${BrightnessStep})) > /sys/class/backlight/amdgpu_bl0/brightness
fi	
