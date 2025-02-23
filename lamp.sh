#!/bin/bash
sudo yum update -y
sudo dnf update -y
sudo yum install httpd -y
sudo yum install php -y
sudo dnf install mariadb105-server -y
sudo service httpd restart
sudo service php-fpm restart
sudo service mariadb restart
cd /var/www/html
sudo touch index.html my.php
echo "apache is working" | sudo tee index.html
echo "<?php phpinfo(); ?>" | sudo tee my.php
