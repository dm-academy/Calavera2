#!/bin/bash

curl localhost:8013
	if [ 0 -eq $? ]; then
                echo "SUCCESS! We have connected to your microservice :)!"
 	else
		echo "We failed to connect to your microservice :("
	fi

ping -c 2 -p 8013 localhost 
	if [ 0 -eq $? ]; then
		echo "Your microservice is pingable!!"
	else
		echo "Ups, we pinged your micoservice but it was unsuccessful or timed out :("
	fi



