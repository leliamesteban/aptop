#!/bin/bash

echo "Dotfiles ... (make them smaller! and add overwrite capabilities)"
git clone https://github.com/leliamesteban/.dotfiles && cd .dotfiles && ./install
echo "Installing some software that might be interactive"
tmux -c "packer -S --noconfirm filezilla lemonbar gource spotify arandr youtube-dl numix-circle-icon-theme-git i3lock-fancy-git" 
echo "Clone $HOME"
echo "Do the GUI dance ..."
echo "1. lxappearance
      2. arandr
      3. sign in to chrome, spotify
      4. set a background
      5. flash
      6. password managers (enpass + supergenpass
     "
#nasa worldwind
#google earth
#liveroot
#human-git
#tomahawk-git
#lollypop
#arbtt
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
#inxi
#arch wiki cli
