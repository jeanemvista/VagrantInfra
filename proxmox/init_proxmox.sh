#!/usr/bin/env bash

HOSTNAME=$(hostname)
IP=$(hostname -I | awk '{print $2}')

echo "Start Proxmox install on "$HOSTNAME

echo "deb http://download.proxmox.com/debian/pve buster pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list

wget http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg -O /etc/apt/trusted.gpg.d/proxmox-ve-release-6.x.gpg

export DEBIAN_FRONTEND=noninteractive

apt -y -qq update  && apt -y -qq dist-upgrade

apt -y -qq install proxmox-ve postfix open-iscsi

echo "End Proxmox install on "$HOSTNAME
