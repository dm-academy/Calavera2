#!/bin/bash

#docker build --no-cache -t brazos .

docker build -t brazos .

# docker run --rm -p 8888:8080 brazos

docker run  -td --net cala01 --ip 203.0.113.31 brazos
