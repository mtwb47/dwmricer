#!/bin/bash

#Arch by default. If you use a Debian/Ubuntu based distor, comment out the arch line and uncomment the apt line. You will also need to download Nerd Fonts seperately. If you're on Ubuntu, you'll need to chang the terminal in .dwm/sxhkd/sxhkdrc to something other than alacritty as it is not packaged by Ubuntu, though it is in the popos repos.

echo "Installing Dependencies"
sudo pacman -S sxhkd alacritty rofi
#sudo apt install sxhkd rofi build-essential libx11-dev libxinerama-dev sharutils suckless-tools libxft-dev libc6

echo "Cloneing Stuff"
cd $HOME/Downloads/
git clone https://github.com/mtwb47/scripts.git
cd
cd $HOME/.config
git clone https://github.com/mtwb47/suckless.git

#Note: Scripts for updates only work on Arch or Arch based distros.
echo "Moving stuff!"
cd $HOME/.config/suckless
mv .dwm ~
cd
cd $HOME/Downloads/scripts
sudo mv weather.py pacupdate.sh /usr/local/bin


cd

echo "making things"
cd $HOME/.config/suckless/dwm
rm config.h
make && sudo make install
cd ../st
rm config.h
make && sudo make install
cd ../slstatus
rm config.h
make && sudo make install
cd ../dmenu
rm config.h
make && sudo make install

cd

echo "Creating Login Manager Entry for DWM"
cd /usr/share/xsessions
sudo touch dwm.desktop
sudo chown $USER dwm.desktop
sudo cat > dwm.desktop <<EOF
[Desktop Entry]
Encoding=UTF-8
Name=Dwm
Comment=the dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession

EOF


