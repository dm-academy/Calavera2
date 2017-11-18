docker build . -t espina
#docker run -it -p 8889:8081 espina
docker run  -td --net cala01 -p 8889:8081  --ip 203.0.113.42 espina


