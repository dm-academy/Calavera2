#!/bin/bash
wget http://203.0.113.42:8081/artifactory/example-repo-local/hijo/target/CalaveraMain.jar
wget http://203.0.113.42:8081/artifactory/example-repo-local/hijo/target/web.xml

docker build -t cara .

docker run -d --net cala01 --ip 203.0.113.25 -p 2525:8080 cara



