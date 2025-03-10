#!/usr/bin/env bash

git clone https://github.com/AgarwalConsulting/spring-petclinic.git || echo 'Already pulled!'
cd spring-petclinic
kubectl apply -f ./k8s/
