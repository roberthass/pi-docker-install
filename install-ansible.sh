#!/bin/bash
sudo gpg --keyserver pgpkeys.mit.edu --recv-key 7638D0442B90D010
sudo gpg --keyserver pgpkeys.mit.edu --recv-key 8B48AD6246925553
sudo gpg -a --export 7638D0442B90D010 | sudo apt-key add -
sudo gpg -a --export 8B48AD6246925553 | sudo apt-key add -

echo "deb http://httpredir.debian.org/debian jessie-backports main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://httpredir.debian.org/debian jessie-backports main contrib non-free" >> /etc/apt/sources.list

apt-get update && apt-get -y -t jessie-backports install ansible
