#!/bin/bash

sed -i 's/NODEJS_IP/'"$RPI_NODEJS_PORT_80_TCP_ADDR"'/g' /etc/nginx/sites-available/default
sed -i 's/GOPHISH_ADMIN_IP/'"$GOPHISH_PORT_3333_TCP_ADDR"'/g' /etc/nginx/sites-available/default
sed -i 's/GOPHISH_PHISH_IP/'"$GOPHISH_PORT_8081_TCP_ADDR"'/g' /etc/nginx/sites-available/default

nginx
