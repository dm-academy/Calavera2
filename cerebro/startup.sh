#!/bin/bash

docker build . -t cerebro

# docker run -it cerebro

docker run  -td --net cala01 --ip 203.0.113.41 cerebro
