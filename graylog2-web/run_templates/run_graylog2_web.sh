#!/bin/bash

GRAYLOG2_HOSTS=${GRAYLOG2_HOSTS:-dev-graylog2:12900}


sed -i "s@GRAYLOG2_HOSTS@$GRAYLOG2_HOSTS@" /graylog2-web/conf/graylog2-web-interface.conf
sed -i -e "s/application.secret =$/application.secret = $(pwgen -s 96)/" /graylog2-web/conf/graylog2-web-interface.conf

/graylog2-web/bin/graylog2-web-interface
