#!/bin/bash -x

TAG="development.test.random"
VALUE="`expr $RANDOM % 100`"
UTIME="`date +%s`"
SERVER_IP="localhost"

echo "${TAG} ${VALUE} ${UTIME}" | nc ${SERVER_IP} 2003

echo "${TAG}.incoming ${VALUE} ${UTIME}" | nc ${SERVER_IP} 2003

sleep 1

VALUE="`expr $RANDOM % 100`"
UTIME="`date +%s`"

echo "${TAG}.outgoing ${VALUE} ${UTIME}" | nc ${SERVER_IP} 2003

