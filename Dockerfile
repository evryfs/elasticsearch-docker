FROM docker.elastic.co/elasticsearch/elasticsearch:6.1.2
LABEL maintainer="David J. M. Karlsen <david@davidkarlsen.com>"
ARG EPE_VERSION=6.1.2.0
#RUN bin/elasticsearch-plugin install royrusso/elasticsearch-HQ
RUN elasticsearch-plugin install -b https://github.com/vvanholl/elasticsearch-prometheus-exporter/releases/download/$EPE_VERSION/elasticsearch-prometheus-exporter-$EPE_VERSION.zip
RUN \
  echo "xpack.security.enabled: false"	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "xpack.graph.enabled: false" 	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "xpack.watcher.enabled: false"	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "path.repo: /usr/share/elasticsearch/data/backup" >> /usr/share/elasticsearch/config/elasticsearch.yml 

#WTF: https://www.elastic.co/guide/en/x-pack/current/reporting-settings.html#general-reporting-settings
#BUT: org.elasticsearch.bootstrap.StartupException: java.lang.IllegalArgumentException: unknown setting [xpack.reporting.enabled] did you mean any of [xpack.monitoring.enabled, xpack.security.enabled]?
#  echo "xpack.reporting.enabled: false" >> /usr/share/elasticsearch/config/elasticsearch.yml
