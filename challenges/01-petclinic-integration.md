# Enable DataDog APM in Spring PetClinic

From `datadog-training` directory, run `./scripts/windows/launch-pet-store.sh`.

📌 **DataDog provides auto-instrumentation for Spring Boot apps**.

## **🔹 Step 1: Download the DataDog Java Agent**

```bash
curl -LO https://dtdg.co/latest-java-tracer
```

Move it to the correct directory:

```bash
mv latest-java-tracer dd-java-agent.jar
```

## **🔹 Step 2: Update the Application Startup Command**

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
