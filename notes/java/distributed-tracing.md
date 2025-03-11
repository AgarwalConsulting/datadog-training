# Distributed Tracing with DataDog APM

📌 **Goal:** **Trace requests** across **microservices, databases, and caches**.

## Enable Tracing in Spring Boot

For **Spring Boot applications**, enable APM with:

```properties
# application.properties
dd.trace.enabled=true
dd.service=my-java-app
dd.env=production
```

OR in **application.yml**:

```yaml
dd:
  trace:
    enabled: true
  service: my-java-app
  env: production
```

✅ **Traces Will Include:**

- **HTTP Requests:** `http.request.duration`
- **Database Queries:** `db.query.time`
- **External Calls:** `http.client.requests`

- **Custom Traces (Manual)**:

```java
import datadog.trace.api.Trace;

public class PaymentService {
    @Trace
    public void processPayment() {
        // Your logic here
    }
}
```
