#!/bin/bash

# Reset Mysql root password

cd /var/run
sudo cp -rp ./mysqld ./mysqld.bak
sudo service mysql stop
sudo mv ./mysqld.bak ./mysqld
sudo mysqld_safe --skip-grant-tables &
mysql -u root
#
#FLUSH PRIVILEGES;
#SET PASSWORD FOR root@'localhost' = PASSWORD('my_new_password');
