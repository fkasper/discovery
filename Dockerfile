FROM busybox:ubuntu-14.04

MAINTAINER Florian Kasper <florian@xpandmmi.com>


WORKDIR /app

# copy binary into image
ADD fargo /app/eureka
ADD fargo.gcfg /etc/fargo.gcfg
ADD fargo.gcfg /etc/eureka.gcfg

#/usr/bin/eureka --config /etc/eureka.gcfg r --port 80 --name RAILS-MONOLTIHIC legacy-mono-client.cluster.sitrep-vatcinc.com:80

ENTRYPOINT ["/app/eureka", "--config", "/etc/fargo.gcfg", "r"]
