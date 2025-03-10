# In Kubernetes

## As operator

```bash
helm repo add datadog https://helm.datadoghq.com
helm install datadog-operator datadog/datadog-operator
kubectl create secret generic datadog-secret --from-literal api-key=<api-key-shared-separately>
```

```yaml (datadog-agent.yaml)
apiVersion: "datadoghq.com/v2alpha1"
kind: "DatadogAgent"
metadata:
  name: "datadog"
spec:
  global:
    clusterName: "{edit}"
    registry: "public.ecr.aws/datadog"
    tags:
      - "custom"
      - "tags"
    credentials:
      apiSecret:
        secretName: "datadog-secret"
        keyName: "api-key"
  features:
    logCollection:
      enabled: true
      containerCollectAll: true
    cws:
      enabled: true
    cspm:
      enabled: true
    sbom:
      containerImage:
        enabled: true
      host:
        enabled: true
    usm:
      enabled: true
    npm:
      enabled: true
```

```bash
kubectl apply -f datadog-agent.yaml
```

## As Helm Chart

```bash
helm repo add datadog https://helm.datadoghq.com
helm repo update
kubectl create secret generic datadog-secret --from-literal api-key=<api-key-shared-separately>
```

```yaml (datadog-values.yaml)
registry: "public.ecr.aws/datadog"
datadog:
  apiKeyExistingSecret: "datadog-secret"
  tags:
    - "custom"
    - "tags"
  logs:
    enabled: true
    containerCollectAll: true
  securityAgent:
    runtime:
      enabled: true
    compliance:
      enabled: true
  sbom:
    containerImage:
      enabled: true
    host:
      enabled: true
  serviceMonitoring:
    enabled: true
  networkMonitoring:
    enabled: true
```

```bash
helm install datadog-agent -f datadog-values.yaml datadog/datadog
```
