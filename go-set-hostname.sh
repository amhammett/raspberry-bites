#!/bin/bash

if [[ "$#" -lt 3 ]] ; then
  echo "usage: $0 <HOST> <USER> <KEY_FILE> <HOSTNAME>"
  exit 1
fi

HOST=$1
USER=$2
KEY_FILE=$3
HOSTNAME=$4

ansible-playbook set-hostname.yml -i $HOST, \
  --user=$USER --private-key=$KEY_FILE \
  --extra-vars="hostname=$HOSTNAME"
