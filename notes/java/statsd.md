# Custom Application Metrics with DataDog StatsD

📌 **Why?** Track business KPIs (e.g., **order processing time, API errors, cache hits**).

## 🔹 Step 1: Add DataDog Java API

Maven:

```xml
<dependency>
    <groupId>com.datadoghq</groupId>
    <artifactId>java-dogstatsd-client</artifactId>
    <version>2.11.0</version>
</dependency>
```

Gradle:

```groovy
implementation 'com.datadoghq:java-dogstatsd-client:2.11.0'
```

## 🔹 Step 2: Send Custom Metrics

Example: Tracking Order Failures

```java
import com.timgroup.statsd.NonBlockingStatsDClient;

public class OrderService {
    private static final NonBlockingStatsDClient statsd =
        new NonBlockingStatsDClient("my-java-app", "localhost", 8125);

    public void processOrder(boolean isSuccess) {
        if (!isSuccess) {
            statsd.increment("orders.failed", "service:order-service", "env:prod");
        }
    }
}
```

✅ **Visualizing:** Create a dashboard for `orders.failed` **per service & environment**.
