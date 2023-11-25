# Build
1. docker-compose build
2. docker-compose up -d
3. docker-compose down
4. docker volume ls
5. docker volume rm <volumename>
6. docker images
7. docker rmi <imageid>
8. docker exec -it <containerid> /bin/bash

-e "s!localhost!blog.example.com!g"
-e "s!#(\s*ServerName\s+)www\.example\.com!\1blog.example.com!g"

COPY ./blog.example.com.conf /etc/apache2/sites-available
RUN a2ensite blog.example.com.conf

COPY ./.htaccess /usr/src/wordpress/.htaccess

Custom Permalink
/index.php/%year%/%monthnum%/%day%/%postname%/

Sources:
1. https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose
2. https://wordpress.org/documentation/article/administration-over-ssl/#using-a-reverse-proxy
3. https://hub.docker.com/_/wordpress