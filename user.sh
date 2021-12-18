#!/bin/bash

# Appearance pacakges
sudo apt install papirus-icon-theme lxappearance nitrogen breeze-cursor-theme zsh tmux zsh-syntax-highlighting zsh-autosuggestions fonts-noto-color-emoji fonts-firacode fonts-font-awesome libqt5svg5 qml-module-qtquick-controls

# Make Theme folders
mkdir -p ~/.themes ~/.fonts ~/.config

# Fira Code Nerd Font variant needed
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip -d ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
unzip Meslo.zip -d ~/.fonts   
fc-cache -vf
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/history-substring-search/history-substring-search.zsh
sudo mkdir /usr/share/zsh-history-substring-search
sudo mv history-substring-search.zsh /usr/share/zsh-history-substring-search/zsh-history-substring-search.zsh

#Ms-fonts
sudo apt install ttf-mscorefonts-installer

# Layan Cursors
cd "$HOME/build"
git clone https://github.com/vinceliuice/Layan-cursors
cd Layan-cursors
sudo ./install.sh

echo "Changing Shell to zsh"
chsh -s /usr/bin/zsh

echo "RUN LXAPPEARANCE"
cd ../debian-titus
cp -R homedir/.X* ~/
cp -R homedir/.zsh* ~/
cp -R homedir/bin ~/
cp homedir/.tmux.conf ~/
cp -R dotfiles/* ~/.config/
