# Graylog2-web

FROM dockerfile/java:oracle-java7

MAINTAINER ian@snappishproductions.com

RUN apt-get update && apt-get install -y pwgen

RUN \
  cd /tmp && \
  wget  https://github.com/Graylog2/graylog2-web-interface/releases/download/0.20.6/graylog2-web-interface-0.20.6.tgz && \
  tar xvzf graylog2-web-interface-0.20.6.tgz && \
  rm -f graylog2-web-interface-0.20.6.tgz && \
  mv /tmp/graylog2-web-interface-0.20.6 /graylog2-web

ADD config/graylog2-web-interface.conf /graylog2-web/conf/graylog2-web-interface.conf

ADD run_templates/run_graylog2_web.sh /graylog2-web/run_graylog2_web.sh

CMD ["/graylog2-web/run_graylog2_web.sh"]

EXPOSE 9000
