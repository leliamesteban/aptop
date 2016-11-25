0.all/ansible [-]
+   generalisation, operating systems, hypervisors, use cases
+   testing
+   add depends to roles (start thinking themes)
+   undo feature (or make unecessary, if possible)
+   add layout to project
+   convert between other solutions (salt) and increase speed
+   edit Vagrantfile for best format
+   reorder project
+   add dependencies to global (third party modules)
+   vagrant filesystems getting full (tmpfs,/usr/bin)
+   generate bases with packer

0.git [-]
+   add features, not meaningless commits
+   add submodules

0.roles
+   dependencies in roles
+   add [blocks](http://docs.ansible.com/ansible/playbooks_blocks.html)
+   add [ansible-packer](https://github.com/austinhyde/ansible-packer)
+   register: ...?
+   package: 

99.Irritations [-]
+   remove defaults/main.yml if not right
+   test just one role/task?
+   ansible os family (don't repeat tasks: x11/pacakges.yml)
+   new lines in output
+   why are new users created all the damn time?
+   make it look professional/consistent/easy to debug
+   test x11 (turn gui on and off)
+   get rid of perpetual "changed" errors like
    !http://hakunin.com/six-ansible-practices
+   whitespace in yaml
+   unable to resolve hostname without reboot
+   remove vagrant user?
+   hostname without reboot || rebooting
+   variables inside the yaml files (just for rewriting/changing long directories)
+   remove vagrant inconsistencies
+   speed a concern?
+   check for best practices
+   automate standard procedure (vagrant reload, ssh etc)

1.preup [~]
+   passwords using
[vault](http://docs.ansible.com/ansible/playbooks_best_practices.html#best-practices-for-variables-and-vaults)
+   keyboard config
+   configure ssh keys like [this](http://hakunin.com/six-ansible-practices)
+   test ssh keys 
    +   automagically get host ip and set to var
    +   gen keys (a la ssh-keygen)
    +   ssh-copy-id
+   submodule 
    +   clone "me" to different machines (probably only useful if all trace can
        be deleted)
    +   get info from "account/identity"
2.pacman [-]
+   add custom sources list for extra software
+   set up aur
+   use 3rd party ansible module for packer
+   add sid or stable to global variables
3.usable/shell [-]
+   dotfiles depends on gitlab_key being defined
+   add zsh and vim plugins to dotfiles repo
+   add a backup solution
    +   dotfiles on gitlab
    +   home on laptop
+   miscellaneous commands (unless all in dotfiles)
+   generate usable shell from scratch (as in generate dotfiles
    programatically/didactically)
4.software [-]
+   add software from source (sys/source)
+   add software from ~/.local/bin
+   add packages used for building software somewhere
+   jessie compile 
    +   rofi
    +   lemonbar
+   aur
    +   fasd 
+   sort packages by themes and overlap
+   add software from source and pip and ruby

Not ready

5.wifi
+   use lookup file as fallback
+   user-configurable
+   put in 6.x11
+   get school password
6.x11
+   set up the audio
+   auto-login
+   bluetooth
+   wifi
+   lxappearance and others (arc-theme)
7.specificity
+   roles within a role?
+   virtualbox custom resolutions inside guest
+   vbox guest additions
    +   see
        [here](https://github.com/PeterMosmans/ansible-role-virtualbox-guest)
+   should branch out to other projects by themes (ie htpc, torrents, audio etc)
8.htpc
+   deluge
    +   modify deluge for laptop + GUI
    +   add register: to deluge
        +   to change settings, deluged should not be running
    +   add/copy systemd files
    +   add extra features
+   configure most other htpc packages
+   again, will branch out and form part of 7
