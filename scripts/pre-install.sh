echo ALL OF THIS SHOULD BE IN THE BASE BOX
echo Ensure python is installed
sudo pacman -Syu && pacman -S python python2
git clone https://aur.archlinux.org/packer.git /tmp/packer && cd $_ && makepkg -sri
