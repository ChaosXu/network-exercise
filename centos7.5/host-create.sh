#!/bin/bash
host=$1
image=$2

if [ "${host}" = "" ]; then
    echo "invalid host"
    echo "valid cmd: ./host-start.sh host image"
    exit 2
fi
if [ "${image}" = "" ]; then
    echo "invalid image"
    echo "valid cmd: ./host-start.sh host image"
    exit 2
fi

docker run --privileged=true --net none --name ${host} -d ${image}