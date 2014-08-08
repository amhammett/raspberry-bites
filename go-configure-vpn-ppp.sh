#!/bin/bash

if [[ "$#" -lt 6 ]] ; then
  echo "usage: $0 <HOST> <USER> <KEY_FILE> <VPN_USER> <VPN_PASSWORD> <VPN_HOSTNAME>"
  exit 1
fi

HOST=$1
USER=$2
KEY_FILE=$3
VPN_USER=$4
VPN_PASSWORD=$5
VPN_HOSTNAME=$6

ansible-playbook configure-vpn-ppp.yml -i $HOST, \
  --user=$USER --private-key=$KEY_FILE \
  --extra-vars="vpn_user=$VPN_USER vpn_pass=$VPN_PASSWORD vpn_hostname=$VPN_HOSTNAME"
