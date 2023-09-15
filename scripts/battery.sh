#!/bin/bash

BATTERY_INFO_DIRECTORY=/sys/class/power_supply/BAT0
CAPACITY=$(cat $BATTERY_INFO_DIRECTORY/capacity)
STATUS=$(cat $BATTERY_INFO_DIRECTORY/status)
LOW_BATTERY_THRESHHOLD=15 # in percentage
SLEEP_TIME=300 # in seconds

while true
do
  if [[ $CAPACITY < $LOW_BATTERY_THRESHHOLD && $STATUS == "Discharging" ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send "LOW BATTERY!!!" "Only $CAPACITY% left."
  fi

  sleep $SLEEP_TIME
done
