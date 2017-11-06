#!/bin/bash
#set -e

cp -rf /conf /usr/local/adinf/nginx

NGINX_CONF=/usr/local/adinf/nginx/conf/nginx.conf
IS_DAEMON=`cat $NGINX_CONF |grep daemon |wc -l`

if [ $IS_DAEMON == ""1 ]; then
        sed '/daemon/d' $NGINX_CONF > $NGINX_CONF.bak
	mv $NGINX_CONF.bak $NGINX_CONF
fi
echo "daemon off;" >> $NGINX_CONF

/usr/local/adinf/nginx/sbin/nginx -t

/usr/local/adinf/nginx/sbin/nginx
