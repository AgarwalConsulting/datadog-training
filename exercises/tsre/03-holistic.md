# Using **Datadog APM traces**

Using **Datadog APM traces** from `tsre-microservices` to:

1. ✅ Set up **trace-based alerts** (e.g., slow services)
2. ✅ Create a **Service Map** for system architecture visibility
3. ✅ Extract **business metrics from traces** (e.g., number of checkouts)

---

## 1️⃣ **Create Trace-Based Alerts (APM Monitors)**

These alerts are powered by latency, error rate, or throughput of spans collected via tracing.

### 🔹 Alert: Slow Checkout Endpoint

#### Goal:

Notify when **95th percentile latency** for `POST /checkout` exceeds 2 seconds.

#### Monitor Setup:

* Go to **Monitors → New Monitor → APM**
* Select **Trace Metric Monitor**
* Choose:

  * **Service**: `checkout`
  * **Operation**: `http.request`
  * **Resource**: `POST /checkout`
* **Alert condition**:

  ```
  p95(latency) > 2000ms for last 5 minutes
  ```

#### Notification Message:

```
🚨 High latency detected in Checkout: p95 = {{value}}ms
Trace this in Datadog: {{link}}
```

---

### 🔹 Alert: Payment Service Errors

#### Goal:

Alert on spike in internal server errors from the `payment` service.

#### Setup:

* Type: **Trace Analytics Monitor**
* Query:

  ```
  service:payment status:error
  ```
* Condition:

  > 5 error traces in 5 minutes

---

## 2️⃣ **Generate a Service Map**

Service Maps help visualize interdependencies automatically from APM traces.

### 🔧 How to Use:

* Navigate to **APM → Service Map**
* Set the scope to:

  ```
  env:dev app:tsre
  ```
* You’ll see:

  * Nodes: each microservice
  * Edges: traced requests between services
  * Color: latency or error rate heatmap

You can click each service to:

* View latency
* See dependent services
* Drill down to top endpoints

---

## 3️⃣ **Extract Business Metrics from Traces**

Want to track **business KPIs** like:

* How many successful orders?
* What's the checkout failure rate?
* What’s the average payment latency?

### Use **Trace Analytics**:

#### 🔍 Example: Successful Checkout Count

If the `checkout` service emits a span with:

```json
"resource": "POST /checkout",
"status": "ok"
```

Then go to:

* **APM → Trace Search**
* Filter: `service:checkout resource:"POST /checkout" status:ok`
* Click "Create Measure" → Save as a metric

Name it: `custom.tsre.checkout.success.count`

Now you can:

* Graph this on dashboards
* Alert if it drops below normal

#### 📉 Checkout Failure Rate

Create another custom metric:

```text
custom.tsre.checkout.failure.count
```

Then derive:

```text
failure_rate = failure.count / (success.count + failure.count)
```

---

## 🧠 Bonus: Tag Traces with Business Metadata

If services tag spans with data like `user_id`, `order_id`, or `payment_method`, you can:

* Facet or filter by those tags in Trace Search
* Slice dashboards and alerts by business context

Example:

```python
# In a Python service with ddtrace
span.set_tag("order_id", "A123")
span.set_tag("payment_method", "credit_card")
```

---

## ✅ Summary

| Task                              | Action                      |
| --------------------------------- | --------------------------- |
| Trace-based alert (slow checkout) | ✅ Setup monitor on p95      |
| Error alert on `payment`          | ✅ Trace Analytics monitor   |
| Live Service Map                  | ✅ APM → Service Map         |
| Business metrics via traces       | ✅ Trace Search + Measures   |
| Add metadata to spans             | 🧠 Optional instrumentation |

---
