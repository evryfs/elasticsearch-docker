FROM elasticsearch:5.0.0
MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>
#RUN plugin install royrusso/elasticsearch-HQ
RUN bin/elasticsearch-plugin install x-pack -b
