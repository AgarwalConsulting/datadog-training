# 🧪 **Exercise: Custom Webhook for Incident Handling**

---

## 🎯 Goal

When a Datadog alert triggers, it will send a **POST request** (webhook) to a custom endpoint. You’ll log, store, or process the incident alert yourself.

---

## ✅ Prerequisites

* Datadog account
* Datadog monitor in place (or follow below to create one)
* A simple HTTP server (Python, Node.js, or any language)
* Internet-accessible endpoint (via [ngrok](https://ngrok.com/) if running locally)

---

## 🔧 Step-by-Step

---

### 1️⃣ Set Up a Webhook Receiver (Locally)

#### Python Example (Flask):

```python
# webhook_receiver.py
from flask import Flask, request
import json

app = Flask(__name__)

@app.route("/incident", methods=["POST"])
def incident():
    data = request.json
    print("📬 Received Incident:")
    print(json.dumps(data, indent=2))
    return "OK", 200

if __name__ == "__main__":
    app.run(port=5000)
```

Run it:

```bash
python webhook_receiver.py
```

Expose it using `ngrok`:

```bash
ngrok http 5000
```

Copy the HTTPS forwarding URL (e.g. `https://abcd1234.ngrok.io`)

---

### 2️⃣ Create a Custom Webhook in Datadog

1. Go to **Integrations → Webhooks → New Webhook**

2. Name it:

   ```
   incident_webhook
   ```

3. URL:

   ```
   https://abcd1234.ngrok.io/incident
   ```

4. Method: `POST`

5. Payload:

```json
{
  "alert_title": "$ALERT_TITLE",
  "alert_type": "$ALERT_TYPE",
  "alert_id": "$ALERT_ID",
  "date": "$DATE",
  "event_type": "$EVENT_TYPE",
  "msg": "$TEXT_ONLY_MSG",
  "priority": "$PRIORITY",
  "host": "$HOST",
  "tags": "$TAGS"
}
```

6. Save the integration.

---

### 3️⃣ Attach Webhook to a Monitor

1. Go to any monitor (or create a new one)
2. In the **“Say what’s happening”** field, add:

   ```
   @webhook-incident_webhook
   ```

This tells Datadog to notify your custom webhook when this monitor alerts.

---

### 4️⃣ Trigger the Alert

You can simulate a threshold-based monitor (e.g., CPU > 1%) and use a tool to spike CPU or wait for natural trigger.

Once the alert fires, your webhook server should receive a POST request!

---

## 📝 Sample Output

```json
{
  "alert_title": "High CPU Usage on Host",
  "alert_type": "error",
  "alert_id": "12345678",
  "date": "2025-05-13 13:45:00",
  "event_type": "trigger",
  "msg": "CPU usage exceeded threshold on host:host-01",
  "priority": "normal",
  "host": "host-01",
  "tags": "env:prod,service:web"
}
```

---

## 🧠 Bonus Ideas

* Store the alert to a file or database (for custom incident dashboards)
* Trigger a script (e.g., restart service or scale infra)
* Integrate with ticketing (Jira/GitHub Issues via API)
* Send to Slack, Discord, or Telegram (via a relay)

---

## ✅ Summary

| Step                 | Tool / Action                          |
| -------------------- | -------------------------------------- |
| Setup Receiver       | Flask or Node.js server                |
| Expose Public URL    | `ngrok http 5000`                      |
| Create Webhook       | Datadog > Integrations > Webhooks      |
| Attach to Monitor    | Use `@webhook-<name>` in message field |
| Handle Incident Data | Log, alert, or auto-remediate          |
