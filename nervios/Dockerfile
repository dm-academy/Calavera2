######Dockerfile######
FROM ubuntu

RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/jlmoldan/nagios2.git
RUN chmod +x nagios2/*

EXPOSE 80
CMD /etc/init.d/apache2 start -D FOREGROUND && /etc/init.d/nagios3 start -D FOREGROUND
