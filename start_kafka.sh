#!/bin/bash

# Working directory
cd $KAFKA_HOME

# Start Zookeeper and wait for it to surly run
./bin/zookeeper-server-start.sh config/zookeeper.properties > /dev/null 2>&1 &
sleep 4s

# Start three Kafka brokers
./bin/kafka-server-start.sh config/server.properties > /dev/null 2>&1 &
./bin/kafka-server-start.sh config/server1.properties > /dev/null 2>&1 &
./bin/kafka-server-start.sh config/server2.properties > /dev/null 2>&1 &
