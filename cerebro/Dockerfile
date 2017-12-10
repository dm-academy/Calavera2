FROM ubuntu:16.04

RUN apt-get update \
 && apt-get -y install git curl tree 

RUN apt-get update && apt-get install -y openssh-server apache2 supervisor
RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/run/sshd /var/log/supervisor

COPY files/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 

 RUN groupadd git \
  && groupadd jenkins \
  && useradd -b "/home" -m -g git git \
  && useradd -b "/home" -m -g git calavera \
  && useradd -b "/home" -m -g jenkins jenkins \
  && usermod -a -G git jenkins


RUN mkdir -p /home/jenkins/.ssh \
 && chown jenkins:git /home/jenkins/.ssh \
 && chmod -R 0750 /home/jenkins/.ssh

WORKDIR /home/jenkins/.ssh

COPY files/id_rsa* ./

RUN cat id_rsa.pub >> authorized_keys \
 && chown -R jenkins:jenkins /home/jenkins \
 && chmod 600 id_rsa \
 && chmod 644 id_rsa.pub


# creating home direcoty of calavera
RUN mkdir -p /home/calavera/.ssh \
 && chown calavera:git /home/calavera/.ssh \
 && chmod -R 0750 /home/calavera/.ssh

WORKDIR /home/calavera/.ssh

COPY files/id_rsa* ./

RUN cat id_rsa.pub >> authorized_keys \
 && chown -R calavera:git /home/calavera \
 && chmod 600 id_rsa \
 && chmod 644 id_rsa.pub



WORKDIR /home/

RUN mkdir -p hijo.git/hooks \
 && chmod -R 0775 hijo.git/

WORKDIR /home/hijo.git

RUN git init --bare --shared=group . \
 && git config receive.denynonfastforwards false

COPY files/post-receive hooks/


RUN chmod 755 hooks/post-receive \
 && chown -R git:git /home/hijo.git

# starting ssh server 
CMD ["/usr/bin/supervisord"]


