#!/usr/bin/env bash

## message count
alias kafka-msg-count="/opt/kafka/bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list \$MASTER_ADDR:9092 --topic "

## create topic
alias kafka-create-topic="/opt/kafka/bin/kafka-topics.sh --create --zookeeper \$MASTER_ADDR:2181 --replication-factor 1 --partitions 3 --topic "

## delete topic
alias kafka-delete-topic="/opt/kafka/bin/kafka-topics.sh --delete --zookeeper \$MASTER_ADDR:2181 --topic "

## producer
alias kafka-produce="/opt/kafka/bin/kafka-console-producer.sh --broker-list \$MASTER_ADDR:9094 --topic "

## zookeeper - get broker ids
alias kafka-list-brokers="/opt/kafka/bin/zookeeper-shell.sh \$MASTER_ADDR:2181 <<< 'ls /brokers/ids'"

## describe topics
alias kafka-list-topics="/opt/kafka/bin/kafka-topics.sh --describe --zookeeper \$MASTER_ADDR:2181"