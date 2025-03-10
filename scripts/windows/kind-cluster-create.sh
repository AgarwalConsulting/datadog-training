#!/usr/bin/env bash

kind create cluster --config ./devops/kind-config.yml

# kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/deploy-ingress-nginx.yaml
