#
# Redis - Packaged by DotDeb (http://www.dotdeb.org)
#

FROM debian:wheezy

MAINTAINER Michele Pangrazzi xmikex83@gmail.com

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y wget

RUN echo "deb http://packages.dotdeb.org wheezy all" >> /etc/apt/sources.list
RUN echo "deb-src http://packages.dotdeb.org wheezy all" >> /etc/apt/sources.list

RUN wget http://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg

RUN apt-get update
RUN apt-get install -y redis-server

RUN mkdir -p /redis-data

EXPOSE 6379

CMD ["redis-server"]
