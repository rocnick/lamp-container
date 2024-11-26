FROM debian:latest

# Get latest updates for the OS
RUN apt update
RUN apt upgrade -y

# Install Apache Httpd
RUN apt install apache2 -y

# Install PHP
RUN apt install php php-common libapache2-mod-php php-cli php-mysql -y

# Starts and tails the output of Apache Httpd
CMD ["apache2ctl", "-D",  "FOREGROUND"]