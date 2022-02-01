#!/bin/sh
# nkd's install script
# only tested on Debian-based Linux
# feel free to edit for your own
# please leave credit
pushd /tmp
mkdir nkdtestground
cd nkdtestground
# modified from winehq and winetricks
wget --user-agent="" -nc https://dl.winehq.org/wine-builds/winehq.key\
 https://github.com/winetricks/winetricks/raw/master/src/winetricks\
 https://github.com/winetricks/winetricks/raw/master/src/winetricks.bash-completion\
 https://github.com/winetricks/winetricks/raw/master/src/winetricks.1\
 https://github.com/adakkusu-san/windowstheme/raw/main/nkdpd.reg
sudo apt-key add winehq.key
sudo touch /etc/apt/sources.list.d/wine.list
sudo echo 'deb https://dl.winehq.org/wine-builds/debian/ bullseye main'\
>/etc/apt/sources.list.d/wine.list
sudo dpkg --add-architecture i386
sudo apt update
# edit this file and add/remove what you need or not
sudo apt install git ffmpeg qmmp most lynx xarchiver mpv qalc dosbox fceux\
 gimp palemoon spacefm htop lynx neofetch micro cabextract p7zip-full\
 unzip unrar zenity xsel xclip dos2unix imagemagick chromium obs-studio\
 audacity yt-dlp
sudo apt install --install-recommends winehq-stable
chmod +x winetricks
sudo mv winetricks /usr/bin
sudo mv winetricks.bash-completion /usr/share/bash-completion/completions/winetricks
sudo mv winetricks.1 /usr/share/man/man1/winetricks.1
wine regedit 'nkdpd.reg'
winetricks mspaint
# this is to test if it works
wine mspaint
popd
