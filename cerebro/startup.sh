#!/bin/bash

docker build . -t cerebro

docker run -it cerebro
