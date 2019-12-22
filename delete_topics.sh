#!/bin/bash

cd $KAFKA_HOME

./bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic 'departmentsTopic'
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic 'employeesTopic'
