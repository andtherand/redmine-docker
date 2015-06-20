#!/bin/bash

docker run --name mysql-redmine -d \
	--env 'DB_NAME=redmine_production' \
	--env 'DB_USER=redmine' \
	--env 'DB_PASS=password' \
	-v ~/docker/redmine/mysql:/var/lib/mysql \
	sameersbn/mysql:latest
	
