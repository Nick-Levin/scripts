#!/bin/bash -x

cd $SCRIPT_HOME
rm -rf $MONGO_HOME/*

./start_kafka.sh
sleep 15s

./delete_topics.sh
./create_topics.sh
./mongod_start.sh

