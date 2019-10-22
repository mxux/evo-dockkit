#!/usr/bin/env bash

DEVKIT_HOME=../../devkit

set -e

docker-compose down

${DEVKIT_HOME}/build.sh

docker-compose up -d

ansible-playbook ansible-playbook.yml

docker-compose down