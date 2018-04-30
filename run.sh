#!/usr/bin/env bash

LISTENPORT=10003
LOCALJENKINSDIR=/opt/jenkins

# Not sure what jenkins is doing with port 50000 here....

docker run -d -p ${LISTENPORT}:8080 -p 50000:50000 -v ${LOCALJENKINSDIR}:/var/jenkins_home --name tkf_jenkins teknofile/tkf_jenkins:latest
