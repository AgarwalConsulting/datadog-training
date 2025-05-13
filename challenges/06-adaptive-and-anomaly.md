# 🧪 **Exercise: Anomaly Detection & Adaptive Alerting Using Host Metrics**

This uses native system metrics collected by the Datadog Agent (like CPU, memory, disk I/O, etc.) to set up anomaly-based and adaptive alerts.

---

### 🎯 **Goal**

Create:

1. ✅ Anomaly detection on **CPU usage**
2. ✅ Adaptive alert on **memory usage**
3. ✅ (Optional) Add anomaly overlays to a dashboard

---

## ✅ Prerequisites

* Datadog Agent installed on your system
* System is sending metrics to Datadog
* Metric data available in **Infrastructure > Metrics Explorer**

---

## 🔹 1. **Create Anomaly Monitor: CPU Usage**

### Metric:

```
system.cpu.user{host:<your-host>}
```

### Steps:

1. Go to **Monitors → New Monitor → Anomaly**

2. Choose the above metric

3. Scope it to your host:

   ```
   host:<your-host>
   ```

4. Use:

   * Algorithm: **Basic seasonal**
   * Sensitivity: **Strong**
   * Alert if CPU usage is **above the baseline**

5. Set alert condition:

   ```
   For 2 out of the last 5 minutes
   ```

6. Message:

   ```
   🚨 Anomaly detected in CPU usage on {{host.name}}. Current: {{value}}%, expected baseline: {{threshold}}%.
   ```

---

## 🔹 2. **Create Adaptive Alert: Memory Usage**

### Metric:

```
system.mem.pct_usable{host:<your-host>}
```

You want to alert when memory usable percentage **drops lower than normal**.

### Steps:

1. Go to **Monitors → New Monitor → Metric**

2. Use the metric above

3. Enable **Anomaly detection**

   * Algorithm: **Agile**
   * Direction: **Below**

4. Scope to your host

5. Trigger when:

   * Value is below baseline for 5 minutes

6. Message:

   ```
   ⚠️ Memory anomaly: Available memory dropped on {{host.name}}. Current: {{value}}, Expected: {{threshold}}.
   ```

---

## 📊 3. **Add Anomaly Overlay to Dashboard**

1. Go to **Dashboards → New Dashboard**
2. Add a **Timeseries widget**
3. Plot:

   ```
   system.cpu.user{host:<your-host>}
   ```
4. Under “Display Settings”, check **“Anomaly Overlay”**
5. This will shade expected baseline and highlight anomalies

---

## ✅ Summary

| Monitor Type      | Metric                  | Use Case                      |
| ----------------- | ----------------------- | ----------------------------- |
| Anomaly Detection | `system.cpu.user`       | Detect CPU spikes             |
| Adaptive Alerting | `system.mem.pct_usable` | Alert on unusual memory drops |
| Anomaly Overlay   | Dashboard visualization | Visual diagnostics            |

---

## 🧠 Bonus

* Add a **disk I/O anomaly** on `system.io.wkb_per_s`
* Try `system.load.1` for high-load anomaly on Linux
* Combine monitors using a **Composite Monitor**
