FROM library/elasticsearch:5.0.0
MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>
#RUN bin/elasticsearch-plugin install royrusso/elasticsearch-HQ
RUN bin/elasticsearch-plugin install x-pack -b && \
  echo "xpack.security.enabled: false"	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "xpack.graph.enabled: false" 	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "xpack.watcher.enabled: false"	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "xpack.reporting.enabled: false" >> /usr/share/elasticsearch/config/elasticsearch.yml
