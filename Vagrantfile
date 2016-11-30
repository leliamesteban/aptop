# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure('2') do |config|
    config.vm.box = 'debian/jessie64'
#   config.vm.box = 'bugyt/archlinux'
#   config.vm.box = 'arch'
    {
        'laptop'    => '192.168.2.42',
        'htpc'   => '192.168.2.39',
    }.each do |short_name, ip|
        config.vm.define short_name do |host|
            host.vm.network 'private_network', ip: ip
#           host.vm.hostname = "#{short_name}"
            host.vm.provision :ansible do |ansible|
#               ansible.verbose = "v"
                ansible.playbook = "#{short_name}.yml"
            end
            host.vm.provider :virtualbox do |vbox|
                vbox.name = "#{short_name}"
            end
        end
    end
end
