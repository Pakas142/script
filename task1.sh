#!/bin/bash

if [ -f /etc/redhat-release ]; then
  sudo yum install -y httpd
  sudo systemctl start httpd
  sudo systemctl enable httpd
else
  sudo apt-get update
  sudo apt-get install -y apache2
  sudo systemctl start apache2
fi

echo "<html><head><title>Welcome</title></head><body><h1>Welcome to Guvi</h1></body></html>" | sudo tee /var/www/html/index.html
