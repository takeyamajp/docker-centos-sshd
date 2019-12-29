FROM centos:centos7
MAINTAINER "Hiroki Takeyama"

# sshd
RUN yum -y install openssh-server; \
    yum clean all;

# entrypoint
RUN { \
    echo '#!/bin/bash -eu'; \
    echo 'rm -f /etc/localtime'; \
    echo 'ln -fs /usr/share/zoneinfo/${TIMEZONE} /etc/localtime'; \
    echo 'echo "root:${ROOT_PASSWORD}" | chpasswd'; \
    echo 'exec "$@"'; \
    } > /usr/local/bin/entry_point.sh; \
    chmod +x /usr/local/bin/entry_point.sh;
ENTRYPOINT ["entry_point.sh"]

ENV TIMEZONE Asia/Tokyo

ENV ROOT_PASSWORD root

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
