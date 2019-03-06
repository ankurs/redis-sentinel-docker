#!/bin/bash -e
if [ -z $EXTERNAL_IP"" ]
then
    EXTERNAL_IP=127.0.0.1
fi
echo "Using External IP: $EXTERNAL_IP"

sed -i "s|IP_HERE|$EXTERNAL_IP|" /opt/redis/conf/*

exec supervisord -n -c /etc/supervisor/supervisord.conf
