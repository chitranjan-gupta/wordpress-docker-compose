# Build
1. docker-compose build
2. docker-compose up -d
3. docker-compose down
4. docker volume ls
5. docker volume rm <volumename>
6. docker images
7. docker rmi <imageid>

-e "s!localhost!cautious-cod-pg95qvq9vrw296pj.github.dev!g"
-e "s!#(\s*ServerName\s+)www\.example\.com!\1cautious-cod-pg95qvq9vrw296pj.github.dev!g"

COPY ./cautious-cod-pg95qvq9vrw296pj-8000.app.github.dev.conf /etc/apache2/sites-available
RUN a2ensite cautious-cod-pg95qvq9vrw296pj-8000.app.github.dev.conf

Sources:
1. https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose
2. https://wordpress.org/documentation/article/administration-over-ssl/#using-a-reverse-proxy
3. https://hub.docker.com/_/wordpress