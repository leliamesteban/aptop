Ansible configuration for HTPC

# _NOT YET READY FOR TESTING // IN FEATURE LOCK-DOWN_

See the wiki for more

# Installing requisites on Debian
see gitlab CI or .gitlab-ci.yml

# Installing requisites on Arch Linux
sudo pacman -S virtualbox lxd qemu

packer -S ansible-git packer-io

# Why this is useful
Provision an SD card inside a VM (necessarily QEMU/KVM), get everything up and running and then put on a pi

One consistent implementation rather than following a bunch of guides

No need for big, clunky virtualboxes or backing up binary files
