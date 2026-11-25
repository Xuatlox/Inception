FROM debian:trixie

RUN apt -y update && apt -y upgrade
RUN apt -y install wget php php-fpm php-mysql mariadb-client
RUN wget https://fr.wordpress.org/wordpress-7.1.5-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-7.1.5-fr_FR.tar.gz
RUN rm -f /var/www/wordpress-7.1.5-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress
COPY /conf/php-fpm.conf /etc/php/8.4/fpm
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
