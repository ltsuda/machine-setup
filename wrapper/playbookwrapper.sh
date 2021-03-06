#!/bin/sh

APTPKGS="ansible aptitude"
RPMPKGS="ansible"

if [ ! -x "/usr/bin/ansible-playbook" ]; then
  # Crude multi-os installation option
  if [ -x "/usr/bin/apt" ]
  then
    sudo apt update && sudo apt install -y $APTPKGS
  elif [ -x "/usr/bin/dnf" ]
  then
    sudo dnf check-update ; sudo dnf -y install $RPMPKGS
  elif [ -x "/usr/bin/yum" ]
  then
    yum -y update && sudo yum install -y $RPMPKGS
  fi
fi

ansible-playbook $@
