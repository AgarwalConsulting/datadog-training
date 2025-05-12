# Enable DataDog APM in Spring PetClinic

Using Git Bash, from `datadog-training` directory, run `./scripts/windows/launch-pet-store.sh`.

Starts the pet clinic on: http://localhost:8080.

Kill from CLI (`Ctrl+C`) and then follow the steps below to monitor the Java Spring Pet Clinic application, without modifying the code...

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

Make sure the `dd-java-agent.jar` file is present in `datadog-training/spring-petclinic` directory.

And from `datadog-training/spring-petclinic`, run the following:

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
