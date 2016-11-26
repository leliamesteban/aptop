Ansible configuration for HTPC

Not yet ready for testing // In feature lock-down
roles 1-5 will be finished, the foundation set

See docs/TODO.markdown and docs/later.markdown (will become the readme when it's
ready

[Best Practices](http://docs.ansible.com/ansible/playbooks_best_practices.html)

# Installing ansible on Debian
sudo apt-get install python-dev libxml2-dev libxslt-dev
sudo pip install git+git://github.com/ansible/ansible.git@devel

# Arch Linux
set up packer
packer -S ansible-git
