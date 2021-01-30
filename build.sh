#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. ${DIR}/env.sh

docker build \
	-t ${BASE}:$SHA \
	-t ${BASE}:$BRANCH \
	`[[ "$BRANCH" == "master" ]] && echo "-t ${BASE}:latest"` \
	 .
