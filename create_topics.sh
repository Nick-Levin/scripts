#!/bin/bash

cd $KAFKA_HOME

./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 3 --partitions 12 --topic departmentsTopic
./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 3 --partitions 12 --topic employeesTopic

