My Small scripts
 
####                    Fony-Pi-Time

* Fony clock for Raspberry Pi to prevent going back to 1970.
* Your system time won't go back further, then the last known date/time.

* Put time.sh somewhere in your home dir. scripts for instance.
* Put time-restore.sh in /usr/local/bin
* Don't forget to 'chmod +x'

* Create a file called last-time and put it somewhere in your home dir. 
* 'touch /home/$USER/scripts/last-time'

* Create an alias for reboot in your .bashrc or .zshrc
* 'alias reboot='sh /home/$USER/scripts/time.sh && sudo reboot'

* Create a service restore-time.service in /etc/sytemd/system
* Enable & start it 'systemctl enable restore-time.service &&
* systemctl start restore-time.service

* No more complaints about 'things' happening in the future.