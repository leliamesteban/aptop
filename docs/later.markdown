Ansible configuration for laptop and htpc
see drafts/{htpc,automation}
automating [this](http://disconnected.systems/posts/raspberry-pi-archlinuxarm-setup/) using ansible
[deluge setup](https://gitlab.com/MathieuMD/ansible-role-deluge)

Programs
+   Sonarr
+   Headphones
+   Deluge (remote+gtk)
+   rtorrent + rutorrent
+   OpenSubtitles.py
+   Kodi
+   Couch Potato - [couch potato](https://github.com/cmacrae/ansible-couchpotato)

+   musicbrainz
+   beets
+   muximux
+   caketop-theater
+   Transmission
+   Sickrage
+   [playlistcurator](https://github.com/jokeofweek/playlistcurator)
+   htpc-manager
+   [managethis](https://gitlab.com/david.ellinger/Managethis)
+   [hanzo](https://github.com/palazzem/hanzo)
+   [mastermind (htpc)](https://github.com/jalaziz/mastermind)
+   [desktop custard](https://github.com/oneirosFade/ansible-custard)
+   [jacket](https://github.com/Jackett/Jackett) - API support for your favorite trackers

Features/Stuff that's set up
+   Bluetooth
+   Network boot (messages show on vm) (uboot,
    https://www.raspberrypi.org/documentation/hardware/raspberrypi/bootmodes/net_tutorial.md)
Boot from NFS
+   Boot messages are hidden on-screen unless error.
If fatal error, shutdown and debug on vm, else unobtrusive notification on
laptop or phone
+   UpNP DLNA stuff
+   Audio streaming
+   Misc (users, sudo, dots)
+   Support for vagrant
+   Adjust for machine (raspberry pi vs more powerful)
+   Independent of OS
+   Integrated backup
+   Remotes (phone, libcec etc)
    +   completely configured from the start
+   Support for different architectures
+   NFS/ Network storage

REQUIREMENTS
+   python-apt

Testing
+   vagrant provision
+   [Travis-CI](http://www.jeffgeerling.com/blog/2016/how-i-test-ansible-configuration-on-7-different-oses-docker)
Run with ...
+   ansible-playbook laptop.yml -i hosts --ask-sudo-pass --check # dry run
