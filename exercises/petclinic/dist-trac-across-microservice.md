# Distributed Tracing Across Microservices

📌 **Trace requests across multiple services (e.g., PetClinic → Payments → Database).**

## Step 1: Add Datadog Tracing to Inter-Service Calls

Modify your REST client:

```java
import datadog.trace.api.Trace;
import org.springframework.web.client.RestTemplate;

@Service
public class PaymentService {

    @Trace
    public String processPayment() {
        RestTemplate restTemplate = new RestTemplate();
        return restTemplate.getForObject("http://payments-service/pay", String.class);
    }
}
```

✅ **Now, requests from PetClinic to Payments are traced.**

---

## Step 2: Trace Database Queries

Modify your database connection to enable tracing:

```properties
spring.datasource.url=jdbc:datadoghq://localhost:3306/mydb
```

✅ **Now, SQL queries are linked to traces in DataDog!**
