#!/usr/bin/env bash

git clone https://github.com/AgarwalConsulting/spring-petclinic.git || echo 'Already pulled!'
cd spring-petclinic
./mvnw package
java -jar target/*.jar
