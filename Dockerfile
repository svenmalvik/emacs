FROM centos:7

MAINTAINER Sven Malvik <sven@malvik.de>

COPY docker-main.repo /etc/yum.repos.d/
COPY init.el /home/.emacs.d/

RUN yum update -y && yum install -y epel-release 
RUN yum install -y emacs python-pip jq httpie docker-engine-1.11.2
RUN pip install --upgrade pip
RUN pip install docker-compose 

CMD emacs -q -l /home/.emacs.d/init.el
