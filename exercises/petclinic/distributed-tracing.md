# Distributed Tracing for Spring PetClinic

📌 **Monitor slow database queries, external API calls, and HTTP request timing.**

## Step 1: Enable DataDog APM in `application.properties`

```properties
dd.trace.enabled=true
dd.service=petclinic-app
dd.env=prod
dd.version=1.0
```

For local agent, also add:

```properties
datadog.agent.host=localhost
datadog.agent.port=8126
```

## Step 2: Add DataDog APM Dependencies

For **Maven** (`pom.xml`):

```xml
<dependency>
    <groupId>com.datadoghq</groupId>
    <artifactId>dd-trace-api</artifactId>
    <version>1.16.0</version>
</dependency>
```

For **Gradle** (`build.gradle`):

```gradle
dependencies {
    implementation 'com.datadoghq:dd-trace-api:1.16.0'
}
```

✅ **Now, your app supports DataDog tracing.**

## Step 3: Manually Add Tracing for Critical Functions

Modify **OwnerController.java**:

```java
import datadog.trace.api.Trace;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/owners")
public class OwnerController {

    @Trace // Enables tracing for this function
    @GetMapping("/{ownerId}")
    public Owner getOwnerById(@PathVariable Long ownerId) {
        return ownerService.findOwnerById(ownerId);
    }
}
```

✅ **What Happens?**

- Every request to `/owners/{id}` is **traced** in DataDog.

- You can **view execution time, dependencies, and DB queries**.

## Extra challenge

- Do the same for `/pets/...` endpoints
