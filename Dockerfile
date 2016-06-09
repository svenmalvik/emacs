FROM centos:7

MAINTAINER Sven Malvik <sven@malvik.de>

RUN yum update -y && yum install -y emacs
