# Capture logs from ElasticSearch pods (EKS) or system logs (EC2)

## Step 1: Enable Logging in ElasticSearch

Modify `elasticsearch.yml`:

```yaml
path.logs: /var/log/elasticsearch
logger.level: info
```

✅ **ElasticSearch logs will now be written to `/var/log/elasticsearch`.**

---

## Step 2: Enable Log Collection in DataDog

📌 **For EKS:** Modify the DataDog Helm config (`values.yaml`):

```yaml
datadog:
  logs:
    enabled: true
    containerCollectAll: true
  logsConfig:
    containerCollectUsingFiles: true
```

Deploy DataDog:

```bash
helm upgrade datadog datadog/datadog -f values.yaml
```

✅ **Now, all ElasticSearch container logs will be collected.**

📌 **For EC2:** Modify DataDog log collection config (`/etc/datadog-agent/conf.d/elasticsearch.d/conf.yaml`):

```yaml
logs:
  - type: file
    path: /var/log/elasticsearch/*.log
    service: elasticsearch
    source: elasticsearch
```

Restart the agent:

```bash
sudo systemctl restart datadog-agent
```

✅ **Now, logs from `/var/log/elasticsearch` are sent to DataDog.**
