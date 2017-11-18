#!/bin/bash

docker build -t cara .

docker run -d --net cala01 --ip 203.0.113.25 -p 2525:8080 cara



