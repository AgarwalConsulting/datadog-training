# In Docker

```bash
docker run -d --name dd-agent \
-e DD_API_KEY=<api-key-shared-separately> \
-e DD_SITE="datadoghq.com" \
-v /var/run/docker.sock:/var/run/docker.sock:ro \
-v /proc/:/host/proc/:ro \
-v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro \
-v /var/lib/docker/containers:/var/lib/docker/containers:ro \
gcr.io/datadoghq/agent:7
```
