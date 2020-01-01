# centos-sshd
[![Docker Stars](https://img.shields.io/docker/stars/takeyamajp/centos-sshd.svg)](https://hub.docker.com/r/takeyamajp/centos-sshd/)
[![Docker Pulls](https://img.shields.io/docker/pulls/takeyamajp/centos-sshd.svg)](https://hub.docker.com/r/takeyamajp/centos-sshd/)
[![license](https://img.shields.io/github/license/takeyamajp/docker-centos-sshd.svg)](https://github.com/takeyamajp/docker-centos-sshd/blob/master/LICENSE)

### Supported tags and respective Dockerfile links  
- [`latest`, `centos8`](https://github.com/takeyamajp/docker-centos-sshd/blob/master/centos8/Dockerfile)
- [`centos7`](https://github.com/takeyamajp/docker-centos-sshd/blob/master/centos7/Dockerfile)

### Image summary
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
           -p 8023:22 \  
           takeyamajp/centos-sshd

## Timezone
You can use any time zone that can be used in CentOS such as America/Chicago.  

See below for zones.  
https://www.unicode.org/cldr/charts/latest/verify/zones/en.html

## Logging
This container logs the beginning, authentication, and termination of each connection.

Use the following command to view the logs in real time.

    docker logs -f postfix
