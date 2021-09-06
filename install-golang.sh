#!/bin/sh
set -eux

add-apt-repository ppa:longsleep/golang-backports
apt update
apt install -y golang-go
