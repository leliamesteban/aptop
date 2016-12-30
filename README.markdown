Ansible configuration for HTPC

# _NOT YET READY FOR TESTING // IN FEATURE LOCK-DOWN_

See the wiki for more

# Installing requisites on Debian
see gitlab CI or .gitlab-ci.yml

# Installing requisites on Arch Linux
sudo pacman -S virtualbox
packer -S ansible-git packer-io

# Why this is useful
Provision an SD card inside a VM (necessarily QEMU/KVM), get everything up and running and then put on a pi
0.all - 

1.preup - clone "me" on every machine // make it usable

8.htpc - set up remote control and other stuff (auto login, don't sleep, quick
boot ...) automagically
