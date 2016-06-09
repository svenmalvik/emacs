FROM centos:7

MAINTAINER Sven Malvik <sven@malvik.de>

RUN yum update -y && yum install -y epel-release 
RUN yum install -y wget emacs python-pip jq httpie
RUN wget -nv https://get.docker.com/builds/Linux/i386/docker-1.10.3 && mv docker-1.10.3 /usr/bin/docker && chmod +x /usr/bin/docker
RUN pip install --upgrade pip
RUN pip install docker-compose 
CMD emacs
