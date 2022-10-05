#/bin/sh

sudo su
apt install apache2 apt-transport-http tor
service apache2 start
service tor start
echo "HiddenServiceDir /var/lib/tor/hidden_service/" >> /etc/tor/torrc
echo "HiddenServicePort 80 127.0.0.1:80" >> /etc/tor/torrc
service tor restart
cat /var/lib/tor/hidden_service/hostname


#/bin/bash

sudo apt update -y
sudo apt install apache2 apt-transport-https -y
sudo service apache2 start
sudo apt install tor -y
sudo service tor start
sudo bash -c 'echo "HiddenServiceDir /var/lib/tor/hidden_service/" >> /etc/tor/torrc'
sudo bash -c 'echo "HiddenServicePort 80 127.0.0.1:80" >> /etc/tor/torrc'
sudo service tor restart
sleep 3
sudo bash -c 'cat /var/lib/tor/hidden_service/hostname'
