docker build . -t nervios
docker run -d --net cala01 --ip 203.0.113.10 -p 1999:80 nervios /usr/sbin/apache2ctl -D FOREGROUND 
