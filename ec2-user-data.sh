#!/bim/bash
# Use this for your data (script from top to bottom)
# Install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hellow World from $(hostname -f)</h1>" > /var/www/html/index.html  
