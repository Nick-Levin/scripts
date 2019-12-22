#!/bin/bash

export THEM=departments
export TOPIC=${THEM}Topic

export PARAMS="--logging.file=log/${TOPIC}-log.log --kafka.producer.topic=$TOPIC --kafka.botstrap.servers=$KAFKA_SERVERS"

java -jar AttunitySimulatorC123-1.0.0-SNAPSHOT.jar $PARAMS > ${THEM}-log.log 2>&1 &
