#!/bin/bash
umask 022

nohup java -jar zipkin-service/target/zipkin-service.jar > zipkin-service-main.log 2>&1 &

nohup java -jar discovery-service/target/discovery-service.jar > discovery-service-main.log 2>&1 &

nohup java -jar gateway-service/target/gateway-service.jar > gateway-service-main.log 2>&1 &

nohup java -jar account-service/target/account-service.jar > account-service-main.log 2>&1 &

nohup java -jar customer-service/target/customer-service.jar > customer-service-main.log 2>&1 &

exit 0