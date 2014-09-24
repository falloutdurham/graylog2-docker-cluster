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

## Instructions (for CoreOS)

 * Firstly, start the Mongo service:

 ```
 fleetctl submit mongo@1.service
 fleetctl start mongo@1.service
 ```

 * ElasticSearch:

```
fleetctl submit elasticsearch@{1,2,3,4}.service
fleetctl start elasticsearch@{1,2}.service
fleetctl start elasticsearch@{3,4}.service
```

(launching in stages to give the gossip servers a chance to register with `etcd`)

* Graylog2-server

```
fleetctl submit graylog2-server@{1,2,3}.service
fleetctl start graylog2-server@{1,2,3}.service
```

* Graylog2-web

```
fleetctl submit graylog2-web@1.service
fleetctl start graylog2-web@1.service
```

## Notes

Graylog2-server and Elasticsearch containers must currently run on different CoreOS machines (enforced in the service files).

Admin password is currently `yourpasswd`, but this can be changed if a `PASSWORD` environment variable is set and passed into the docker run command in the graylog2-server service file.

All registrations in `etcd` are carried out in the `/graylog2/` namespace.






