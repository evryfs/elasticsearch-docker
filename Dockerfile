FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.2
LABEL maintainer="David J. M. Karlsen <david@davidkarlsen.com>"
RUN \
  echo "xpack.security.enabled: false"	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "xpack.graph.enabled: false" 	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "xpack.watcher.enabled: false"	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "path.repo: /usr/share/elasticsearch/data/backup" >> /usr/share/elasticsearch/config/elasticsearch.yml

