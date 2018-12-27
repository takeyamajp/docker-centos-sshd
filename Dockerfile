FROM centos
MAINTAINER "Hiroki Takeyama"

# timezone
RUN rm -f /etc/localtime; \
    ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime;

# keymap
RUN sed -i "s/KEYMAP=\(.*\)/KEYMAP=jp106/g" /etc/vconsole.conf;

# sshd
RUN yum -y install openssh-server; yum clean all; \
    sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config; \
    ssh-keygen -q -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key -N '' && \
    ssh-keygen -q -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N '' && \
    ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key  -N ''; \
    echo 'root:root' | chpasswd;

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
