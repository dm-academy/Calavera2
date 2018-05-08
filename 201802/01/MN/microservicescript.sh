#!/bin/bash

curl localhost:8013
	if [ 0 -eq $? ]; then
                echo "Hi!' 'You have connected to another microservice!"
                exit 0
 	else
		echo "Failed to connect"
                exit 0
	fi

#ping -c 2 localhost
#	if [ 0 -eq $? ]; then
#		echo "ping successful"
#		exit 0	
#	else
#		echo "ping unsuccessful or timed out"
#		exit 0
#	fi

