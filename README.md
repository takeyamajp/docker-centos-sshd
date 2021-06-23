# centos-sshd
Star this repository if it is useful for you.  
[![Docker Stars](https://img.shields.io/docker/stars/takeyamajp/centos-sshd.svg)](https://hub.docker.com/r/takeyamajp/centos-sshd/)
[![Docker Pulls](https://img.shields.io/docker/pulls/takeyamajp/centos-sshd.svg)](https://hub.docker.com/r/takeyamajp/centos-sshd/)
[![license](https://img.shields.io/github/license/takeyamajp/docker-centos-sshd.svg)](https://github.com/takeyamajp/docker-centos-sshd/blob/master/LICENSE)

## Supported tags and respective Dockerfile links  
- [`latest`, `centos8`](https://github.com/takeyamajp/docker-centos-sshd/blob/master/centos8/Dockerfile)  
We'll finish support of CentOS8 in 31 December 2021. So we recommend migrating to [Rocky Linux](https://github.com/takeyamajp/docker-rocky-sshd).
- [`centos7`](https://github.com/takeyamajp/docker-centos-sshd/blob/master/centos7/Dockerfile)

## Image summary
    FROM centos:centos8  
    MAINTAINER "Hiroki Takeyama"
    
    ENV TIMEZONE Asia/Tokyo
    
    ENV ROOT_PASSWORD root
    
    EXPOSE 22

## How to use
This container can be accessed by SSH and SFTP clients.

    docker run -d --name centos-sshd \  
           -e TIMEZONE=Asia/Tokyo \  
           -e ROOT_PASSWORD=root \  
           -p 8022:22 \  
           takeyamajp/centos-sshd

You can add extra ports and volumes as follows if you want.

    docker run -d --name centos-sshd \  
           -e TIMEZONE=Asia/Tokyo \  
           -e ROOT_PASSWORD=root \  
           -p 8022:22 \  
           -p 8080:80 \  
           -v /my/own/datadir:/var/www/html \  
           takeyamajp/centos-sshd

SCP command can be used for transferring files.

    scp -P 8022 -r /my/own/httpd.conf root@localhost:/etc/httpd/conf/httpd.conf

## Time zone
You can use any time zone such as America/Chicago that can be used in CentOS.  

See below for zones.  
https://www.unicode.org/cldr/charts/latest/verify/zones/en.html

## Logging
This container logs the beginning, authentication, and termination of each connection.  
Use the following command to view the logs in real time.

    docker logs -f centos-sshd
