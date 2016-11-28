Ansible configuration for HTPC

Not yet ready for testing // In feature lock-down
When roles 1-5 are finished, it will be in good state

See the wiki for more

# Installing ansible on Debian
sudo apt-get install python-dev libxml2-dev libxslt-dev
sudo pip install git+git://github.com/ansible/ansible.git@devel

# Arch Linux
set up packer
packer -S ansible-git
