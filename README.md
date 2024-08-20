# Wordpress, PHPMyadmin, Mysql using docker-compose
This creates a three docker container which are connected by a custom bridge network and two volumes,
one for storing mysql data and another for storing wordpress data.

## MYSQL
- username: root
- password: password

## PhpMyadmin
> When running phpmyadmin under reverse proxy then it automatically works 

## wordpress
> Wordpress running under reverse proxy requires changing the url

## Requirement
1. Change the `WORDPRESS_HOME` & `WORDPRESS_URL` with the reverse proxy url
then build

## Build
1. docker-compose build

## Run
1. docker-compose up -d

## Stop
1. docker-compose down

## List and remove the volumes used
1. docker volume ls
2. docker volume rm <volumename>

## List and remove the docker images
1. docker images
2. docker rmi <imageid>

## Executing bash shell inside the docker container
1. docker exec -it <containerid> /bin/bash

## List docker runnig process & stopped process
1. docker ps
2. docker ps -a

## Remove the docker process attached image
1. docker rm <container_id>

## List Docker network
1. docker network ls

### Note:
-e "s!localhost!blog.example.com!g"
-e "s!#(\s*ServerName\s+)www\.example\.com!\1blog.example.com!g"

COPY ./blog.example.com.conf /etc/apache2/sites-available
RUN a2ensite blog.example.com.conf

COPY ./.htaccess /usr/src/wordpress/.htaccess

Custom Permalink
/index.php/%year%/%monthnum%/%day%/%postname%/

## Sources:
1. https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose
2. https://wordpress.org/documentation/article/administration-over-ssl/#using-a-reverse-proxy
3. https://hub.docker.com/_/wordpress