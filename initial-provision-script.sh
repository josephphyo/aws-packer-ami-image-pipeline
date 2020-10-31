#!/bin/bash 

yum update -y
yum install httpd -y
systemctl start httpd && sudo systemctl enable httpd 
echo "Hello Created from Packer V-0.1" >> /var/www/html/index.html
systemctl restart httpd
curl -XGET localhost >> /var/www/html/curl.txt
