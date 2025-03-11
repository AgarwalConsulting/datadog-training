#!/usr/bin/env bash

# From: https://docs.datadoghq.com/opentelemetry/guide/otel_demo_to_datadog/?tab=kubernetes

set -e

# git clone https://github.com/open-telemetry/opentelemetry-demo.git || echo "Already cloned..."

echo "Creating cluster..."

./scripts/windows/kind-cluster-create.sh

echo "Configuring agent..."

./scripts/windows/k8s-install-agent-operator.sh

helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts

helm install my-otel-demo open-telemetry/opentelemetry-demo --values ./examples/k8s/opentelemetry-values.yaml

# kubectl port-forward svc/my-otel-demo-frontendproxy 8082:8080
