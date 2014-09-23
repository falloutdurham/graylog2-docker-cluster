# ElasticSearch

FROM dockerfile/java:oracle-java7

MAINTAINER ian@snappishproductions.com

# Install ElasticSearch. Note - Graylog2 is currently locked at 0.90.10

RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.10.tar.gz && \
  tar xvzf elasticsearch-0.90.10.tar.gz && \
  rm -f elasticsearch-0.90.10.tar.gz && \
  mv /tmp/elasticsearch-0.90.10 /elasticsearch

VOLUME ["/data"]

ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

ADD run_templates/run_es.sh /elasticsearch/run_es.sh

WORKDIR /data

CMD ["/elasticsearch/run_es.sh"]

EXPOSE 9200
EXPOSE 9300

