#!/bin/bash

BATTERY_INFO_DIRECTORY=/sys/class/power_supply/*
LOW_BATTERY_THRESHHOLD=15 # in percentage
SLEEP_TIME=300 # in seconds

while true
do
  CAPACITY=$(cat $BATTERY_INFO_DIRECTORY/capacity)
  STATUS=$(cat $BATTERY_INFO_DIRECTORY/status)

  if [[ $CAPACITY -le $LOW_BATTERY_THRESHHOLD && $STATUS == "Discharging" ]] ; then
    /usr/bin/notify-send "LOW BATTERY!!!" "Only $CAPACITY% left."
  fi

  sleep $SLEEP_TIME
done
