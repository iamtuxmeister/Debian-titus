#!/bin/bash

# Change Debian to SID Branch
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list 

apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" > /etc/apt/sources.list.d/brave-browser-release.list

# Add Custom Titus Rofi Deb Package
dpkg -i 'Custom Packages/rofi_1.7.0-1_amd64.deb'

# Update packages list
apt update

#apt dist-upgrade

# Add base packages
apt install psmisc alsa-utils brave-browser brightnessctl pulseaudio unzip picom bspwm polybar lightdm light-locker rofi kitty thunar flameshot neofetch sxhkd git lxpolkit lxappearance xorg

# Download Nordic Theme
cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git
