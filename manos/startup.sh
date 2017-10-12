#!/bin/bash

#docker build --no-cache -t manos .

docker build -t manos .

docker run --rm -p 8888:8080 manos
