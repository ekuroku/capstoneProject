#!/bin/bash
sudo yum update -y
sudo yum install -y httpd git
sudo systemctl start httpd
sudo systemctl enable httpd
cd /var/www/html
sudo git init
git pull https://github.com/drehnstrom/space-invaders.git
