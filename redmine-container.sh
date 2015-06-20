#!/bin/bash

docker run --name redmine -d \
	--link mysql-redmine:mysql -p 10083:80 \
	--env 'REDMINE_PORT=10083' \
	-v $(pwd)/redmine:/home/redmine/data \
	sameersbn/redmine:latest
	
