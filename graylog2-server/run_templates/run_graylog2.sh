#!/bin/bash

ELASTICSEARCH_HOSTS=${ELASTICSEARCH_HOSTS:-dev-elasticsearch}
MONGODB_HOST=${MONGODB_HOST:-dev-mongo}
HOST_IP=${HOST_IP}

# default - yourpassword

PASSWORD=${PASSWORD:-e3c652f0ba0b4801205814f8b6bc49672c4c74e25b497770bb89b22cdeb4e951}

sed -i "s/ELASTICSEARCH_HOSTS/$ELASTICSEARCH_HOSTS/" /etc/graylog2.conf
sed -i "s/MONGODB_HOST/$MONGODB_HOST/" /etc/graylog2.conf
sed -i "s/PASSWORD/$PASSWORD/" /etc/graylog2.conf
sed -i "s/HOST_IP/$HOST_IP/" /etc/graylog2.conf
sed -i -e "s/password_secret =$/password_secret = $(pwgen -s 96)/" /etc/graylog2.conf

java -jar /graylog2/graylog2-server.jar
