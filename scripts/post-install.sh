#!/bin/bash

echo "Dotfiles ..."
git clone https://github.com/leliamesteban/.dotfiles && cd $_ && ./install
echo "Software ... (add all these to roles/6.x11/.../install.yml"
packer -S --noconfirm lemonbar rofi fasd percol ranger silversearcher-ag zsh neovim filezilla redshift arbtt gource google-chrome redshift arc-gtk-theme arc-icon-theme archdroid-icon-theme fingerprint-gui ttf-roboto
