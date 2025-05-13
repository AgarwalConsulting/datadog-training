# 🧪 **Exercise: Go-based Webhook Server for Datadog Alerts with Auto-Remediation**

---

## 🎯 Goal

1. Receive webhook alerts from Datadog in Go.
2. Parse the alert payload.
3. Run a local shell script based on alert contents (e.g., high CPU alert triggers service restart).

---

## ✅ Prerequisites

* Go installed (≥ v1.16)
* Datadog account and a monitor
* ngrok (for public webhook URL)
* Shell script to simulate auto-remediation

---

## 📁 Directory Structure

```
datadog-webhook/
├── main.go
└── scripts/
    └── restart-service.sh
```

---

## 🛠️ Step 1: Shell Script for Remediation

📄 `scripts/restart-service.sh`:

```bash
#!/bin/bash
echo "🔧 [$(date)] Auto-remediation triggered for host: $1"
# systemctl restart nginx  # Replace with your real action
echo "✅ Simulated service restart on $1"
```

Make it executable:

```bash
chmod +x scripts/restart-service.sh
```

---

## 🛠️ Step 2: Webhook Server in Go

📄 `main.go`:

```go
package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os/exec"
	"strings"
)

type Alert struct {
	AlertTitle string `json:"alert_title"`
	AlertType  string `json:"alert_type"`
	AlertID    string `json:"alert_id"`
	Date       string `json:"date"`
	EventType  string `json:"event_type"`
	Msg        string `json:"msg"`
	Priority   string `json:"priority"`
	Host       string `json:"host"`
	Tags       string `json:"tags"`
}

func handler(w http.ResponseWriter, r *http.Request) {
	var alert Alert
	err := json.NewDecoder(r.Body).Decode(&alert)
	if err != nil {
		http.Error(w, "Invalid payload", http.StatusBadRequest)
		log.Println("❌ Failed to parse request:", err)
		return
	}

	log.Println("📬 Datadog alert received:")
	b, _ := json.MarshalIndent(alert, "", "  ")
	fmt.Println(string(b))

	if strings.Contains(strings.ToLower(alert.Msg), "cpu") {
		log.Println("⚠️ CPU alert detected. Running remediation script...")
		runRemediation(alert.Host)
	}

	w.WriteHeader(http.StatusOK)
	w.Write([]byte("OK"))
}

func runRemediation(host string) {
	cmd := exec.Command("./scripts/restart-service.sh", host)
	out, err := cmd.CombinedOutput()
	if err != nil {
		log.Printf("❌ Remediation failed: %v\n", err)
	}
	log.Printf("✅ Remediation output:\n%s", string(out))
}

func main() {
	http.HandleFunc("/incident", handler)
	port := "5000"
	log.Printf("🚀 Webhook server listening on port %s...\n", port)
	log.Fatal(http.ListenAndServe(":"+port, nil))
}
```

---

## 🏃 Run the Server

```bash
go mod init datadog-webhook
go run main.go
```

---

## 🌐 Expose It with Ngrok

```bash
ngrok http 5000
```

Copy the HTTPS URL (e.g. `https://abcd1234.ngrok.io/incident`)

---

## 🔗 Step 3: Create Webhook in Datadog

1. Go to **Integrations > Webhooks > New Webhook**
2. Name: `go_incident_webhook`
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

---

## 🔔 Step 4: Attach Webhook to a Monitor

In the monitor’s message field:

```
@webhook-go_incident_webhook
```

Trigger the monitor by simulating high CPU, and the Go webhook will execute your local shell script with the hostname as an argument.

---

## ✅ Example Output

```
📬 Datadog alert received:
{
  "alert_title": "High CPU Usage",
  "alert_type": "error",
  "alert_id": "123456",
  "date": "2025-05-13 15:00:00",
  "event_type": "trigger",
  "msg": "CPU usage exceeded threshold on host-01",
  "priority": "normal",
  "host": "host-01",
  "tags": "env:prod"
}
⚠️ CPU alert detected. Running remediation script...
✅ Remediation output:
🔧 [Tue May 13 15:00:01 IST 2025] Auto-remediation triggered for host: host-01
✅ Simulated service restart on host-01
```

---

## 🧠 Bonus Ideas

* Add Slack or Discord notification after remediation
* Persist alert logs to a file or DB
* Match on different alert types (e.g., disk, memory)
* Add retry logic if a script fails
