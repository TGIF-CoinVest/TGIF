#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-coinvestpay/coinvestd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/coinvestd docker/bin/
cp $BUILD_DIR/src/coinvest-cli docker/bin/
cp $BUILD_DIR/src/coinvest-tx docker/bin/
strip docker/bin/coinvestd
strip docker/bin/coinvest-cli
strip docker/bin/coinvest-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
