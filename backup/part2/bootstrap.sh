#!/usr/bin/env bash
apt-get -y update
apt-get install -y mysql-server apache2 wordpress php
apt-get -y upgrade
#wget -O mysqlusradd https://gist.github.com/mshafae/8c458df6b9cb6097c3ab9ccccac568ba.js
chmod u+x /vagrant/mysqlusradd
sudo /vagrant/mysqlusradd /etc/mysql/debian.cnf website admin admin
sudo cp /vagrant/000-default.conf /etc/apache2/sites-enabled
sudo a2enmod rewrite && sudo a2enmod vhost_alias && sudo /etc/init.d/apache2 restart
sudo cp /vagrant/config-localhost.php /etc/wordpress/
