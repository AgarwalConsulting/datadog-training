# Simulating & Troubleshooting Performance Issues in Spring PetClinic with DataDog

📌 **Goal:**

- Inject **CPU spikes, memory leaks, slow DB queries, and API delays** into Spring PetClinic

- Use **DataDog APM & Logs** to detect and troubleshoot issues

- Apply **best practices** to fix performance bottlenecks

---

## 1️⃣ Set Up DataDog APM for Spring PetClinic

📌 **Before simulating issues, ensure DataDog APM is integrated.**

### **🔹 Step 1: Run DataDog Agent**

### **🔹 Step 2: Add DataDog Java APM Agent**

Modify `Maven` dependencies (`pom.xml`):

```xml
<dependency>
    <groupId>com.datadoghq</groupId>
    <artifactId>dd-trace-api</artifactId>
    <version>1.10.0</version>
</dependency>
```

Set JVM arguments (`application.properties`):

```properties
-Ddd.agent.host=localhost
-Ddd.service=petclinic
-Ddd.env=dev
-Ddd.version=1.0
-Ddd.logs.injection=true
-Ddd.profiling.enabled=true
```

✅ **Now, Spring PetClinic is sending traces to DataDog.**

---

## 2️⃣ Simulating Performance Issues in PetClinic

📌 **We now create performance issues in PetClinic controllers and services.**

### **🔥 CPU Spike in Vet Service**

Modify `VetServiceImpl.java`:

```java
@Override
public Collection<Vet> findVets() {
    long start = System.currentTimeMillis();
    while (System.currentTimeMillis() - start < 10000) { // 10s CPU spike
        Math.pow(Math.random(), Math.random());
    }
    return vetRepository.findAll();
}
```

✅ **Visiting `/vets` will now trigger a CPU spike.**

---

### **🔎 Detecting High CPU in DataDog**

1️⃣ **Go to** `APM → Profiler → CPU`

2️⃣ Check **high CPU-consuming methods**

3️⃣ Filter for:

```plaintext
service:petclinic AND system.cpu.user > 80%
```

🚨 **Fix it by optimizing loops and reducing computations.**

---

### **🚀 Memory Leak in Owner Service**

Modify `OwnerServiceImpl.java`:

```java
private final List<int[]> memoryHog = new ArrayList<>();

@Override
public Owner findOwnerById(int id) {
    for (int i = 0; i < 10000; i++) {
        memoryHog.add(new int[100000]); // Simulate memory leak
    }
    return ownerRepository.findById(id);
}
```

✅ **Visiting `/owners/{id}` will now cause a memory leak.**

---

### **🔎 Detecting High Memory Usage in DataDog**

1️⃣ **Go to** `APM → Profiler → Memory`

2️⃣ Look for **high heap allocation**

3️⃣ Set an alert:

```plaintext
service:petclinic AND system.mem.used > 80%
```

🚨 **Fix it by avoiding large object allocations and using proper garbage collection.**

---

### **🐢 Simulating Slow Database Queries**

Modify `VisitRepository.java` to introduce a slow query:

```java
@Query(value = "SELECT pg_sleep(10)", nativeQuery = true)
List<Visit> findSlowVisits();
```

✅ **Visiting `/visits` will now cause a 10-second delay.**

---

### **🔎 Detecting Slow Queries in DataDog**

1️⃣ **Go to** `APM → Databases`

2️⃣ Sort by **query duration**

3️⃣ Filter for:

```plaintext
service:petclinic AND db.duration:>1000ms
```

🚨 **Fix slow queries by adding indexes, caching, or query optimization.**

---

### **🌐 Simulating Slow API Calls in PetClinic**

Modify `PetServiceImpl.java`:

```java
@Override
public Pet findPetById(int id) throws InterruptedException {
    Thread.sleep(5000); // Simulate API slowness
    return petRepository.findById(id);
}
```

✅ **Visiting `/pets/{id}` will now introduce a 5-second delay.**

---

### **🔎 Detecting Slow API Calls in DataDog**

1️⃣ **Go to** `APM → Traces`

2️⃣ Filter for:

```plaintext
service:petclinic AND duration:>5000ms
```

🚨 **Fix API slowness using caching, circuit breakers, and async processing.**
