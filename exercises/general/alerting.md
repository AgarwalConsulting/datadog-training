# Alerting

## **🔥 Alert for High JVM Heap Usage**

📌 **Trigger an alert when heap memory exceeds 80%**

**Steps:**

1️⃣ **Go to** `Monitors → Create Monitor → JVM Metrics`

2️⃣ Query:

```plaintext
avg(last_5m):jvm.memory.heap_used{service:java-app} > 80
```

3️⃣ **Notify**: `Send alert to DevOps Slack channel`

---

## **🛑 Alert for High Pod Restarts in Kubernetes**

📌 **Trigger an alert when a pod restarts more than 5 times in 10 minutes**

**Steps:**

1️⃣ **Go to** `Monitors → Create Monitor → Kubernetes Pod Metrics`

2️⃣ Query:

```plaintext
count:kubernetes.pod.restart{*} > 5
```

3️⃣ **Notify**: `PagerDuty or Email`

---

## **🚦 Alert for Unhealthy AWS EC2 Instances**

📌 **Trigger an alert when EC2 instances are unhealthy for more than 5 minutes**

**Steps:**

1️⃣ **Go to** `Monitors → Create Monitor → AWS EC2 Metrics`

2️⃣ Query:

```plaintext
avg(last_5m):aws.ec2.status_check_failed{*} > 0
```

3️⃣ **Notify**: `AWS Ops Team`

---

## **🐢 Alert for Slow RDS Queries**

📌 **Trigger an alert when queries take longer than 2 seconds**

**Steps:**

1️⃣ **Go to** `Monitors → Create Monitor → AWS RDS Metrics`

2️⃣ Query:

```plaintext
avg(last_5m):aws.rds.query_duration{*} > 2000
```

3️⃣ **Set notification**: `Send alert to #database-alerts on Slack`

---

## **🌐 Alert for API Latency Issues**

📌 **Trigger an alert when API response time exceeds 5 seconds**

**Steps:**

1️⃣ **Go to** `Monitors → Create Monitor → APM HTTP Monitor`

2️⃣ Query:

```plaintext
avg(last_5m):trace.http.request{*} > 5000
```

3️⃣ **Set Notification**: `Send alert to DevOps team`

---

## **🔄 Alert for S3 Errors**

📌 **Trigger an alert when S3 request errors increase suddenly**

**Steps:**

1️⃣ **Go to** `Monitors → Create Monitor → AWS S3 Metrics`

2️⃣ Query:

```plaintext
avg(last_5m):aws.s3.5xx_errors{*} > 10
```

3️⃣ **Notify**: `Email AWS Support`
