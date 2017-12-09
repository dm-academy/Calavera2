# Nervios Build
run startup.sh from directory containing Dockerfile

#### Get Dockerfile from github  (https://github.com/dm-academy/Calavera2)
##### NOTE:  If you want to change hosts to modify - add the .cfg files to the repo and it will sync them down during build
git clone https://github.com/dm-academy/Calavera2.git <br>
cd Calavera2/nervios/ <br>

#### Build container
docker build -t nervios .<br>

#### Run container
(for class on class net)<br>
docker run -d --net cala01 --ip 203.0.113.10 -p 1999:80 nervios /usr/sbin/apache2ctl -D FOREGROUND <br>
In general/on your own <br>
docker run -d -p 1999:80 nervios /usr/sbin/apache2ctl -D FOREGROUND <br>



### Log on 
logon via your %ip%:1999/nagios3 
  - user: nagiosadmin
  - password: password (password set in the install script if you need to change it)<br>
  (this image configured with central time, no email, and password as the password)<br>



