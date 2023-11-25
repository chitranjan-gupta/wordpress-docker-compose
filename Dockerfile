FROM wordpress:latest

WORKDIR /usr/src/wordpress

COPY ./wp-config-docker.php /usr/src/wordpress/wp-config-docker.php

RUN set -eux; \
	find /etc/apache2 -name '*.conf' -type f -exec sed -ri -e "s!/var/www/html!$PWD!g" -e "s!Directory /var/www/!Directory $PWD!g" '{}' +; \
	cp -s wp-config-docker.php wp-config.php
