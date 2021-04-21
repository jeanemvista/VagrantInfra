#!/usr/bin/env bash

HOSTNAME=$(hostname)
IP=$(hostname -I | awk '{print $2}')

echo "Start init - "$HOSTNAME

# Update hosts file

sed -i -e "/127.0.1.1 $HOSTNAME $HOSTNAME/d" /etc/hosts
in_hosts=$(cat /etc/hosts | grep -i "$IP" | wc -l)
if [ "$in_hosts" == "0" ];then
  echo "$IP $HOSTNAME" >> /etc/hosts
fi

echo "End init - "$HOSTNAME
