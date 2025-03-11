# Creating a DataDog Dashboard for Spring PetClinic

## Step 1: Navigate to Dashboards

1️⃣ **Go to** `DataDog UI → Dashboards → New Dashboard`

2️⃣ Name it **"Spring PetClinic Monitoring"**

3️⃣ Click **"Add Widgets"**

---

## Step 2: Add Key Metrics to Monitor

| **Metric Type**     | **DataDog Query** | **Widget Type** |
|---------------------|-----------------|----------------|
| 🏎 **CPU Usage**      | `avg:system.cpu.user{service:petclinic}` | Line Chart |
| 🧠 **Memory Usage**   | `avg:system.mem.used{service:petclinic}` | Line Chart |
| 🐢 **Slow DB Queries**| `avg:db.query.duration{service:petclinic}` | Heatmap |
| 🌐 **API Latency**    | `avg:trace.http.request{service:petclinic}` | Timeseries |
| 🔥 **JVM Heap Usage** | `avg:jvm.memory.heap_used{service:petclinic}` | Gauge |
| 📦 **Container Health** | `avg:kubernetes.pod.ready{service:petclinic}` | Status |

✅ **Now, this dashboard will show real-time PetClinic performance!**

---

## Step 3: Add APM Traces & Logs Panels

1️⃣ **Add a Trace Panel**:

- Query: `service:petclinic AND @duration:>1000ms`
- Widget: **List View**
- Purpose: Show slow API requests

2️⃣ **Add a Log Panel**:

- Query: `service:petclinic AND @level:error`
- Widget: **Table View**
- Purpose: Show all error logs

🚀 **Now, you can analyze API traces and errors visually!**
