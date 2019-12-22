#!/bin/bash

# VARS
DATA=$MONGO_HOME/db_main
LOGS=$MONGO_HOME/logs

# prepare the ground
mkdir $MONGO_HOME
mkdir $DATA
mkdir $LOGS

# Start mongod single node server
mongod --fork --dbpath $DATA --logpath $LOGS/mongod.log --port 27017
