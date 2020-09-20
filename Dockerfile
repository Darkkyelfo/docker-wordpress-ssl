FROM wordpress:latest
COPY default-ssl.conf /etc/apache2/sites-enabled/default-ssl.conf
RUN mkdir -p /etc/letsencrypt/live/{APLICATION_NAME} & mkdir -p /etc/letsencrypt/archive/{APLICATION_NAME}
VOLUME /etc/letsencrypt/live/{APLICATION_NAME}/
VOLUME /etc/letsencrypt/archive/{APLICATION_NAME}/
RUN a2enmod ssl
