Ansible configuration for HTPC
see drafts/{htpc,automation}

Programs
+   Sonnar
+   Headphones
+   Deluge (remote+gtk)
+   rtorrent + rutorrent
+   OpenSubtitles.py
+   Kodi
+   Couch Potato

+   musicbrainz
+   beets
+   muximux
+   caketop-theater
+   Transmission
+   Sickrage
+   htpc-manager
+   [managethis](https://gitlab.com/david.ellinger/Managethis)

Stuff that's set up
+   Bluetooth
+   Remote control
+   UpNP DLNA stuff
+   Audio streaming
+   Misc (users, sudo, dots)
+   Support for vagrant

REQUIREMENTS
+   python-apt

Testing
+   vagrant
+   [Travis-CI](http://www.jeffgeerling.com/blog/2016/how-i-test-ansible-configuration-on-7-different-oses-docker)
Run with ...
+   ansible-playbook laptop.yml -i hosts --ask-sudo-pass --check # dry run
