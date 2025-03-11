#!/usr/bin/env bash

curl -LO https://dtdg.co/latest-java-tracer

mkdir -p artifacts
mv latest-java-tracer artifacts/dd-java-agent.jar
