#!/bin/bash

docker build . -t cerebro

docker run -it cerebro

# docker run --rm -it --net cala01 --ip 203.0.113.2 cerebro
