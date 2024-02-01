#!/usr/bin/env bash

currentSink=$(pactl get-default-sink)

if  [ "$currentSink" = "alsa_output.pci-0000_00_1f.3.analog-stereo" ] ; then
	isHDMI=false
else
	isHDMI=true
fi


if  [ "$isHDMI" = true ]  ; then
	pactl set-card-profile "alsa_card.pci-0000_00_1f.3" "output:analog-stereo+input:analog-stereo"
	notify-send -t  1500 -h string:x-canonical-private-synchronous:sysnotify -u low "Sound output: speakers"
else
	pactl set-card-profile "alsa_card.pci-0000_00_1f.3" "output:hdmi-stereo+input:analog-stereo"
	notify-send -t  1500 -h string:x-canonical-private-synchronous:sysnotify -u low "Sound output: HDMI"
fi

