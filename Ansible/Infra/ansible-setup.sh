#!/usr/bin/env bash

#set -Eeuo pipefail
#trap cleanup SIGINT SIGTERM ERR EXIT

# install ansible
apt-get update
apt-get install curl wget unzip python3 sshpass ansible -y

# update inventory file
# Update /etc/hosts about other hosts
echo > /etc/ansible/hosts
cat >> /etc/ansible/hosts <<EOF
[all]
192.168.33.11
192.168.33.12

[ubuntu]
192.168.33.11

[centos]
192.168.33.12
EOF