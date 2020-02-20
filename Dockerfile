FROM debian:buster
MAINTAINER yohan <783b8c87@scimetis.net>
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Paris
RUN apt-get update && apt-get -y install duplicity python-swiftclient curl docker.io
ENTRYPOINT ["/root/entrypoint.sh"]
