# centos-sshd
[![Docker Stars](https://img.shields.io/docker/stars/takeyamajp/centos-sshd.svg)](https://hub.docker.com/r/takeyamajp/centos-sshd/)
[![Docker Pulls](https://img.shields.io/docker/pulls/takeyamajp/centos-sshd.svg)](https://hub.docker.com/r/takeyamajp/centos-sshd/)
[![license](https://img.shields.io/github/license/takeyamajp/docker-centos-sshd.svg)](https://github.com/takeyamajp/docker-centos-sshd/blob/master/LICENSE)

    FROM centos:centos8  
    MAINTAINER "Hiroki Takeyama"
    
    ENV TIMEZONE Asia/Tokyo
    
    ENV ROOT_PASSWORD root
    
    EXPOSE 22
