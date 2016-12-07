Ansible configuration for HTPC

Not yet ready for testing // In feature lock-down

Roles 1-5 more or less are for making a machine usable. Rest are for features

See the wiki for more

# Installing requisites on Debian
see gitlab CI or .gitlab-ci.yml

# Installing requisites on Arch Linux
sudo pacman -S virtualbox
packer -S ansible-git packer-io

# Why this is useful
0.all - 
1.preup - clone "me" on every machine // make it usable
8.htpc - set up remote control and other stuff (auto login, don't sleep, quick
boot ...) automagically
