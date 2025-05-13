# 🧪 **Exercise: Monitor and Alert on `tsre-microservices`**

## 🎯 **Goal**

Deploy the `tsre-microservices` app (a simulated production eCommerce service mesh), and practice:

* Collecting custom logs
* Creating a business-relevant dashboard
* Setting up custom alerts on system health and app errors

---

## 🧱 **Prerequisites**

* Datadog Agent installed on host (with APM and logs enabled)
* Docker & Docker Compose installed
* Valid Datadog API key

---

## ⚙️ **Step-by-Step Instructions**

### 1️⃣ Clone and Deploy the App

```bash
git clone https://github.com/DataDog/tsre-microservices.git
cd tsre-microservices
docker compose up -d
```

> It starts \~10 microservices including frontend, cart, checkout, payment, shipping, product catalog, etc.

---

### 2️⃣ Configure the Datadog Agent

Edit `/etc/datadog-agent/datadog.yaml`:

```yaml
logs_enabled: true
apm_config:
  enabled: true
```

Restart the agent:

```bash
sudo systemctl restart datadog-agent
```

---

### 3️⃣ Enable Docker Log Collection

Create:

```bash
/etc/datadog-agent/conf.d/docker.d/conf.yaml
```

```yaml
logs:
  - type: docker
    service: tsre
    source: nodejs
    container_names:
      - frontend
      - cart
      - payment
      - checkout
    tags:
      - env:dev
      - app:tsre
```

Restart the agent again:

```bash
sudo systemctl restart datadog-agent
```

---

## ✅ **Exercise Tasks**

---

### 🔹 1. **Log Parsing**

Create a **log pipeline** in Datadog:

* Parse structured JSON logs from services
* Extract fields: `level`, `message`, `orderId`, `userId`, etc.
* Grok rule for custom formats if needed

---

### 🔹 2. **Create a Dashboard**

**Title**: `TSRE Microservices - Operational Overview`

**Include widgets:**

* Request rate per service: `http.requests.count`
* 5xx error rate per service: `http.status_code:5*`
* Latency (P95): `http.request.duration`
* Top error logs by service
* Active orders (from parsed logs)
* Top endpoints by latency

---

### 🔹 3. **Create Custom Alerts**

#### 🛑 **Error Spike in Checkout Service**

* **Type**: Log Monitor
* **Query**:

  ```
  service:checkout level:error
  ```
* Condition: >5 errors in 5 minutes
* Message:
  `🚨 Spike in checkout errors ({{value}} in last 5 min)`

---

#### 🐌 **Slow Payment Processing**

* **Type**: APM Monitor
* Query:

  ```
  p95:http.request.duration{service:payment} > 2000
  ```

---

#### 💸 **Order Drops Detected**

* **Type**: Log or APM Change Alert
* Detect drop in `orderPlaced` events by >50% from baseline

---

#### 🔥 **Composite Monitor (Business Outage)**

* Combines:

  * High 5xx in checkout
  * High latency in payment
  * Spike in abandoned carts
* Logic: `monitor("X") AND monitor("Y") AND monitor("Z")`

---

## 🧠 Optional Challenges

* Enable **distributed tracing** across services
* Use **Network Monitoring** to visualize service-to-service communication
* Apply **RUM (Real User Monitoring)** for frontend latency
* Add **SLOs** on error rate and latency
