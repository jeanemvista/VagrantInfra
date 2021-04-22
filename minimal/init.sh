#!/usr/bin/env bash

HOSTNAME=$(hostname)
IP=$(hostname -I | awk '{print $2}')

echo "Start init - "$HOSTNAME

# Update hosts file
in_hosts=$(cat /etc/hosts | grep -i "$IP" | wc -l)
if [ "$in_hosts" == "0" ];then
  echo "$IP $HOSTNAME" >> /etc/hosts
fi

# Update distrib
#apt update -qq -y
#apt upgrade -qq -y

echo "End init - "$HOSTNAME
