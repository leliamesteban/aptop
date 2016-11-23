0.all/ansible
+   begin generalizing (variables and OSes)
+   add when: ansible_os_family == ""
+   add support for lxc and vmware
+   depends (start thinking themes)
+   grouping other than playbooks?
+   rollback is essential: undo feature (ie declarative but standard base)
+   dependencies everywhere
+   register ...
+   configure ssh keys like [this](http://hakunin.com/six-ansible-practices)
+   add layout to project
+   bare metal (cobbler?)
+   rpi without a keyboard
+   convert between other solutions (salt) and increase speed

99.Irritations
+   remove defaults/main.yml if not right
+   test just one role/task?
+   new lines in output
+   why are new users created all the damn time?
+   make it look professional/consistent/easy to debug
+   test x11 (turn gui on and off)
+   get rid of perpetual "changed" errors like
    !http://hakunin.com/six-ansible-practices
+   whitespace in yaml
+   unable to resolve hostname without reboot
+   ~/True?
+   remove vagrant user?
+   hostname without reboot || rebooting
+   variables inside the yaml files (just for rewriting/changing long directories)
+   remove vagrant inconsistencies
+   speed a concern?
+   check for best practices
+   automate standard procedure (vagrant reload, ssh etc)

1.preup
+   passwords using
[vault](http://docs.ansible.com/ansible/playbooks_best_practices.html#best-practices-for-variables-and-vaults)
+   keyboard config
+   test ssh keys 
    +   automagically get host ip and set to var
    +   gen keys (a la ssh-keygen)
    +   ssh-copy-id
+   variables to everything
+   submodule 
    +   clone "me" to different machines (probably only useful if all trace can
        be deleted)
    +   get info from "account/identity"
2.usable/shell
+   dotfiles depends on gitlab_key being defined
+   add zsh and vim plugins to dotfiles repo
+   add a backup solution
    +   dotfiles on gitlab
    +   home on laptop
+   less colors (and other miscellaneous stuff)
3.pacman
+   add custom sources list for extra software
+   add sid or stable to global variables
4.software
+   add software from source (sys/source)
+   add software from ~/.local/bin
+   add packages used for building software somewhere
+   compile 
    +   rofi
    +   lemonbar
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
