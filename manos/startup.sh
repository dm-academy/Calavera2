#!/bin/bash

docker build  -t manos .

docker run -it --rm -p 8888:8080 manos


