add-apt-repository ppa:aaeon-cm/5.4-upboard -y
apt -y update
apt-get -y install linux-generic-hwe-18.04-5.4-upboard
apt dist-upgrade -y
update-grub
