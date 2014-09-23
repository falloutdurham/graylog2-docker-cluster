#!/bin/bash

ELASTICSEARCH_HOSTS=${ELASTICSEARCH_HOSTS:-dev-elasticsearch}
HOST_IP=${HOST_IP}
ES_HOME=/elasticsearch

sed -i "s/ELASTICSEARCH_HOSTS/$ELASTICSEARCH_HOSTS/" $ES_HOME/config/elasticsearch.yml
sed -i "s/HOST_IP/$HOST_IP/" $ES_HOME/config/elasticsearch.yml


/elasticsearch/bin/elasticsearch -f
