FROM ubuntu:16.04

RUN apt-get update \
 && apt-get -y install git curl tree

 RUN groupadd git \
  && groupadd jenkins \
  && useradd -b "/home" -m -g git git \
  && useradd -b "/home" -m -g git hijo \
  && useradd -b "/home" -m -g jenkins jenkins \
  && usermod -a -G git jenkins


RUN mkdir -p /home/jenkins/.ssh \
 && chown jenkins:git /home/jenkins/.ssh \
 && chmod -R 0600 /home/jenkins/.ssh

WORKDIR /home/jenkins/.ssh

COPY id_rsa* ./

RUN cat id_rsa.pub >> authorized_keys \
 && chown -R jenkins:jenkins /home/jenkins \
 && chmod 600 id_rsa \
 && chmod 644 id_rsa.pub

WORKDIR /home/
