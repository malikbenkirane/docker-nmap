FROM alpine
MAINTAINER Malik Benkirane freemalikbenkirane@gmail.com

RUN apk add nmap && rm -f /var/cache/apk/*

RUN mkdir /work
VOLUME ["/work"]
WORKDIR /work

ENTRYPOINT ["nmap"]

