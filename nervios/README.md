# Nervios Build

### Nervios issues/complications
Nagios requires an interactive install, therefore (unless you are better than me at expect) we create the image with a Dockerfile, install nagios using a script pulled from github, commit the container and ship to dockerhub.

### To USE the current container (no config neccessary)
docker pull jlmoldan/nervios<br>
docker run -d -p 1999:80 jlmoldan/nervious /usr/sbin/apache2ctl -D FOREGROUND<br>

### To rebuild container
#### Get Dockerfile from github

#### Build container
docker build -t nervios .<br>

#### Run container
docker run -it nervios /bin/bash<br>

#### Execute script inside the container
sh nagios2/naginstall.sh<br>
   --Answer questions (time zone, mail gateway (1), password (password))<br>
exit<br>

#### Commit the docker
docker commit %DOCKERID% nervios (where  %DOCKERID% is the container id just created) <br>

### Run the container
docker run -d -p 1999:80 nervios /usr/sbin/apache2ctl -D FOREGROUND<br>

### Log on 
logon via your %ip%:1999/nagios3 
  - user: nagiosadmin
  - password: password
  (this image configured with central time, no email, and password as the password)<br>

### Added to dockerhub
### tag the image 
  - docker tag f1c5a5543686 jlmoldan/nervios)<br>
### push to docker.io
  - docker push  jlmoldan/nerviosv
  

# To DO
### Add hosts
/etc/nagios3/conf.d/%hostnames.cfg% <br>
Change to class github in scripts not personal (in both dockerfile/and in code on the naginstall.sh<br>
