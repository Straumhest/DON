#!/bin/bash
set -e
set -o pipefail
set -x
apt update -qq > /dev/null || (
  sleep 5
  apt update -qq > /dev/null
)
apt install -qy ansible
