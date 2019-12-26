FROM centos:centos7
MAINTAINER "Hiroki Takeyama"

# sshd
RUN yum -y install openssh-server; \
    sed -ri 's/\(UsePAM yes\)/#\1/g' /etc/ssh/sshd_config; \
    ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N '' && \
    ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' && \
    ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key  -N ''; \
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
