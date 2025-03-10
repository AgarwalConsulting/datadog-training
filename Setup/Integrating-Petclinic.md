# **Integrating DataDog with Spring PetClinic Application**

📌 **Goal:** Monitor the **Spring PetClinic** application using **DataDog APM, metrics, logs, and dashboards**.

---

## **1️⃣ Setup DataDog Agent**

Before instrumenting the PetClinic app, install the **DataDog Agent** to collect data.

### **🔹 Step 1: Install the DataDog Agent**

#### **On Linux/Mac:**

```bash
DD_AGENT_MAJOR_VERSION=7 DD_API_KEY=<YOUR_API_KEY> DD_SITE="datadoghq.com" \
bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh)"
```

#### **On Docker (for Kubernetes or Local Dev)**

```bash
docker run -d --name datadog-agent \
  -e DD_API_KEY=<YOUR_API_KEY> \
  -e DD_SITE="datadoghq.com" \
  -e DD_APM_ENABLED=true \
  -e DD_LOGS_ENABLED=true \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  datadog/agent:latest
```

✅ **Verify Installation:**
```bash
datadog-agent status
```

---

## **2️⃣ Enable DataDog APM in Spring PetClinic**

📌 **DataDog provides auto-instrumentation for Spring Boot apps**.

### **🔹 Step 1: Download the DataDog Java Agent**

```bash
curl -LO https://dtdg.co/latest-java-tracer
```

Move it to the correct directory:

```bash
mv latest-java-tracer dd-java-agent.jar
```

### **🔹 Step 2: Update the Application Startup Command**

Modify `mvn spring-boot:run` to include the DataDog agent:

```bash
java -javaagent:./dd-java-agent.jar \
  -Ddd.service=petclinic-app \
  -Ddd.env=prod \
  -Ddd.version=1.0 \
  -Ddd.logs.injection=true \
  -Ddd.profiling.enabled=true \
  -Ddd.trace.sample.rate=1.0 \
  -jar target/spring-petclinic-*.jar
```

✅ **What This Does?**

- `-javaagent:./dd-java-agent.jar` → Enables auto-instrumentation.
- `-Ddd.service=petclinic-app` → Sets the service name.
- `-Ddd.env=prod` → Tags the environment.
- `-Ddd.trace.sample.rate=1.0` → Captures all traces.

---

## **3️⃣ Monitoring JVM & Spring Boot Metrics**

📌 **Spring PetClinic is a Java/Spring Boot app, so JVM & application metrics are critical.**

### **🔹 Step 1: Enable Spring Boot Actuator**

Modify `src/main/resources/application.properties`:
```properties
management.endpoints.web.exposure.include=*
management.metrics.export.datadog.api-key=<YOUR_API_KEY>
management.metrics.export.datadog.step=10s
management.metrics.export.datadog.uri=https://api.datadoghq.com
```

### **🔹 Step 2: Add Micrometer DataDog Dependency**

Modify `pom.xml`:

```xml
<dependency>
    <groupId>io.micrometer</groupId>
    <artifactId>micrometer-registry-datadog</artifactId>
</dependency>
```

### **🔹 Step 3: Restart the Application**

```bash
mvn clean spring-boot:run
```

✅ Now, Spring Boot metrics like **JVM heap, GC activity, request latency** will flow into DataDog.

---

## **4️⃣ Distributed Tracing for Spring PetClinic**

📌 **Monitor slow database queries, external API calls, and HTTP request timing.**

### **🔹 Step 1: Enable DataDog APM in `application.properties`**

```properties
dd.trace.enabled=true
dd.service=petclinic-app
dd.env=prod
dd.version=1.0
```

### **🔹 Step 2: Manually Add Tracing for Critical Functions**

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

---

## **5️⃣ Collecting & Forwarding Logs**

📌 **Enable logs in DataDog for debugging errors in the PetClinic app.**

### **🔹 Step 1: Add DataDog Logback Integration**

Modify `pom.xml`:

```xml
<dependency>
    <groupId>com.datadoghq</groupId>
    <artifactId>dd-logback</artifactId>
    <version>1.6.0</version>
</dependency>
```

### **🔹 Step 2: Configure Logback (`logback-spring.xml`)**

```xml
<configuration>
    <appender name="DATADOG" class="com.datadoghq.logback.DatadogAppender">
        <apiKey>YOUR_API_KEY</apiKey>
        <source>java</source>
        <service>petclinic-app</service>
    </appender>

    <root level="info">
        <appender-ref ref="DATADOG"/>
    </root>
</configuration>
```
✅ **Now, logs will appear in DataDog → Logs Explorer**.

---

## **6️⃣ Creating Dashboards & Alerts**

📌 **Visualize and set alerts for critical metrics.**

### **🔹 Step 1: Create a Dashboard**

1️⃣ **Go to DataDog → Dashboards → New Dashboard**
2️⃣ **Add Widgets**:
   - JVM **Heap Usage** (`jvm.memory.heap_used`)
   - **HTTP Request Latency** (`http.server.requests.duration`)
   - **Database Query Time** (`db.query.time`)

### **🔹 Step 2: Create an Alert for High Latency**

1️⃣ Go to **Monitors → Create Monitor**
2️⃣ Choose **Metric Alert**
3️⃣ Set Condition:
```plaintext
http.server.requests.duration > 2s for 5 min
```
4️⃣ Notify via **Slack/PagerDuty**.

---

## **7️⃣ Deploying in Docker or Kubernetes**

📌 **If running Spring PetClinic in Docker/K8s, configure DataDog for container monitoring.**

### **🔹 Docker Compose Example**

Modify `docker-compose.yml`:
```yaml
version: "3"
services:
  petclinic:
    image: spring-petclinic
    environment:
      - DD_AGENT_HOST=datadog-agent
      - DD_SERVICE=petclinic-app
      - DD_ENV=prod
      - DD_VERSION=1.0
    depends_on:
      - datadog-agent

  datadog-agent:
    image: datadog/agent:latest
    environment:
      - DD_API_KEY=<YOUR_API_KEY>
      - DD_APM_ENABLED=true
```
✅ Now, traces & logs from **containers** will be collected.
