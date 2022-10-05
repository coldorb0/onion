#/bin/sh

sudo s
apt install apache2 apt-transport-http tor
service apache2 start
service tor start
echo "HiddenServiceDir /var/lib/tor/hidden_service/" >> /etc/tor/torrc
echo "HiddenServicePort 80 127.0.0.1:80" >> /etc/tor/torrc
service tor restart
cat /var/lib/tor/hidden_service/hostname
