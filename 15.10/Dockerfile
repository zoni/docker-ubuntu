FROM ubuntu:15.10

MAINTAINER Nick Groenen

COPY bin/runas.sh /usr/local/sbin/runas
COPY bin/build.sh /build.sh

RUN /build.sh && rm /build.sh
