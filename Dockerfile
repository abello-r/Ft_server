FROM debian:buster
RUN  apt update && \
	 apt install nginx -y && \
	 apt install vim -y && \
	 apt install mariadb-server -y && \
	 apt install php-mbstring -y && \
	 apt install php-fpm -y && \
	 apt install php-mysql -y && \
	 apt install openssl -y && \
	 apt install wget -y  

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz && \
	tar -xzvf phpMyAdmin-5.0.2-english.tar.gz && \
	mv phpMyAdmin-5.0.2-english /var/www/html/phpmyadmin && \
	chown --recursive www-data:www-data /var/www/html/phpmyadmin

RUN	 wget https://es.wordpress.org/latest-es_ES.tar.gz && \
	 tar -xzvf latest-es_ES.tar.gz && \
	 mv wordpress /var/www/html/wordpress

RUN chmod 700 /etc/ssl/private && \
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=SP/ST=Spain/L=Madrid/O=42/CN=127.0.0.1" -keyout /etc/ssl/private/nginx_server.key -out /etc/ssl/certs/nginx_server.crt && \
    openssl dhparam -out /etc/nginx/dhparam.pem 1000 && \
    chown -R www-data:www-data /var/www/* && \
    chmod -R 755 /var/www/*

COPY srcs/index.html /var/www/html/
COPY srcs/space.jpg /var/www/html/
COPY srcs/donut.favicon.png /var/www/html/wordpress/
COPY srcs/dona.favicon.png /var/www/html/wordpress/
COPY srcs/favicon.png /var/www/html/
COPY srcs/wp-config.php /var/www/html/wordpress/
COPY srcs/localhost /etc/nginx/sites-enabled/
COPY srcs/config.inc.php /var/www/html/phpmyadmin/
COPY srcs/configbase.sql ./
COPY srcs/wordpress.sql ./

RUN  rm -rf phpMyAdmin-5.0.2-english.tar.gz
RUN  rm -rf latest-es_ES.tar.gz

CMD	service mysql start && \
	mysql -u root < ./configbase.sql && \
	mysql -u root wordpress < ./wordpress.sql && \ 
	service php7.3-fpm start && \
	service nginx start && \ 
	bash
