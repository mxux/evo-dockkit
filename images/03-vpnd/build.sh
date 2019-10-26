#!/usr/bin/env bash

set -e

# https://stackoverflow.com/a/16349776/726368
pushd "${0%/*}" > /dev/null

source ../vars.sh

TAG=${1:-${DEVKIT_REF_VPND}}

exec_docker_build "$TAG"

popd > /dev/null
