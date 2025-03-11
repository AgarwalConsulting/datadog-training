#!/usr/bin/env bash

helm repo add datadog https://helm.datadoghq.com
helm install datadog-operator datadog/datadog-operator
kubectl create secret generic datadog-secret --from-literal api-key=$DD_API_KEY --from-literal app-key=$DD_APP_KEY
kubectl create secret generic dd-secrets --from-literal="DD_SITE_PARAMETER=$DD_SITE_PARAMETER" --from-literal="DD_API_KEY=$DD_API_KEY"

kubectl apply -f ./examples/k8s/agent-operator.yaml
