#!/bin/sh

sleep 10
if [ ! -f /var/www/wordpress/wp-config.php ];
then
	wp config create --allow-root \
		--dbname=sSQL_DATABASE \
		--dbuser=sSQL_USER \
		--dbpass=sSQL_PASSWORD \
		--dbhost=mariadb:3306 \
		--path='/var/www/wordpress'
fi
wp core install --allow-root \
	--path='/var/www/wordpress' \
	--skip-email
wp user create bob bob@inception.com --porcelain \
	--allow-root \
	--path='/var/www/wordpress'
