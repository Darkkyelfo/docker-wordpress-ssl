FROM wordpress:latest
COPY default-ssl.conf /etc/apache2/sites-enabled/default-ssl.conf
VOLUME /etc/ssl/certs/
VOLUME /etc/ssl/private/
RUN a2enmod ssl
