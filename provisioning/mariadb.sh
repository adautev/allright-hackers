mysql -u root -e "SET PASSWORD FOR root@'localhost' = PASSWORD('pass');"
mysql -u root -ppass -e "FLUSH PRIVILEGES;"
mysql -u root -ppass -e "GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'%' WITH GRANT OPTION;"
mysql -u root -ppass -e "FLUSH PRIVILEGES;"
mysqladmin -u root -ppass create HackThePlanet
mysql -u root -ppass -e "GRANT ALL PRIVILEGES ON HackThePlanet.* TO 'vagrant'@'%' IDENTIFIED BY 'pass' WITH GRANT OPTION;"
mysql -u root -ppass -e "FLUSH PRIVILEGES;"
mysql -u root -ppass HackThePlanet < /vagrant/provisioning/HackThePlanet.sql
