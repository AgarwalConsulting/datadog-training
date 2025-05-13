# **Enable **Distributed Tracing** in the `DataDog/tsre-microservices` application**

It is designed to support tracing via the **Datadog Agent with APM**.

---

## 🎯 **Goal**

Enable **Datadog APM distributed tracing** across all services in the `tsre-microservices` stack, so you can trace end-to-end requests (e.g., from frontend → checkout → payment).

---

## 🧱 **Requirements**

* Datadog Agent installed on host with APM enabled
* Docker & Docker Compose (you’re running `tsre-microservices`)
* Access to Datadog UI (APM tab)

---

## ✅ **Step-by-Step Instructions**

---

### 1️⃣ Enable APM in Datadog Agent

Edit this file on the **host** (not inside a container):

```bash
sudo nano /etc/datadog-agent/datadog.yaml
```

Make sure these lines are set:

```yaml
apm_config:
  enabled: true

logs_enabled: true
```

Then restart the agent:

```bash
sudo systemctl restart datadog-agent
```

---

### 2️⃣ Expose APM Port to Containers

Edit `/etc/datadog-agent/datadog.yaml` and confirm:

```yaml
bind_host: 0.0.0.0
```

Edit the Docker Compose (in `tsre-microservices/docker-compose.yml`), and add the APM port to the `datadog` container:

```yaml
  datadog:
    ports:
      - "8126:8126"  # APM intake port
```

> ⚠️ Port `8126` is the default APM intake port.

---

### 3️⃣ Confirm Services Send Traces

Most services in `tsre-microservices` are **instrumented with OpenTelemetry**, which forwards traces to Datadog using the APM endpoint.

Make sure the services are sending spans to the right host and port. In the Docker Compose file, you'll see environment variables like:

```yaml
    environment:
      - DD_TRACE_AGENT_HOST=datadog
      - DD_TRACE_AGENT_PORT=8126
```

These tell each containerized app where to send traces.

If you see something like:

```yaml
      - OTEL_EXPORTER_OTLP_ENDPOINT=http://datadog:4318
```

That means it’s using the OpenTelemetry Collector API. Datadog Agent v7+ supports both.

---

### 4️⃣ Restart the App

If you've made changes to environment variables or port bindings:

```bash
docker compose down
docker compose up -d
```

---

### 5️⃣ Check Datadog APM

Go to your Datadog UI:

* Navigate to **APM > Services**
* You should see services like `frontend`, `cart`, `checkout`, `payment`, etc.
* Click on a trace to see **span trees** showing cross-service requests.

---

## 🛠️ Optional Enhancements

* Add service names explicitly in your environment:

  ```yaml
  - DD_SERVICE=checkout
  - DD_ENV=dev
  ```
* Set up **Trace Injection for Logs**:

  ```yaml
  - DD_LOGS_INJECTION=true
  ```
* Use **OpenTelemetry Collector** if you want full customization over span formats

---

## 📊 Example Trace Flow

Typical trace (frontend → checkout → payment):

```
└─ frontend (GET /checkout)
   └─ checkout (POST /order)
      └─ payment (POST /charge)
```

---

## ✅ Summary

| Task                             | Status |
| -------------------------------- | ------ |
| APM enabled in Agent             | ✅      |
| Agent port `8126` exposed        | ✅      |
| Env vars for tracing in services | ✅      |
| App restarted                    | ✅      |
| Traces visible in Datadog APM    | ✅      |
