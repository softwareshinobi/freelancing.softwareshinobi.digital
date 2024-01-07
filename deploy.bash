#!/bin/bash

##

set -e

set -x

##

reset

clear

##

docker-compose -f compose.yaml pull

docker-compose -f compose.yaml down --remove-orphans

docker-compose -f compose.yaml up -d
