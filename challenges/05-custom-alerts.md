# 🧪 **Exercise: Create Custom Alerts for a Windows Host & App Logs**

## 🎯 **Objective**

Set up Datadog monitors that alert you when:

1. CPU usage is high on a Windows host
2. Custom logs show too many ERROR entries
3. Application login rate drops unexpectedly

---

## 🧱 **Prerequisites**

* Datadog Agent installed and sending metrics/logs
* Custom log collection configured (`service:myapp`)
* Log parsing includes fields like `level`, `message`

---

## ✅ **Step-by-Step Instructions**

---

### 🔹 **Alert 1: High CPU Usage on Windows Host**

#### 📘 Type: **Metric Monitor**

1. Go to **Monitors > New Monitor > Metric**
2. Choose Metric:

   ```
   avg(last_5m):avg:system.cpu.user{host:your-hostname} > 80
   ```
3. Set name:
   `High CPU on Windows Host`
4. Set thresholds:

   * Alert: `> 80%`
   * Warning: `> 70%`
5. Set evaluation window: **last 5 minutes**
6. Notify: Add email or Slack channel

📬 **Trigger**: You’ll get alerted if user CPU usage stays above 80% for 5 minutes.

---

### 🔹 **Alert 2: Too Many ERROR Logs from App**

#### 📘 Type: **Log Monitor**

1. Go to **Monitors > New Monitor > Logs**
2. Set query:

   ```
   service:myapp level:ERROR
   ```
3. Choose alert type: **Count Alert**
4. Condition:

   * Alert when count **over last 5 minutes > 5**
5. Name:
   `Too Many ERROR Logs in MyApp`
6. Message:

   ```
   {{value}} ERROR logs from MyApp in last 5 minutes on {{host.name}}. Investigate logs for issues.
   ```
7. Notify: Add your team or incident channel.

📬 **Trigger**: You’ll be notified if more than 5 error logs are seen in 5 minutes.

---

### 🔹 **Alert 3: Drop in Login Events (Custom Log Monitor)**

#### 📘 Type: **Log Monitor (Custom Pattern)**

1. Go to **Monitors > New Monitor > Logs**
2. Query:

   ```
   service:myapp message:*logged in*
   ```
3. Choose **Change Alert**
4. Set alert condition:

   * Trigger when login count **drops by 50%** compared to the last 1-hour baseline
5. Name:
   `Drop in Login Events - MyApp`
6. Message:

   ```
   Login volume dropped by {{change}}% in the last 5 minutes on {{host.name}}. Possible outage or user issue.
   ```

📬 **Trigger**: You’ll get notified if login activity drops sharply, possibly indicating issues or degraded service.

---

## 🏁 **Challenge Goals**

* ✅ Understand **threshold-based**, **log count**, and **anomaly/change** monitors
* ✅ Practice using tags (`host`, `service`) for targeting
* ✅ Practice notification configuration

---

### 🧠 **Bonus Challenge**

Try creating a **composite monitor**:

* Alert if **CPU is high** *and* **ERROR logs spike**
* Use **Monitor > Composite** to define logic like:

  ```
  monitor("High CPU on Windows Host") AND monitor("Too Many ERROR Logs in MyApp")
  ```
