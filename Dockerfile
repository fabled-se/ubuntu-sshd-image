FROM ubuntu:22.04

# Update the system, install OpenSSH Server
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y openssh-server

RUN echo "PermitRootLogin yes" >> /etc/ssh/ssh_config

RUN mkdir /run/sshd
RUN mkdir /root/.ssh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
