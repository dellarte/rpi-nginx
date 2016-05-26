FROM resin/rpi-raspbian
MAINTAINER Gavin Adam <gavinadam80@gmail.com>

RUN apt-get update && apt-get install -y \
    nginx \
    --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80 443

CMD [ "nginx", "-g", "'daemon off;'" ]
