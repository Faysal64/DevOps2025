#!/bin/bash

echo "Installation MariaDB..."
apt update -y
apt install -y mariadb-server

echo "Configuration MariaDB pour écoute externe..."
sed -i "s/^bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

echo "Redémarrage MariaDB..."
systemctl restart mariadb
systemctl enable mariadb

echo "Exécution du script SQL..."
mysql < /vagrant/db_sql/db_init.sql
