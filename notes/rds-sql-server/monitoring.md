# **🚀 AWS SQL Server Health Monitoring in DataDog**

📌 **Monitoring AWS RDS SQL Server involves tracking:**
✔️ **Performance Metrics** (CPU, Memory, Query Performance)
✔️ **Availability & Connectivity** (Replication, Failovers, Connections)
✔️ **Error Logs & Query Failures**
✔️ **Slow Queries & Deadlocks**

---

## **📌 1️⃣ Enable AWS Integration in DataDog**

🔹 **Go to:** `DataDog → Integrations → AWS`
🔹 **Ensure "RDS" is checked** under "Collect Logs & Metrics"
🔹 **Add IAM permissions** to allow DataDog access to CloudWatch metrics

✅ **Once enabled, DataDog will start pulling RDS SQL Server metrics!**

---

## **📌 2️⃣ Metric-Based Alerts for SQL Server**

### **✅ High CPU Usage Alert**

📌 **Detect if RDS CPU usage exceeds 80% for 5 minutes**

1️⃣ **Go to** → `Monitors → Create Monitor → Metric Alert`

2️⃣ **Query:**

   ```plaintext
   avg:aws.rds.cpuutilization{dbinstanceidentifier:your-db-instance} > 80
   ```

3️⃣ **Trigger Condition:**
   - Alert if CPU **> 80% for 5 minutes**

4️⃣ **Notification:**
   - Send alert to **Slack (#db-alerts)**

✅ **Prevents performance degradation due to high CPU load!**

---

### **✅ High Connection Count Alert**

📌 **Detect if SQL Server has too many active connections**

1️⃣ **Go to** → `Monitors → Create Monitor → Metric Alert`

2️⃣ **Query:**
   ```plaintext
   avg:aws.rds.database_connections{dbinstanceidentifier:your-db-instance} > 500
   ```

3️⃣ **Trigger Condition:**
   - Alert if active connections **> 500 for 5 minutes**

4️⃣ **Notification:**
   - Send alert to **Database Admins on Slack**

✅ **Helps detect connection saturation before failures occur!**

---

### **✅ Slow Query Execution Alert**

📌 **Detect if average query execution time exceeds 2 seconds**

1️⃣ **Go to** → `Monitors → Create Monitor → Metric Alert`

2️⃣ **Query:**
   ```plaintext
   avg:aws.rds.query_execution_time{dbinstanceidentifier:your-db-instance} > 2000
   ```

3️⃣ **Trigger Condition:**
   - Alert if execution time **> 2s for 3 minutes**

4️⃣ **Notification:**
   - Send alert to **#database-alerts**

✅ **Prevents slow query bottlenecks impacting application performance!**

---

## **📌 3️⃣ Log-Based Alerts for SQL Server**

### **✅ Detecting SQL Server Errors in Logs**

📌 **Detect when RDS logs contain error messages like deadlocks or authentication failures**

1️⃣ **Go to** → `Monitors → Create Monitor → Log Alert`

2️⃣ **Query:**

   ```plaintext
   @log.message:"deadlock" OR @log.message:"login failed"
   ```

3️⃣ **Trigger Condition:**
   - Alert if **5+ errors in 10 minutes**

4️⃣ **Notification:**
   - Notify **DB Admins on Slack**

✅ **Prevents downtime by catching database issues early!**

---

### **✅ Detecting Database Failovers**

📌 **Trigger an alert when AWS RDS SQL Server switches to a standby instance**

1️⃣ **Go to** → `Monitors → Create Monitor → Log Alert`

2️⃣ **Query:**
   ```plaintext
   @log.message:"DB instance failover completed"
   ```

3️⃣ **Trigger Condition:**
   - **Alert if failover detected**

4️⃣ **Notification:**
   - Send alert to **#ops-team**

✅ **Helps DevOps track unexpected failovers!**
