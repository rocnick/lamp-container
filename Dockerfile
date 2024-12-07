FROM debian:latest

# Get latest updates for the OS
RUN apt update
RUN apt upgrade -y

# Install Apache Httpd
RUN apt install apache2 -y

# Install PHP
RUN apt install php php-common libapache2-mod-php php-cli php-mysql -y

# Set Allow Override to all - this allows .htaccess files to work
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Enable MySQLi and PDO in PHP
RUN sed -i 's/;extension=mysqli/extension=mysqli/g' /etc/php/8.2/apache2/php.ini
RUN sed -i 's/;extension=pdo/extension=pdo/g' /etc/php/8.2/apache2/php.ini

# Starts and tails the output of Apache Httpd
CMD ["apache2ctl", "-D",  "FOREGROUND"]