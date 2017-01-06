# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure('2') do |config|
    config.vm.box = 'arch'
#   config.ssh.username = 'liam'
    {
        'vlaptop'    => '192.168.2.42',
        'vhtpc'   => '192.168.2.39',
    }.each do |short_name, ip|
        config.vm.define short_name do |host|
            host.vm.network 'private_network', ip: ip
            host.vm.hostname = #{short_name}
            host.vm.provision :ansible do |ansible|
#               ansible.verbose = "v"
                ansible.playbook = "#{short_name}.yml"
            end
            host.vm.provision "shell" do |s|
#               s.inline = "sudo reboot"
                s.path = "scripts/post-install.sh"
            end
                # https://www.vagrantup.com/docs/provisioning/shell.html
            host.vm.provider :virtualbox do |vbox|
                vbox.name = "#{short_name}"
                vbox.memory = 4068
                vbox.cpus = 2
                vbox.customize ["modifyvm", :id, '--audio', 'pulse', '--audiocontroller', 'hda']
            end
        end
    end
end
