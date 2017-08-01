sudo apt-get update
sudo rm -f /var/lib/mysql/debian-*.flag
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server
sudo service mysql start
#make sure mysql listens every host
sudo sed -i 's/bind-address/#bind-address/g' /etc/mysql/my.cnf
sudo service mysql restart
