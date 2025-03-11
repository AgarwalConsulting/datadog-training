# Outlier Detection (Comparing Services)

Outlier detection helps when comparing **multiple instances** to see if one is behaving differently.

## **🔹 Example: Detecting a Slow Microservice**

📌 **Find if one Java service is significantly slower than others.**

1️⃣ **Go to** `Monitors → Create Monitor → Outlier Detection`

2️⃣ **Query:**

```plaintext
outliers(avg:trace.http.request{service:java-app}, 'dbscan', 3)
```

3️⃣ **Set Notification** to DevOps Team
