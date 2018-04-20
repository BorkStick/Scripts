!#/bin/bash

#install script for a fresh ubuntu desktop install

#things to install

#chrome
#atom.io
#gparted

echo ""
echo "=================================================================="
echo " Welcome to the BorkSlash INITIAL SETUP SCRIPT FOR DESKTOP LINUX! "
echo "=================================================================="
echo ""


echo ""
echo "===================="
echo " GOTTA ADD THEM REPOS! "
echo "===================="
echo ""

#----------
# add repos
#----------
#obs
sudo add-apt-repository ppa:obsproject/obs-studio

#ATOM.IO
sudo add-apt-repository ppa:webupd8team/atom

#chrome repository
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

#enpass
echo "deb http://repo.sinew.in/ stable main" | sudo tee /etc/apt/sources.list.d/enpass.list
wget -O - https://dl.sinew.in/keys/enpass-linux.key | sudo apt-key add -

clear
echo ""
echo "============================================="
echo " UPDATTTTEEEEEEEEEE UPGRADDDDDDDDDEEEEEEEEE! "
echo "============================================="
echo ""


#check for upgrades then check for upgrades
sudo apt update -y && sudo apt upgrade -y


clear
echo ""
echo "========================="
echo " INSATALL THEM PROGRAMS! "
echo "========================="
echo ""


# install all the apps
AppList="vim i3 rofi htop tmux ffmpeg gdebi build-essential ffmpeg filezilla git curl gparted cmatrix exfat-fuse exfat-utils dconf-cli software-properties-common openssh-server atom ranger obs-studio google-chrome-stable enpass vlc"
sudo apt install -y $AppList


#GITKRACKEN
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb



clear
echo ""
echo "===================="
echo " SCRIPT TIME! "
echo "===================="
echo ""


#dracula theme for gnome terminal
git clone https://github.com/GalaticStryder/gnome-terminal-colors-dracula
./gnome-terminal-colors-dracula/install.sh


clear
echo ""
echo "========================="
echo " DEEZ DEM DOTFILES! "
echo "========================="
echo ""

#----------
# dotfiles
#----------
#tmux
git clone https://github.com/4ciiDic/tmux.conf.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

#kodi

#----------
# update system settings
#----------

#----------
# requires clicks
#----------
sudo apt-get install -y ubuntu-restricted-extras


clear
echo ""
echo "===================="
echo " Jobs Finished! "
echo "===================="
echo ""
