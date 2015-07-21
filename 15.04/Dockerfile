FROM ubuntu:15.04

MAINTAINER Nick Groenen

COPY bin/runas.sh /usr/local/sbin/runas
COPY bin/build.sh /build.sh

RUN /build.sh && rm /build.sh
