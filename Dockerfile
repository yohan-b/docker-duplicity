FROM debian:bullseye
MAINTAINER yohan <783b8c87@scimetis.net>
ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://http.debian.net/debian bullseye-backports main" >> /etc/apt/sources.list
RUN apt-get update && apt-get -y install pip openssh-client iproute2 git
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN pip install ansible
RUN pip install "openstacksdk>=1.0.0"
RUN pip install docker
RUN pip install docker-compose
RUN apt-get -y install duplicity
