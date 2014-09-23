# Graylog2-Server

FROM dockerfile/java:oracle-java7

MAINTAINER ian@snappishproductions.com

RUN apt-get update && apt-get install -y pwgen

RUN \
  cd /tmp && \
  wget  https://github.com/Graylog2/graylog2-server/releases/download/0.20.6/graylog2-server-0.20.6.tgz && \
  tar xvzf graylog2-server-0.20.6.tgz && \
  rm -f graylog2-server-0.20.6.tgz && \
  mv /tmp/graylog2-server-0.20.6 /graylog2

ADD config/graylog2.conf /etc/graylog2.conf

ADD run_templates/run_graylog2.sh /graylog2/run_graylog2.sh

CMD ["/graylog2/run_graylog2.sh"]

EXPOSE 12900
EXPOSE 12201
EXPOSE 9300
