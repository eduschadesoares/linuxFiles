#!/bin/bash

echo "Updating System"
#### My desktop ###
##start with update###
apt-get update

echo "Installing important libraries"
#### Installing libraries ###
apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
apt install -y gcc-multilib g++-multilib libc6-dev-i386 \
     qemu-kvm mesa-utils


echo "Adding all the PPA's"
### Grabbing all PPA's ###
add-apt-repository ppa:webupd8team/java
add-apt-repository ppa:maarten-fonville/android-studio


echo "Updating"
### Update repos ###
apt-get update

echo "Installing Java Oracle"
### Installing Java ###
apt-get install -y java-common oracle-java8-installer

echo "Setting up Java Oracle"
### setting up java as default ###
apt-get install -y oracle-java8-set-default
source /etc/profile

echo "Installing android Studio"
### Installing android studio ###
apt-get install -y android-studio

#echo "Starting Android Studio"
/opt/android-studio/bin/studio.sh
