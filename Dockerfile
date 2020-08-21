FROM ubuntu:latest
MAINTAINER River riou

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8

RUN ln -snf /usr/share/zoneinfo/Asia/Taipei /etc/localtime && echo Asia/Taipei > /etc/timezone

RUN apt-get update
RUN apt-get install -y curl wget vim nano lsof net-tools dialog software-properties-common less unzip --no-install-recommends
RUN echo "set pastetoggle=<F11> " >> ~/.vimrc

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80
