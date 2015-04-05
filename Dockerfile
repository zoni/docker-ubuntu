FROM ubuntu:14.10

MAINTAINER Nick Groenen

COPY bin/runas.py /usr/local/sbin/runas
COPY bin/build.sh /build.sh

RUN /build.sh && rm /build.sh
