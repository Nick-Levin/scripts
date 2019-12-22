#!/bin/bash

# KILL MONGOD
ps -ef | grep -v grep | grep mongod | awk '{print $2}' | xargs kill -9

# KILL KAFKA AND ZOOKEEPER
ps -ef | grep -v grep | grep kafka | awk '{print $2}' | xargs kill -9

# CLEAN GRABAGE FROM DB
rm -rf $MONGO_HOME/db_main/*
