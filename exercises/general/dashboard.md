# Dashboards for Java Apps, Kubernetes, and AWS

## **📌 Java Application Monitoring Dashboard**

1️⃣ **Go to** `DataDog UI → Dashboards → New Dashboard`
2️⃣ Name it **"Java App Monitoring"**
3️⃣ **Add Key Widgets:**

| **Metric Type**     | **DataDog Query** | **Widget Type** |
|---------------------|-----------------|----------------|
| 🚀 **JVM Heap Usage**  | `avg:jvm.memory.heap_used{service:java-app}` | Line Chart |
| 🔥 **CPU Usage**      | `avg:system.cpu.user{service:java-app}` | Timeseries |
| 🧠 **Memory Usage**   | `avg:system.mem.used{service:java-app}` | Gauge |
| 🌐 **Request Latency** | `avg:trace.http.request{service:java-app}` | Heatmap |
| 🐢 **Slow DB Queries** | `avg:db.query.duration{service:java-app}` | Table |
| 🐞 **Error Rate**      | `count:trace.errors{service:java-app}` | Bar Chart |

✅ **Now, you have a complete Java app performance overview!**

---

## **📌 Kubernetes Cluster Monitoring Dashboard (EKS & EC2)**

1️⃣ **Go to** `DataDog UI → Dashboards → New Dashboard`
2️⃣ Name it **"Kubernetes Monitoring"**
3️⃣ **Add Key Widgets:**

| **Metric Type**           | **DataDog Query** | **Widget Type** |
|---------------------------|------------------|----------------|
| 🚦 **Pod Health**         | `avg:kubernetes.pod.ready{*}` | Status |
| 📦 **Container CPU Usage** | `avg:container.cpu.usage{*}` | Timeseries |
| 🧠 **Memory Usage**        | `avg:container.memory.usage{*}` | Line Chart |
| 🔄 **Restarting Pods**     | `count:kubernetes.pod.restart{*}` | Table |
| 📈 **Node CPU & Memory**   | `avg:kubernetes.node.cpu{*}` & `avg:kubernetes.node.memory{*}` | Heatmap |
| 🔥 **High Latency Services** | `avg:trace.http.request{*}` | List View |

✅ **Now, you can monitor cluster health and pod performance!**

---

## **📌 AWS Resource Monitoring Dashboard (RDS, EC2, S3, Lambda)**

1️⃣ **Go to** `DataDog UI → Dashboards → New Dashboard`
2️⃣ Name it **"AWS Infrastructure Monitoring"**
3️⃣ **Add Key Widgets:**

| **AWS Service**        | **DataDog Query** | **Widget Type** |
|------------------------|------------------|----------------|
| 🏗 **EC2 CPU Utilization** | `avg:aws.ec2.cpuutilization{*}` | Line Chart |
| 🏋️‍♂️ **EC2 Memory Usage** | `avg:aws.ec2.mem_used{*}` | Timeseries |
| 📦 **EBS Disk IO**      | `avg:aws.ebs.read_bytes{*}` | Bar Chart |
| 🔥 **RDS Query Latency** | `avg:aws.rds.query_duration{*}` | Table |
| 📉 **S3 Request Errors** | `avg:aws.s3.5xx_errors{*}` | List View |
| ⚡ **Lambda Execution Time** | `avg:aws.lambda.duration{*}` | Gauge |
