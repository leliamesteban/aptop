# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure('2') do |config|
#   config.vm.box = 'debian/jessie64'
#   config.vm.box = 'bugyt/archlinux'
    config.vm.box = 'arch'
    {
        'laptop'    => '192.168.2.42',
        'htpc'   => '192.168.2.39',
    }.each do |short_name, ip|
        config.vm.define short_name do |host|
            host.vm.network 'private_network', ip: ip
            host.vm.hostname = #{short_name}
            host.vm.provision :ansible do |ansible|
#               ansible.verbose = "v"
                ansible.playbook = "#{short_name}.yml"
                ansible.groups = {
                    "laptop" => ['192.168.2.42'],
                    "vagrant" => ["192.168.2.[39:42]"],
                    "group3" => ["machine[1:2]"],
                    "group4" => ["other_node-[a:d]"], # silly group definition
                    "all_groups:children" => ["group1", "group2"],
                    "group3:vars" => {"variable1" => 9,
                                      "variable2" => "example"}
                    }
            end
            host.vm.provider :virtualbox do |vbox|
                vbox.name = "#{short_name}"
                vbox.memory = 1024
                vbox.cpus = 2
            end
        end
    end
end
