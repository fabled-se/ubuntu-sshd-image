FROM ubuntu:22.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y openssh-server

RUN echo "PermitRootLogin yes" >> /etc/ssh/ssh_config

RUN mkdir /run/sshd
RUN mkdir /root/.ssh

ENV PUBLIC_SSH_KEY ""

EXPOSE 22

CMD [ "/bin/sh", "-c", "echo $PUBLIC_SSH_KEY > /root/.ssh/authorized_keys && chown root:root /root/.ssh/authorized_keys && chmod 644 /root/.ssh/authorized_keys && exec /usr/sbin/sshd -D" ]
