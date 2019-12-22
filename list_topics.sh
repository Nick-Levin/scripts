#!/bin/bash

cd $KAFKA_HOME

./bin/kafka-topics.sh --list --bootstrap-server localhost:9092
./bin/kafka-topics.sh --describe --zookeeper localhost:2181 --topic departmentsTopic
./bin/kafka-topics.sh --describe --zookeeper localhost:2181 --topic employeesTopic
