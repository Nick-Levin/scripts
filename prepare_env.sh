#!/bin/bash

# Download and extract kafka
wget http://apache.spd.co.il/kafka/2.3.0/kafka_2.12-2.3.0.tgz
mkdir $KAFKA_HOME
tar -xzvf kafka_2.12-2.3.0.tgz --strip-components 1 -C $KAFKA_HOME
rm -f kafka_2.12-2.3.0.tgz

# Move config files to configu folder
cp $SCRIPT_HOME/server1.properties $KAFKA_HOME/config/server1.properties
cp $SCRIPT_HOME/server2.properties $KAFKA_HOME/config/server2.properties

