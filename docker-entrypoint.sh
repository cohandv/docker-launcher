#!/bin/bash
#try to delete silently
set +e
docker rmi $(docker images -a -q)
set -e
docker $@
