Graylog2 CoreOS Cluster
=======================

Container-based deployment of Graylog2 on CoreOS. Includes:

  * Elasticsearch container that registers itself with etcd for generating ES clusters
  * Mongo container for schema
  * Graylog2-server container
  * Graylog2-web container
  * systemd service files for CoreOS's fleet

Future extensions:

  * Vulcand or HAProxy load-balancer front-end


