# Basic install of esniper 
#
# Currently installs esniper 2-35-0
# Version 0.1 09-04-2019

# Raspberry 3 Build
FROM arm32v7/alpine:latest
MAINTAINER docker@chabs.name

RUN yum update -y && \
    yum install -y gcc libcurl-devel gcc-c++ make && \
    yum install -y httpd-devel php-devel && \
    curl https://svwh.dl.sourceforge.net/project/esniper/esniper/2.35.0/esniper-2-35-0.tgz -o /tmp/esniper.tgz && \
    cd /tmp && tar zxf /tmp/esniper.tgz && cd /tmp/esniper-2-35-0; ./configure; make; make install && \
    mkdir -p /esniper/logs

ADD .esniper / 
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT "./entrypoint.sh"
