# 🧪 **Exercise: Create a Custom Datadog Dashboard for a Windows App Host**

## 🎯 **Objective**

Create a dashboard that monitors a Windows application by visualizing:

* System health (CPU, memory, disk)
* Custom logs (from `myapp.log`)
* Application errors and login events

---

## 📐 **Scenario**

You have installed the Datadog Agent on a Windows machine and are collecting:

* System metrics (via the Agent)
* Custom app logs (`myapp.log`) with fields like `level`, `username`, and `ip_address`

Your goal is to build a dashboard to **monitor the health and behavior of the app host**.

---

## ✅ **Step-by-Step Instructions**

### 🔹 1. Go to Dashboards

* Navigate to **Dashboards > New Dashboard**
* Name it: `MyApp - Windows Host Overview`

---

### 🔹 2. Add System Metrics

#### A. **CPU Usage**

* **Type**: Timeseries
* **Query**: `avg:system.cpu.user{host:<your-hostname>}`
* **Title**: `CPU Usage (User Mode)`

#### B. **Memory Usage**

* **Type**: Timeseries
* **Query**: `avg:system.mem.used{host:<your-hostname>} by {host}`
* Add another line: `avg:system.mem.total{host:<your-hostname>}`
* **Title**: `Memory Usage`

#### C. **Disk Usage**

* **Type**: Query Value or Timeseries
* **Query**: `avg:system.disk.in_use{device:C:,host:<your-hostname>}`
* **Title**: `Disk Usage on C:`

---

### 🔹 3. Add Custom Log Widgets

#### A. **Log Stream**

* **Type**: Log Stream
* **Query**: `service:myapp`
* **Title**: `Recent MyApp Logs`
* Enable **facets**: `level`, `username`, `ip_address`

#### B. **Error Rate (Log-Based)**

* **Type**: Query Value or Timeseries
* **Query**:

  ```text
  count:logs("service:myapp level:ERROR").rollup("count").as_count()
  ```

* **Title**: `Error Log Count (MyApp)`

#### C. **Login Events Over Time**

* **Type**: Timeseries
* **Query**:

  ```text
  count:logs("service:myapp message:*logged in*").rollup("count").as_count()
  ```

* **Title**: `Login Events Over Time`

---

### 🔹 4. Add Status & Summary Widgets

#### A. **Host Status**

* **Type**: Host Map
* Filter by:

  ```
  host:<your-hostname>
  ```

* Color by CPU or Memory.

#### B. **Custom Notes**

* **Type**: Note
* Use this to describe the purpose of the dashboard or link to incident playbooks.

---

## 💡 **Bonus Challenge**

1. **Add a Monitor Summary widget** for any alerting monitors you have (like high CPU).
2. Add a **top list** showing the top 5 users with most logins (requires custom parsing of `username`).

---

## ✅ Outcome

You’ll end up with a live dashboard that visualizes:

* System metrics
* Log trends and events
* Real-time error tracking
* Custom application behavior insights
