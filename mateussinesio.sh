#!/bin/bash

sudo apt install -y xserver-xorg-core xinit x11-utils x11-xserver-utils
sudo apt install -y pipewire pipewire-alsa pipewire-jack pipewire-audio wireplumber pipewire-pulse
sudo apt install -y bspwm sxhkd polybar feh rofi alacritty firefox-esr

cp -r ~/arquivos-linux/.config/ ~/

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/polybar/iniciar.sh

sudo apt install -y ufw
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Sistema configurado com sucesso!"