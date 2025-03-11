# Troubleshooting Cluster Issues

## ✅ Checking Kubernetes Events for Issues

View recent Kubernetes events for **failed pods, OOMKilled errors, etc.**

```sh
kubectl get events --sort-by=.metadata.creationTimestamp
```

## ✅ Debugging a Failing Pod

Check logs for errors:

```sh
kubectl logs <pod-name>
```

📌 **Look for:** `OOMKilled`, `CrashLoopBackOff`, `ImagePullBackOff`

## ✅ Monitoring API Server Latency

📌 If API calls are slow, monitor:

```sh
kubectl get --raw /metrics | grep apiserver_request_duration_seconds
```

📌 **DataDog Metric to Monitor:** `kubernetes.apiserver.request_latencies`
