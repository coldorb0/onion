#/bin/bash


apt update -y
apt install apache2 apt-transport-https tor -y
service apache2 start
service tor start
echo "HiddenServiceDir /var/lib/tor/hidden_service/" >> /etc/tor/torrc
echo "HiddenServicePort 80 127.0.0.1:80" >> /etc/tor/torrc
service tor restart
sleep 3
cat /var/lib/tor/hidden_service/hostname
