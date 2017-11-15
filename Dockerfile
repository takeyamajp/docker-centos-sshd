FROM centos
MAINTAINER "Hiroki Takeyama"

# timezone
RUN rm -f /etc/localtime
RUN ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# keymap
RUN sed -i -e "s/KEYMAP=\(.*\)/KEYMAP=jp106/g"  /etc/vconsole.conf

# sshd
RUN yum -y install openssh-server; yum clean all
RUN echo 'root:root' | chpasswd

EXPOSE 22

CMD ["sshd", "-D"]
