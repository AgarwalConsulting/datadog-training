# Setting Up Alerts for Performance Issues

📌 **Now, set up alerts to detect problems in real time.**

## 🔹 Alert for High CPU Usage

1️⃣ **Go to** `Monitors → Create Monitor → Host Metrics`

2️⃣ Set condition:

```plaintext
system.cpu.user > 80% for 5 minutes
```

✅ **Now, get notified if CPU spikes!**

---

## 🔹 Alert for Memory Leaks

1️⃣ **Go to** `Monitors → Create Monitor → Memory Usage`

2️⃣ Set condition:

```plaintext
system.mem.used > 80%
```

✅ **Now, get alerts before memory runs out!**

---

## 🔹 Alert for Slow Queries

1️⃣ **Go to** `Monitors → Create Monitor → APM Monitor`

2️⃣ Set condition:

```plaintext
service:petclinic AND db.duration:>1000ms
```

✅ **Now, get notified when queries slow down!**

---

## 🌐 Alert for Slow API Responses

1️⃣ **Go to** `Monitors → Create Monitor → APM HTTP Monitor`

2️⃣ Query:

```plaintext
avg(last_5m):trace.http.request{service:petclinic} > 5000
```

✅ **Now, API slowness will be detected early!**
