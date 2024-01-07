#!/bin/bash

##

set -e

set -x

##

reset

clear

##

docker-compose -f compose.yaml build 

docker-compose -f compose.yaml push
