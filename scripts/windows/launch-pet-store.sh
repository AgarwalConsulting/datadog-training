#!/usr/bin/env bash

git clone https://github.com/AgarwalConsulting/spring-petclinic.git || echo 'Already pulled!'
cd spring-petclinic
./mvnw package -DskipTests

mkdir -p logs

java -jar target/*.jar > logs/app.log

# java -jar target/*.jar | tee logs/app.log

# ./scripts/windows/download-tracer.sh
# java -javaagent:../artifacts/dd-java-agent.jar \
#   -Ddd.service=petclinic-app \
#   -Ddd.env=prod \
#   -Ddd.version=1.0 \
#   -Ddd.logs.injection=true \
#   -Ddd.profiling.enabled=true \
#   -Ddd.trace.sample.rate=1.0 \
#   -Ddd.runtime_metrics.enabled=true \
#   -jar target/spring-petclinic-*.jar | tee logs/app.log
