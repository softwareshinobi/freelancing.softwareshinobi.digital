#!/bin/bash

##

reset

clear

##

docker-compose -f compose.yaml down --remove-orphans

docker-compose -f compose.yaml up
