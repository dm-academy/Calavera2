#!/bin/bash

#docker build --no-cache -t manos .

docker build -t manos .

# docker run --rm -p 8888:8080 manos

docker run  -td --net cala01 --ip 203.0.113.1 manos
