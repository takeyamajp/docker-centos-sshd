# centos-sshd
[![Docker Stars](https://img.shields.io/docker/stars/takeyamajp/centos-sshd.svg)](https://hub.docker.com/r/takeyamajp/centos-sshd/)
[![Docker Pulls](https://img.shields.io/docker/pulls/takeyamajp/centos-sshd.svg)](https://hub.docker.com/r/takeyamajp/centos-sshd/)
[![](https://img.shields.io/badge/GitHub-Dockerfile-orange.svg)](https://github.com/takeyamajp/docker-centos-sshd/blob/master/Dockerfile)
[![license](https://img.shields.io/github/license/takeyamajp/docker-centos-sshd.svg)](https://github.com/takeyamajp/docker-centos-sshd/blob/master/LICENSE)

    FROM centos  
    MAINTAINER "Hiroki Takeyama"
    
    ENV TIMEZONE Asia/Tokyo
    
    EXPOSE 22
