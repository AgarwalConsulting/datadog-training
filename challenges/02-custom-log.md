# 🧪 **Exercise: Custom Log Collection & Parsing with Datadog Agent (Windows)**

## 🎯 **Goal**

Set up the Datadog Agent to:

1. Collect logs from a custom application.
2. Parse the log format using a custom parsing rule.
3. Visualize structured log attributes in Datadog Log Explorer.

---

## 📁 **Step 1: Prepare a Sample Log File**

Create a sample log file, check `examples/logs/README.md`:

Path: `C:\Logs\myapp.log`

Example content:

```
[2025-05-11 10:00:00] INFO  User 'om' logged in from IP 192.168.0.12
[2025-05-11 10:02:23] ERROR Failed to connect to database: timeout
[2025-05-11 10:04:17] WARN  Low disk space on drive C:
```

---

## ⚙️ **Step 2: Enable Log Collection in the Datadog Agent**

Edit the main Datadog Agent config file:

Path: `C:\ProgramData\Datadog\datadog.yaml`

Uncomment and set:

```yaml
logs_enabled: true
```

---

## 📘 **Step 3: Create a Custom Log Integration Config**

Create file:
`C:\ProgramData\Datadog\conf.d\myapp.d\conf.yaml`

```yaml
logs:
  - type: file
    path: C:\Logs\myapp.log
    service: myapp
    source: custom
    log_processing_rules:
      - type: multi_line
        name: new_log_start_with_timestamp
        pattern: '^\[\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\]'
```

> The `multi_line` rule ensures each entry starts with a timestamp, even if lines span multiple lines.

---

## 🧪 **Step 4: Add a Custom Parsing Rule**

Create a **log pipeline** in the Datadog web UI:

1. Go to **Logs > Configuration > Pipelines**.

2. Click **New Pipeline**, name it "MyApp Parser".

3. Add a **Grok Parser** processor:

   * Rule:

     ```
     \[%{timestamp:date("yyyy-MM-dd HH:mm:ss")}\] %{word:level} %{data:message}
     ```
   * Sample log:
     `[2025-05-11 10:00:00] INFO  User 'om' logged in from IP 192.168.0.12`

4. Click Save.

---

## 📊 **Step 5: View in Datadog Log Explorer**

* Navigate to **Logs > Explorer**.
* Filter by:

  ```
  service:myapp
  ```
* You should see structured logs with parsed fields:

  * `timestamp`
  * `level` (INFO/ERROR/WARN)
  * `message`

---

## ✅ **Bonus Challenge**

Modify the parsing rule to extract:

* `username`
* `ip_address`
* `error_message`

You can extend the Grok pattern:

```grok
\[%{timestamp:date("yyyy-MM-dd HH:mm:ss")}\] %{word:level} User '%{word:username}' logged in from IP %{ip:ip_address}
```
