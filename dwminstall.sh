#!/bin/bash


echo "Installing Dependencies"

if command -v pacman &> /dev/null
then
	sudo pacman -S sxhkd alacritty rofi feh base-devel lm_sensors
fi
if command -v apt &> /dev/null
then
	sudo apt install sxhkd rofi build-essential libx11-dev lm-sensors libxinerama-dev sharutils suckless-tools libxft-dev libc6 feh
fi

touch .updates .temp $HOME/.config/.temps

echo "Cloneing Stuff"
cd $HOME/Downloads/
git clone https://github.com/mtwb47/scripts.git
cd $HOME/.config
git clone https://github.com/mtwb47/suckless.git

#Note: Scripts for updates only work on Arch or Arch based distros. Weather script does not work without API, so you'll need to do that manually. If you don't use the standard Downloads folder, you'll need to change these locations.  
echo "Moving stuff!"
cd $HOME/.config/suckless
mv .dwm ~
cd $HOME/Downloads/scripts
sudo mv pacupdate.sh cpuicon.sh diskicon.sh mailicon.sh mpdicon.sh pacmanicon.sh ramicon.sh tempicon.sh timeicon.sh upicon.sh volumeicon.sh volume.sh temp.sh /usr/local/bin

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


