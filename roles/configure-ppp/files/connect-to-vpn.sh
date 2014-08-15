#!/bin/bash

location=$(curl -s strongvpn.com | grep images/flags | cut -d '"' -f2 | cut -d '/' -f3 | cut -d '.' -f1)
log="/tmp/vpn.log"

function logger () {
  log_time=$(date +"%d %b %Y %H:%M")

  echo "$log_time: $1" >> $log
}


if [[ $location != 'us' ]]; then
  logger "not connected to vpn."
  logger "expected us, found:  ${location}"
  poff -a
  sleep 5

  logger "connecting to vpn"
  pon vpn-connection
fi

logger "vpn connected"