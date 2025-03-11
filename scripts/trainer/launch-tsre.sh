#!/usr/bin/env bash

set -e

git clone https://github.com/AgarwalConsulting/tsre-microservices.git || echo "Already cloned..."

cd tsre-microservices

./kind-start.sh
