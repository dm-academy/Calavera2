FROM jenkins/jenkins:lts
MAINTAINER Charles T. Betz

USER jenkins

COPY conf/plugins.txt /var/jenkins_home/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /var/jenkins_home/plugins.txt
