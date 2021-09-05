#!/bin/sh
set -eux

cp /share/.gitconfig /home/vagrant/.gitconfig
chown vagrant:vagrant /home/vagrant/.gitconfig
