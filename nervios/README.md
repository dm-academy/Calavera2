Nervios issues/complications
Nagios is an interactve install, unable to get expect to act properly.  Created a container that runs

TO USE:
docker pull jlmoldan/nervios
docker run -d -p 1999:80 jlmoldan/nervious /usr/sbin/apache2ctl -D FOREGROUND

Initial container build:
Create Dockerfile (see Dockerfile)

docker build -t nervios .
docker run -it nervios /bin/bash
   (have to run installer inside the container)
sh nagios2/naginstall.sh
   (((Will ask 2-4 questions - time zone, no email, and password...))
   
exit

docker commit %DOCKERID% nervios (where  %DOCKERID% is the container id just created)

docker run -d -p 1999:80 nervios /usr/sbin/apache2ctl -D FOREGROUND

logon via your ip:1999/nagios3 with password entered on prompts
  (this image configured with central time, no email, and password as the password)


tag the image (here docker tag f1c5a5543686 jlmoldan/nervios)
push to docker.io ::  docker push  jlmoldan/nervios
