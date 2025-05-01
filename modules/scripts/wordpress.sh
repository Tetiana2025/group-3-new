#!/bin/bash

	sudo yum install httpd -y
	sudo systemctl status http
	sudo systemctl start httpd
	sudo systemctl enable httpd
	sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
	wget https://wordpress.org/latest.tar.gz
	tar -xzf latest.tar.gz
	sudo mv wordpress/* /var/www/html
	sudo chown -R apache:apache /var/www/html
	sudo chmod -R 755 /var/www/html
	sudo rm -r /var/www/html/index.html
	sudo systemctl restart httpd