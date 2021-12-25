#!/usr/bin/env bash

#set -Eeuo pipefail
#trap cleanup SIGINT SIGTERM ERR EXIT

apt-get update
apt-get install curl wget unzip -y
wget -P /usr/local/bin "https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip"
sudo /usr/bin/unzip /usr/local/bin/terraform_1.0.11_linux_amd64.zip -d /usr/local/bin/