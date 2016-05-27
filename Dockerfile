FROM resin/rpi-raspbian
MAINTAINER Gavin Adam <gavinadam80@gmail.com>

RUN apt-get update && apt-get install -y \
    nginx \
    --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
    chown -R www-data:www-data /var/lib/nginx

VOLUME [ "/etc/nginx/sites-available" , "/etc/nginx/ssl" , "/etc/nginx/conf.d" , "/var/log/nginx" , "/var/www/html" ]

EXPOSE 80 443

WORKDIR /etc/nginx

COPY init.sh .

CMD [ "./init.sh" ]
