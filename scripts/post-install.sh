#!/bin/bash

echo "Dotfiles ... (make them smaller! and add overwrite capabilities)"
git clone https://github.com/leliamesteban/.dotfiles && cd .dotfiles && ./install
echo "Installing some software that might be interactive"
tmux -c packer -S --noconfirm lollypop filezilla lemonbar arbtt gource spotify tomahawk-git arandr youtubedl

echo "Do the GUI dance ..."
echo "1. lxappearance
      2. arandr
      3. sign in to chrome
      4. set a background
      5. flash
     "

#human-git
#rofi
#wireshark-gtk
#gource
#nix
#fpm
#pythonpy
#
#gns3-server
#dynamips
#
#packer
#wmutils
#battery!!
#ibam
#tpacpi-bat
#batify
#
#debian
#apt-fast
#blender
#bup
#mpv
#scrot
#blender
#bootstrap-vz
#sshfs
#blender
