#!/bin/bash
sudo apt-get install git
git clone https://github.com/kodishmediacenter/kodishos7.2 #clone repo
cd powered-plymouth-theme/ #cd into the folder
sudo mv powered-plymouth-theme/ /usr/share/plymouth/themes/ #move it to the themes floder
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/powered-plymouth-theme/powered-plymouth-theme.plymouth 100 #Install it
sudo update-alternatives --config default.plymouth #Choose it as default
sudo update-initramfs -u #Update initramfs
cd .. #Move out of the folder
rm -rf powered-plymouth-theme/ #Delete the remaining folder, it is trash now
