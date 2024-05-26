
#!/bin/bash
sudo su
yum update -y
yum install -y httpd
mkdir store-dir
cd store-dir
wget https://github.com/didiblaise/mywebsite/blob/main/mywebsite.zip
unzip e-store.zip
cd ecommerce-html-template
mv * /var/www/html/
cd /var/www/html/
systemctl enable httpd
systemctl start httpd