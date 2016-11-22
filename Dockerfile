FROM library/elasticsearch:5.0.1
MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>
#RUN bin/elasticsearch-plugin install royrusso/elasticsearch-HQ
RUN bin/elasticsearch-plugin install x-pack -b && \
  echo "xpack.security.enabled: false"	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "xpack.graph.enabled: false" 	>> /usr/share/elasticsearch/config/elasticsearch.yml && \
  echo "xpack.watcher.enabled: false"	>> /usr/share/elasticsearch/config/elasticsearch.yml

#WTF: https://www.elastic.co/guide/en/x-pack/current/reporting-settings.html#general-reporting-settings
#BUT: org.elasticsearch.bootstrap.StartupException: java.lang.IllegalArgumentException: unknown setting [xpack.reporting.enabled] did you mean any of [xpack.monitoring.enabled, xpack.security.enabled]?
#  echo "xpack.reporting.enabled: false" >> /usr/share/elasticsearch/config/elasticsearch.yml
