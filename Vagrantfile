# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure('2') do |config|
#   config.vm.box = 'debian/jessie64'
#   config.vm.box = 'bugyt/archlinux'
    config.vm.box = 'arch'
    config.vm.synced_folder "/home/liam/drive/Music/Collection/beets", "/home/liam/Music"
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
                    "group3:vars" => {"variable1" => 9,
                                      "variable2" => "example"}
                    }
            end
            host.vm.provider :virtualbox do |vbox|
                vbox.name = "#{short_name}"
                vbox.memory = 2048
                vbox.cpus = 2
                vbox.customize ["modifyvm", :id, '--audio', 'coreaudio', '--audiocontroller', 'hda']
            end
        end
    end
end
