# **Collecting & Forwarding Logs from PetClinic**

[📌 **Enable logs in DataDog for debugging errors in the PetClinic app.**](https://docs.datadoghq.com/agent/logs/?tab=tailfiles)

## **🔹 Step 0: Enable logs in DataDog Config**

```yaml
logs_enabled: true
```

## **🔹 Step 1: Add DataDog Logback Integration**

Modify `pom.xml`:

```xml
<dependency>
    <groupId>com.datadoghq</groupId>
    <artifactId>dd-logback</artifactId>
    <version>1.6.0</version>
</dependency>
```

## **🔹 Step 2: Configure Logback (`logback-spring.xml`)**

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
