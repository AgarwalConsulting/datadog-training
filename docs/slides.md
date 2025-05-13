layout: true

.signature[@algogrit]

---

class: center, middle

# Observability with DataDog

Gaurav Agarwal

---

class: center, middle

![Me](assets/images/me.png)

Software Engineer & Product Developer

Director of Engineering & Founder @ https://codermana.com

ex-Tarka Labs, ex-BrowserStack, ex-ThoughtWorks

---

class: center, middle

*What we wanted*

![In-class Training](assets/images/professional-training-courses.jpg)

---

class: center, middle

*What we got*

![WFH](assets/images/wfh.jpg)

---

## As an instructor

- I promise to

  - make this class as interactive as possible

  - use as many resources as available to keep you engaged

  - ensure everyone's questions are addressed

---

## What I need from you

- Be vocal

  - Let me know if there are any audio/video issues ASAP

  - Feel free to interrupt me and ask me questions

- Be punctual

- Give feedback

- Work on the exercises

- Be *on mute* unless you are speaking

---
class: center, middle

## Class progression

![Learning Curve](assets/images/learning-curve.jpg)

---
class: center, middle

Here you are trying to *learn* something, while here your *brain* is doing you a favor by making sure the learning doesn't stick!

---

### Some tips

- Slow down => stop & think
  - listen for the questions and answer

- Do the exercises
  - not add-ons; not optional

- There are no dumb questions!

- Drink water. Lots of it!

---

### Some tips (continued)

- Take notes
  - Try: *Repetitive Spaced Out Learning*

- Talk about it out loud

- Listen to your brain

- *Experiment!*

---
class: center, middle

### 📚 Content ` <> ` 🕒 Time

---
class: center, middle

## Show of hands

*Yay's - in Chat*

---
class: center, middle

## What is monitoring?

---
class: center, middle

Monitoring is a process of observing and tracking activities and progress.

---
class: center, middle

Monitoring of a program or intervention involves the collection of routine data that measure progress toward achieving program objectives.

---
class: center, middle

### Types of Monitoring

---

- *Process Monitoring*

  Process monitoring can ensure that you're executing project activities.

- *Availability Monitoring*

  Availability monitoring is the simplest way for network teams to know if a device is up and operational.

- *Security Monitoring*

  Security attacks and network infringements impact the flow of data traffic and network behavior.

---

- *Compliance Monitoring*

  Just as the name suggests, the purpose of compliance monitoring is to ensure compliance with donor regulations, grant, contract requirements, local governmental regulations and laws, ethical standards, and most importantly compliance with the expected results of the project.

- *Cloud/Infrastructure Monitoring*

  This involves tracking and analyzing the health, performance, and usage of cloud-based resources and services to ensure efficiency and reliability.

---

#### Practical Applications

- Status Pages

- Alerting

- Trend Analysis & Capacity Planning

- ...

---
class: center, middle

## Observability and SRE

---
class: center, middle

Observability is the ability to measure the internal states of a system by examining its outputs.

---
class: center, middle

A system is considered “observable” if the current state can be estimated by only using information from outputs, namely sensor data.

---
class: center, middle

### Monitoring vs Observability

---
class: center, middle

Where monitoring is an action you take, observability is an overall function or property of a system.

---
class: center, middle

The more you can observe a system, the more you can understand it's complex ways.

---
class: center, middle

Monitoring is an action you take. Monitoring a system, an app, a certain metric to pick up on anomalies that might indicate an issue. It answers the question "Is this system working correctly?"

.content-credits[https://www.splunk.com/en_us/blog/learn/observability-vs-monitoring-vs-telemetry.html]

---
class: center, middle

Observability is a property of your system, not an action, that helps you control complexity. It answers the question: “What is happening inside this app or across a system?” While observability incorporates monitoring activities, it goes far beyond mere monitoring.

.content-credits[https://www.splunk.com/en_us/blog/learn/observability-vs-monitoring-vs-telemetry.html]

---
class: center, middle

Telemetry is simply the supporting pillars.

---

- Logging provides insight into application-specific messages emitted by processes.

- Metrics provide quantitative information about processes running inside the system, including counters, gauges, and histograms.

- Tracing, aka distributed tracing, provides insight into the full lifecycles, aka traces, of requests to the system, allowing you to pinpoint failures and performance issues.

---
class: center, middle

Logs, metrics and traces are what power observability but these three items on their own do not make a system observable.

---
class: center, middle

### Challenges with legacy monitoring

---
class: center, middle

#### Data gaps

---
class: center, middle

Traditional monitoring tools might only sample data, limiting the full visibility for both the users and any analytics algorithms running on that data. The result is lower visibility into customer-impacting issues, which translates to longer time to resolving the issue.

---

class: center, middle

#### Slow movement

---
class: center, middle

Serverless functions inherent in cloud-native tech are invoked within seconds or less. Traditional monitoring tools can’t pick up action this quickly, contributing to more missing data.

---
class: center, middle

#### Missing intelligence

---
class: center, middle

Most monitoring tools weren’t built to take in the rate of data we’re accustomed to today. What data they do take in, the tools aren’t equipped with built-in intel, resulting in too many alerts and not enough actionable insight.

---
class: center, middle

#### Tool sprawl

---
class: center, middle

Monitoring can apply to practically any digital area—which means there are too many tools to overlay and integrate. This is another missed opportunity.

---
class: center, middle

## As a SRE...

.content-credits[https://cloud.google.com/blog/products/devops-sre/sre-fundamentals-slis-slas-and-slos]

---
class: center, middle

The concept of SRE starts with the idea that metrics should be closely tied to business objectives.

---
class: center, middle

We use several essential tools—SLO, SLA and SLI—in SRE planning and practice.

---
class: center, middle

### Service-Level Objective (SLO)

---
class: center, middle

Availability, in SRE terms, defines whether a system is able to fulfill its intended function at a point in time.

---
class: center, middle

The historical availability measurement can also describe the probability that your system will perform as expected in the future.

---
class: center, middle

We term this target the availability Service-Level Objective (SLO) of our system.

---
class: center, middle

### Service-Level Agreement (SLA)

---
class: center, middle

An SLA normally involves a promise to someone using your service that its availability SLO should meet a certain level over a certain period, and if it fails to do so then some kind of penalty will be paid.

---
class: center, middle

The concept is that going out of SLO is going to hurt the service team, so they will push hard to stay within SLO.

---
class: center, middle

Because of this, and because of the principle that availability shouldn’t be much better than the SLO, the availability SLO in the SLA is normally a looser objective than the internal availability SLO.

---
class: center, middle

If you have an SLO in your SLA that is different from your internal SLO, as it almost always is, it’s important for your monitoring to measure SLO compliance explicitly.

---
class: center, middle

### Service-Level Indicator (SLI)

---
class: center, middle

the frequency of successful probes of our system

---
class: center, middle

When we evaluate whether our system has been running within SLO for the past week, we look at the SLI to get the service availability percentage.

---
class: center, middle

If you’re building a system from scratch, make sure that SLIs and SLOs are part of your system requirements. If you already have a production system but don’t have them clearly defined, then that’s your highest priority work.

---
class: center, middle

## How does DataDog fit in all this!?

---
class: center, middle

Datadog is a comprehensive monitoring and analytics platform designed to provide real-time insights into the performance of applications, infrastructure, and networks.

---
class: center, middle

### Features of DataDog

---

- **Monitoring**: Datadog offers monitoring for cloud-scale applications and infrastructure. It collects metrics, traces, and logs from various sources including servers, containers, databases, and applications, providing a unified view of system performance.

- **Dashboards**: Users can create custom dashboards to visualize key metrics and performance indicators. These dashboards can be tailored to specific needs and shared with team members for collaboration.

---

- **Alerting**: Datadog allows users to set up alerts based on predefined thresholds or anomalies detected in their metrics. Alerts can be sent via various channels including email, SMS, and integrations with collaboration tools like Slack.

- **Infrastructure Monitoring**: It provides detailed insights into the health and performance of infrastructure components such as servers, containers, databases, and networks. This includes metrics like CPU usage, memory utilization, disk I/O, and network traffic.

---

- **Application Performance Monitoring (APM)**: Datadog's APM feature enables monitoring of application performance and dependencies. It traces requests across distributed systems, identifies bottlenecks, and provides insights into the performance of individual components.

- **Log Management**: Datadog offers centralized log management, allowing users to collect, analyze, and visualize logs from various sources. It supports log aggregation, searching, and correlation to troubleshoot issues and gain operational insights.

---

- **Network Performance Monitoring**: It provides visibility into network traffic, latency, and errors, helping users identify and troubleshoot issues affecting network performance.

- **Integration**: Datadog integrates with a wide range of technologies and services including cloud platforms (AWS, Azure, Google Cloud), databases, orchestration tools (Kubernetes, Docker), messaging queues, and more, allowing users to collect and analyze data from diverse sources.

---

- **Security Monitoring**: Datadog offers security monitoring features such as threat detection, anomaly detection, and compliance monitoring. It helps identify security threats, vulnerabilities, and compliance violations in real-time.

- **Collaboration and Reporting**: Datadog provides collaboration features that enable teams to share insights, collaborate on troubleshooting, and track performance over time. It also offers reporting capabilities for generating custom reports and sharing insights with stakeholders.

---
class: center, middle

### Case Studies

.content-credits[https://www.datadoghq.com/case-studies/]

---

#### Vidio

Vidio is a multi-platform video streaming service that provides curated local and premium content, including live sports matches, popular television series, and movies. As a key player in the Indonesian streaming video sector, Vidio caters to millions of monthly active viewers, ranging from millennial trendsetters to mobilefirst consumers of all ages.

*Reduced MTTR*: Datadog's unified monitoring platform enabled Vidio's teams to quickly detect and resolve incidents.

*8 Million Viewers*: Datadog enables Vidio to live stream to a large audience by monitoring the health of their system in real time.

---

#### Toyota Motor North America (TMNA)

- Provides full visibility into the health and performance
of each layer of TMNA’s environment

- Easily integrates with and monitors AWS-hosted apps and
other key technologies

- Brings data—regardless of their source—into a single
unified platform to help teams quickly gain context and
troubleshoot faster

- Offers intuitive dashboards to visualize site reliability
engineering practices, service level objectives (SLOs),
AWS over-capacity, and more

.content-credits[https://www.datadoghq.com/pdf/case_study_toyota_230808.pdf]

---

#### Devisters

Devsisters is a mobile gaming company with some of the most popular games in the market, including Cookie Run, which has over 100 million downloads. Devsisters focuses on promoting social interaction in its games while ensuring top-notch user experiences for its community of gamers. Devsisters is a leading tech company in South Korea and an early adopter of Amazon Web Services (AWS) and other modern technologies.

- Datadog automatically scaled to monitor Devsisters traffic that increased 10x in 10 minutes.

- Devsisters leverages Datadog to gain visibility into custom in-game metrics in order to innovate and improve user experiences.

- Datadog’s Live Process monitoring provides real-time alerts for unusual activity.

---
class: center, middle

## Where does DataDog not shine?

---

- You will be adding a new cost for monitoring purposes and that could be costly with DataDog.

- Complex Log Ingestion, Indexing and Retention Process

- Scaling Challenges

---
class: center, middle

And *complex* Pricing

.content-credits[https://cherkaskyb.medium.com/the-magic-that-is-datadog-pricing-part-ii-5fa56cd8476e]

---
class: center, middle

### Brief intro to DataDog Pricing

---

- In host base products, such as *APM*, *infrastructure* and *CSM*, Datadog offers a monitoring platform for hosts (instances), with various capabilities.

- In volume base products, such as *Logs*, *Synthetics* you pay per use.

- In user based products, such as *Incident management* and *CI Visibility* you pay per active users.

---
class: center, middle

#### Buy One Get Some for Free

---
class: center, middle

> The last piece of the puzzle are products such as containers, custom metrics, index spans.
> For those products, you get a “free amount” for some of the “main” Datadog products you use.

---

For example, for each monitored host, you’ll get (for enterprise account):

- 4 monitored containers

- 200 custom metrics

- 1M APM spans

---
class: center, middle

## Let's get started...

---
class: center, middle

### Signup/Login & Installation on Windows

.content-credits[https://github.com/AgarwalConsulting/datadog-training/blob/master/Setup/Dashboard.md]

---
class: center, middle

#### [Other Integrations](https://app.datadoghq.com/signup/agent)

---
class: center, middle

## Setting up DataDog

---
class: center, middle

### Understanding the Windows Agent

.content-credits[https://docs.datadoghq.com/agent/basic_agent_usage/windows]

---
class: center, middle

and it's configuration

.content-credits[https://docs.datadoghq.com/agent/configuration/agent-configuration-files/?tab=agentv6v7]

---
class: center, middle

### *Optional:* [DataDog Client Libraries](https://docs.datadoghq.com/developers/community/libraries/)

---
class: center, middle

### **Best Practices for Tagging & Organizing Data in DataDog**

---
class: center, middle

Proper **tagging and organization** in DataDog is crucial for efficient monitoring, filtering, and troubleshooting.

---
class: center, middle

Tags help **group resources, correlate logs, and create meaningful dashboards and alerts**.

---
class: center, middle

#### **1. Define a Clear Tagging Strategy**

---
class: center, middle

📌 **Why?** Standardized tags improve searchability and avoid duplication.

---

- **Use a consistent key:value format** → e.g., `env:prod`, `team:payments`.

- **Avoid redundant tags** → Don’t tag `env:prod` if all metrics in that group are production.

- **Use lowercase and hyphens for readability** → `service:checkout-api`, not `Service_CheckoutAPI`.

- **Limit the number of unique tag values** → Too many variations (`team:alice`, `team:bob`, `team:charlie`) make filtering hard.

---
class: center, middle

#### **2. Essential Tags for Organizing Data**

---
class: center, middle

📌 **Why?** Tags help **group related logs, metrics, traces, and monitors**.

---

**a) Environment Tags (Mandatory)**
Used to separate different environments.
- ✅ `env:dev`, `env:staging`, `env:prod`

**b) Service & Component Tags**
Identify services and their components.
- ✅ `service:orders-api`, `service:billing-db`, `component:redis-cache`

**c) Team Ownership Tags**
Define responsibility for alerts and troubleshooting.
- ✅ `team:payments`, `team:devops`, `team:security`

**d) Cloud & Infrastructure Tags**
Useful for multi-cloud or hybrid setups.
- ✅ `cloud:aws`, `cloud:gcp`, `region:us-east-1`, `availability-zone:us-east-1a`

**e) Kubernetes-Specific Tags**
For tracking containers and pods.
- ✅ `kubernetes_cluster:prod-cluster-1`, `namespace:monitoring`, `pod:web-frontend`

**f) Security & Compliance Tags**
For tracking sensitive data handling.
- ✅ `compliance:gdpr`, `data_classification:sensitive`

---
class: center, middle

*Example Usage:* Filtering all **production errors** for the **orders service**:

```plaintext
service:orders-api AND env:prod AND status:error
```

---
class: center, middle

#### **3. Automating Tagging for Consistency**

---
class: center, middle

📌 **Why?** Manually tagging data is error-prone and time-consuming.

---

**a) Auto-Tagging with AWS, Kubernetes, and Cloud Integrations**

- AWS resources inherit tags from EC2, RDS, and ECS.
- Kubernetes automatically applies pod and namespace tags.

**b) Use the DataDog Agent for Dynamic Tags**

- The **DataDog Agent** can **auto-tag logs, metrics, and traces** from hosts and services.
- Example: Adding **environment and region tags** dynamically.
  ```yaml
  tags:
    - "env:prod"
    - "region:us-west-2"
    - "service:checkout"
  ```

**c) Enrich Logs with Custom Tags**

- Add custom tags at log ingestion using the **DataDog Forwarder or Lambda Functions**.
- Example (for AWS Lambda Logs in CloudWatch):

```json
{
  "message": "Payment failed",
  "ddtags": "service:payments,env:prod,status:error"
}
```

---
class: center, middle

#### **4. Organizing Data Using Tags in DataDog**

---
class: center, middle

📌 **Why?** Tags help in filtering, grouping, and visualizing data effectively.

---

**a) Using Tags in Dashboards**

- Create widgets that group data by **service, environment, or team**.

- Example: A **CPU usage graph per Kubernetes cluster**
  - `kubernetes_cluster:prod-cluster-1`
  - `kubernetes_cluster:staging-cluster-2`

---

**b) Using Tags in Monitors & Alerts**

- Alert when **any pod in production exceeds 90% CPU usage**:

```plaintext
kubernetes_cluster:prod-cluster-1 AND metric:cpu.usage > 90
```

---

**c) Filtering Logs Using Tags**

- View all **API errors in production**:

```plaintext
service:api-gateway AND env:prod AND status:error
```

- Debug **failed database queries** in staging:
```plaintext
service:postgres-db AND env:staging AND query_status:failed
```

---
class: center, middle

#### **5. Cleaning Up & Optimizing Tags**

---
class: center, middle

📌 **Why?** Too many unnecessary tags can slow down searches and clutter dashboards.

---

- **Remove unused tags** → If a tag is never used in filters or dashboards, drop it.

- **Avoid high-cardinality tags** → Tags like `user_id:12345` create **too many unique values**, slowing queries.

- **Review tags quarterly** → Ensure they follow naming conventions and remain relevant.

---

✅ **Example:**

- 🚫 Bad: `user_id:1001`, `user_id:1002`, `user_id:1003` (Too many unique values)

- ✅ Good: `user_type:enterprise`, `user_type:free`, `user_type:pro`

---
class: center, middle

## DataDog Capabilities

---
class: center, middle

DataDog provides **real-time observability** for applications running on **on-prem, cloud, containers, and Kubernetes** environments.

---
class: center, middle

### **1. Infrastructure Monitoring**

---
class: center, middle

Supports **EKS (Managed)** and **Self-managed Kubernetes**

---
class: center, middle

📌 **Why It Matters**: Kubernetes environments are complex, and visibility into **pods, nodes, workloads, and networking** is essential for performance tuning and troubleshooting.

---

- **Auto-discovery** of Kubernetes workloads, services, and containers.

- **Node & Pod Metrics**: CPU, memory, disk, network usage.

- **Event Monitoring**: Track restarts, crash loops, deployments, and errors.

- **Cluster Maps**: Visualize your cluster in real time (health, deployments, and resource allocation).

- **Kubernetes Logs**: Ingest logs from pods and correlate with traces & metrics.

---

🔹 **How It Works**:

- Deploy the **DataDog Agent as a DaemonSet** in your cluster.

- Enable **Kubernetes State Metrics** and **Autodiscovery** for monitoring services dynamically.

- Use **Live Containers** view for real-time container metrics.

---
class: center, middle

*Example Use Case*: Monitor a Java-based microservice running on Kubernetes, correlating pod crashes with **OOM (Out of Memory) errors** and slow response times.

---
class: center, middle

Supports **Bare Metal & EC2 Monitoring**

---
class: center, middle

📌 **Why It Matters**: Unlike cloud-managed services, **bare metal and EC2 instances** require **direct agent-based monitoring** for OS-level visibility.

---

- System health metrics (**CPU, memory, disk I/O, network**).

- Custom **process monitoring** (e.g., JVM, database, background jobs).

- **Disk utilization monitoring** (avoid failures due to low disk space).

- **Custom scripts & integrations** (for services running on bare metal).

- Custom dashboards for hybrid environments.

---

🔹 **How It Works**:

- Install **DataDog Agent** directly on bare metal or EC2 instances.

- Use **system checks** for resource utilization monitoring.

- Enable **log collection** for applications running on physical/virtual machines.

---
class: center, middle

*Example Use Case*: Track CPU spikes on a **bare-metal server running ElasticSearch**, correlating high CPU usage with expensive query patterns.

---
class: center, middle

### **2. Application Performance Monitoring (APM)**

---
class: center, middle

**Java Monitoring** (Spring Boot, Micronaut, Quarkus, etc.)

---
class: center, middle

📌 **Why It Matters**: Performance bottlenecks in **Spring Boot, Micronaut, Quarkus**, or other Java applications can be hard to diagnose without **tracing, profiling, and real-time insights**.

---

- **Distributed Tracing**: Trace requests across microservices.

- **Automatic Instrumentation**: Works out-of-the-box for Java (Spring Boot, Hibernate, JDBC, etc.).

- **Profiling & Flame Graphs**: Detect CPU/memory-heavy functions.

- **Service Maps**: Visual representation of how services interact.

- **Error Tracking**: Detect **slow queries, timeouts, and exceptions**.

- Code-level visibility into request performance.

- Automatic instrumentation for Java applications.

---

🔹 **How It Works**:

- Add the **DataDog Java APM Agent** to your application (`dd-java-agent.jar`).

- Configure `DD_SERVICE`, `DD_ENV`, and `DD_VERSION` for environment tagging.

- Enable **JVM metrics** (GC pauses, heap memory, thread states).

- Use **tracing without code changes** (auto-instrumentation for HTTP, database, messaging).

---
class: center, middle

*Example Use Case*: A **Spring Boot microservice** experiences intermittent slow response times. APM traces reveal that a **specific SQL query is taking 3s**, causing a performance bottleneck. Database query optimization reduces response time by 80%.

---
class: center, middle

**Database Monitoring** (AWS SQL Server on RDS)

---
class: center, middle

📌 **Why It Matters**: Database performance issues can cause **slow APIs, increased latencies, and application crashes**.

---

- Supports **AWS RDS (SQL Server)** with query performance insights.

- Query performance insights (**slow queries, deadlocks, missing indexes**).

- **Connections & Locks Monitoring**: Track open connections, transaction locks.

- **Query Execution Plans**: Analyze how SQL queries execute.

- **Replication & Backup Monitoring**: Ensure database replication works as expected.

---

🔹 **How It Works**:

- Enable **RDS Enhanced Monitoring** in AWS.

- Connect DataDog with **AWS Integration** for automatic ingestion of RDS metrics.

- Use **Query Performance Monitoring (QPM)** to track execution times.

---
class: center, middle

*Example Use Case*: A **Java-based API running on Kubernetes** is slow when querying SQL Server. DataDog detects that a **missing index** is causing a **full table scan** on a large table. Adding the index **reduces query execution time from 2.5s to 200ms**.

---
class: center, middle

### **3. Log Management**

---
class: center, middle

📌 **Why It Matters**: Centralized logging helps **correlate infrastructure, application, and security logs** for debugging and threat detection.

---

- **Live Tail Logs**: Real-time logging from Kubernetes, EC2, and Java apps.

- **Log Correlation with Traces**: See logs in the context of APM traces and metrics for debugging.

- Aggregates logs from **ElasticSearch** and Kubernetes.

---

🔹 **How It Works**:

- Configure **DataDog Log Forwarders** for AWS, Kubernetes, and on-prem logs.

- Use **Regex & pattern-based alerts** for error detection.

- Integrate with **SIEM (Security Information and Event Management)** solutions for security logs.

---
class: center, middle

### **4. Security & Compliance**

---

- **Cloud Security Posture Management (CSPM)** for AWS compliance.

- **Container security**: Monitors vulnerabilities in running containers.

- **Threat detection** for unauthorized access patterns.

- **Security Threat Detection**: Detect unauthorized access & anomalies.

- **SIEM Capabilities**: Centralized **threat intelligence & compliance monitoring**.

---
class: center, middle

*Example Use Case*: An **unauthorized API access attempt** is detected on AWS. DataDog logs show repeated **failed login attempts from an unknown IP**. Security team blocks the IP and updates IAM policies.

---
class: center, middle

#### **5. Custom Dashboards & Alerts**

---
class: center, middle

📌 **Why It Matters**: Custom dashboards provide **real-time visualization** of your entire stack.

---

- Drag-and-drop **custom dashboards**.

- **Alerting on Anomalies**: Detect unusual spikes in latency or error rates.

- **Multi-cloud & Hybrid Monitoring**: AWS, Kubernetes, and on-prem metrics in one place.

- **Integration with Slack, PagerDuty, and Webhooks**.

---
class: center, middle

*Example Use Case*: A **Java microservice on Kubernetes** starts throwing `500 errors`. DataDog detects a **correlation between high CPU usage and slow DB queries**. The team **auto-scales pods to handle increased traffic**.

---
class: center, middle

*In Short*: With DataDog, you get a **full-stack observability solution** covering **infrastructure, APM, logs, security, and databases**.

---
class: center, middle

## Navigating the DataDog UI

---
class: center, middle

The DataDog UI is designed for observability, monitoring, and troubleshooting across infrastructure, applications, and logs.

---
class: center, middle

**1. Home Dashboard**

---
class: center, middle

📌 Where to Find It: After logging in, you land on the Home Dashboard, which gives a high-level overview of system health, active alerts, and key metrics.

---

🔹 Main Sections:

Search Bar (Top) → Quickly find services, logs, or dashboards.

Navigation Menu (Left Sidebar) → Access features like APM, Logs, Infrastructure, and Security.

Quick Insights (Main Panel) → Recent issues, anomalies, and performance trends.

---
class: center, middle

✅ Use Case: Quickly check the health of your infrastructure and services.

---
class: center, middle

**2. Infrastructure Monitoring**

---
class: center, middle

📌 Where to Find It: Infrastructure → Hosts / Containers / Kubernetes

---

🔹 Key Features:

Host Map → Visual representation of hosts and their resource usage.

Live Containers → Real-time container performance monitoring.

Kubernetes View → Cluster, node, pod-level metrics.

Network Monitoring → Packet loss, latency, and traffic between services.

---
class: center, middle

✅ Use Case: Identify overloaded servers, failing Kubernetes pods, or high-latency networks.

---
class: center, middle

**3. APM (Application Performance Monitoring)**

---
class: center, middle

📌 Where to Find It: APM > Services

---

🔹 Key Features:

Service List → Shows all monitored applications.

Traces → View request flows across microservices.

Flame Graphs → Pinpoint slow functions or queries.

Service Map → Visualize how different services interact.

---
class: center, middle

✅ Use Case: Debug slow transactions in a Java-based microservice running on Kubernetes.

---
class: center, middle

**4. Log Management**

---
class: center, middle

📌 Where to Find It: Logs > Live Tail / Explorer

---

🔹 Key Features:

Live Tail → Real-time streaming of logs.

Log Explorer → Search and filter logs by service, error codes, or keywords.

Log Analytics → Create visualizations for log trends.

---
class: center, middle

✅ Use Case: Find the root cause of a failed API request by searching logs for errors.

---
class: center, middle

**5. Security & Compliance**

---
class: center, middle

📌 Where to Find It: Security > Signals / Posture

---

🔹 Key Features:

Threat Detection → Detect unauthorized access or suspicious activity.

CSPM (Cloud Security Posture Management) → Ensure AWS compliance.

Runtime Security → Detect attacks on running containers.

---
class: center, middle

✅ Use Case: Detect and alert on unauthorized SSH access to an EC2 instance.

---
class: center, middle

**6. Dashboards & Alerting**

---
class: center, middle

📌 Where to Find It: Dashboards / Monitors

---

🔹 Key Features:

Create Custom Dashboards → Visualize metrics from different sources.

Set Alerts (Monitors) → Get notified for CPU spikes, errors, or downtime.

Correlate Logs, Metrics & Traces → See full application context.

---
class: center, middle

✅ Use Case: Set up an alert for when database query latency exceeds 1s.

---
class: center, middle

**7. Integrations & Settings**

---
class: center, middle

📌 Where to Find It: Integrations / Settings

---

🔹 Key Features:

Integrate AWS, Kubernetes, SQL Server, ElasticSearch

Manage API Keys & Agents

User & Role Management

---
class: center, middle

✅ Use Case: Enable AWS RDS monitoring for SQL Server performance tracking.

---
class: center, middle

[Navigation Summarised](https://github.com/AgarwalConsulting/datadog-training/blob/master/navigation.md)

---
class: center, middle

## Metrics, Logs & Tracing

---
class: center, middle

### Java Application Monitoring with DataDog

---

Collecting logs via DataDog Agent:

```yaml
logs:
  - type: file
    path: C:\\Users\\Administrator\\datadog-training\\spring-petclinic\\logs\\*.log
    service: petstore
    source: java
```

---

Enabling DataDog APM in PetClinic:

```bash
java -javaagent:../artifacts/dd-java-agent.jar \
  -Ddd.service=petclinic-app \
  -Ddd.env=prod \
  -Ddd.version=1.0 \
  -Ddd.logs.injection=true \
  -Ddd.profiling.enabled=true \
  -Ddd.trace.sample.rate=1.0 \
  -jar target/spring-petclinic-*.jar
```

---
class: center, middle

#### Custom Application Metrics with DataDog StatsD

---

*Key Differences:* StatsD vs. dd-java-agent

| Feature           | StatsD | dd-java-agent |
|------------------|--------|--------------|
| **Purpose** | Collects **custom metrics** | Collects **traces, profiling, and logs** |
| **Best For** | Business logic metrics | Performance monitoring & debugging |
| **Code Changes Required?** | Yes (you must instrument code) | No (auto-instrumentation) |
| **Data Granularity** | Aggregated (e.g., avg, sum, percentile) | Per-request traces & profiling data |
| **Example Metrics** | Request count, queue size, custom logic | DB queries, latency per function call, error rates |
| **Integration** | Works with Datadog Agent (StatsD server) | Directly sends traces to Datadog |
| **Overhead** | Low (UDP packets) | Moderate (agent overhead for tracing) |

---
class: center, middle

#### Distributed Tracing with DataDog APM

---
class: center, middle

### Log Management with DataDog

---
class: center, middle

```yaml
  logs:
    enabled: true
```

---
class: center, middle

### APM & Distributed Tracing with DataDog

---

Enabling APM in DataDog Agent (Local/VM):

```yaml
apm_config:
  enabled: true
```

---
class: center, middle

*Exercise*: Setup distributed tracing in PetClinic

---
class: center, middle

## DataDog Dashboards

---
class: center, middle

### Built-in Dashboards

---

#### ✅ Java Application Dashboard

- **Go to** → `DataDog UI → Dashboards → New Dashboard → Import from List`

- Select **"JVM Overview"**

- This **pre-built** dashboard includes:

  - **JVM Heap & Non-Heap Memory Usage**

  - **Thread Count & Garbage Collection (GC) Activity**

  - **CPU & Memory Consumption**

  - **Active Database Connections**

---
class: center, middle

### Creating custom dashboards

---
class: center, middle

*Exercise*: Create a dashboard for PetClinic

---
class: center, middle

## Alerting

---
class: center, middle

### Built-in Monitors (Alerts)

---

### 🚨 **Built-in Alerts for Java Applications**

- **Go to** → `Monitors → New Monitor → JVM`

- Select from **pre-configured JVM alerts** like:

  - **High Heap Memory Usage**

  - **High GC Activity**

  - **Too Many Open Threads**

  - **Slow HTTP Requests**

---

class: center, middle

### Custom Alerts

---
class: center, middle

*Exercise*: Setup custom alerts

---
class: center, middle

### Log-Based vs. Metric-Based Alerts in DataDog

---

DataDog supports **two primary types of alerts**:

1️⃣ **Metric-Based Alerts** → Triggered when a metric (e.g., CPU, Memory, Request Latency) crosses a threshold.

2️⃣ **Log-Based Alerts** → Triggered based on patterns in logs (e.g., error messages, failed authentication attempts).

---

📌 **Example: Alert on Too Many `ERROR` Logs in Kubernetes Pods**

1️⃣ **Go to** → `Monitors → Create Monitor → Log Alert`

2️⃣ **Query:**

```plaintext
@log.status:error AND @kubernetes.namespace:production
```

3️⃣ **Set trigger:** If **more than 10 error logs appear in 5 minutes**

4️⃣ **Notify team** via Slack

---

📌 **Example: Detect when a Kubernetes container is killed due to Out of Memory (OOM)**

1️⃣ **Go to** → `Monitors → Create Monitor → Log Alert`

2️⃣ **Query:**

  ```plaintext
  @log.message:"OOMKilled" AND @kubernetes.namespace:production
  ```

3️⃣ **Trigger Condition:**

Alert if **OOMKilled logs appear > 3 times in 10 minutes**

---

#### Summary: Which One to Use?

| **Type**        | **Use Case** | **Example** |
|---------------|------------|------------|
| **Metric-Based Alerts** | System Performance | High CPU, Memory, Latency |
| **Log-Based Alerts** | Error Messages, Security Events | Too many errors, Unauthorized access |

---
class: center, middle

### Anomaly Detection for Unusual Spikes

---
class: center, middle

Catch sudden, unexpected changes in CPU, memory, or request latency

---
class: center, middle

Anomaly Detection in Datadog leverages machine learning (ML) algorithms to identify deviations from typical data patterns, helping to automatically spot unusual behavior in your systems without needing manual threshold configurations.

---
class: center, middle

This can significantly enhance the efficiency of your monitoring system, ensuring that problems are detected earlier and with more accuracy.

---
class: center, middle

#### How It Works

---
class: center, middle

##### Machine Learning-Based

Datadog uses unsupervised machine learning models to learn the normal behavior of your monitored metrics (e.g., CPU utilization, request latency, error rates).

---
class: center, middle

This model continuously improves over time as it gets more data, allowing it to better understand your application's typical behavior.

---
class: center, middle

##### Dynamic Baselines

Instead of using fixed thresholds for triggering alerts, Datadog creates a dynamic baseline of normal behavior by analyzing historical data.

---
class: center, middle

These baselines evolve with your environment, accounting for changes in traffic patterns, usage trends, and other variables.

---

#### Detection Methods

- **Standard Deviation**: Measures how far off the current value is from the expected value.

- **Seasonality Awareness**: Detects anomalies by considering the cyclical nature of data (e.g., traffic spikes at certain hours of the day).

- **Contextual Detection**: Detects anomalies that are out of the ordinary compared to both historical patterns and surrounding conditions.

---

#### Benefits

- **Reduced Alert Noise**: By focusing only on actual anomalies, you avoid bombarding teams with irrelevant alerts.

- **Early Problem Detection**: Identifying unusual behavior helps teams respond faster to issues that would be hard to predict using traditional thresholds.

- **Granular Detection**: It works with various types of metrics (e.g., logs, traces, custom metrics), allowing for deep insight into system health across the entire stack.

---
class: center, middle

*Example*: If your application’s error rate suddenly spikes from 0.2% to 10%, but this spike does not occur during a known maintenance window or traffic surge, Datadog’s anomaly detection system can raise an alert without any pre-defined threshold. It knows that a 10% error rate is highly unusual based on historical patterns.

---

*Steps:*

1️⃣ **Go to** `Monitors → Create Monitor → Anomaly Detection`

2️⃣ Select `Metric: system.cpu.user{service:petclinic}`

3️⃣ Choose **"Automatic Thresholds"**

---
class: center, middle

#### Built-in Anomaly Detection

DataDog also provides **automatic anomaly detection** for key metrics.

---
class: center, middle

`Monitors → Create Monitor → Anomaly Detection`

---

##### ✅ Java Application Anomalies

- **Abnormal Heap Memory Growth**

- **Unexpected Spikes in HTTP Response Time**

- **Unusual Garbage Collection Behavior**

---

📌 **How to enable?**

1️⃣ **Go to** `Monitors → Recommended Monitors → Enable Anomalies`

2️⃣ **Select Sensitivity** (`Aggressive, Moderate, Conservative`)

3️⃣ **Enable Slack, PagerDuty, or Email notifications**

---
class: center, middle

### Adaptive Alerting

---
class: center, middle

Adaptive Alerting is an advanced feature that automatically adjusts alert thresholds based on the real-time behavior of your system.

---
class: center, middle

This helps avoid alert fatigue caused by frequent false positives and reduces the need for manual tuning of alert thresholds.

---
class: center, middle

#### How Adaptive Alerting Works

---

##### Dynamic Thresholds

- Adaptive Alerting sets dynamic thresholds based on the historical data and trends of a given metric. Rather than using static thresholds (e.g., alert if CPU usage exceeds 80%), adaptive alerting adjusts this threshold based on the metric’s typical fluctuations.

- It accounts for the natural variation of metrics in your system, ensuring that alerts only trigger when the system is truly out of bounds, considering the metric's past behavior.

---

##### Trend Awareness

- Adaptive alerting understands the current trend of your metrics (e.g., increasing load, decreasing response time) and adjusts the alert threshold to follow that trend. This prevents alert fatigue when metrics are trending naturally (e.g., gradual traffic increases during peak hours).

---

##### Sensitivity Adjustment

- Depending on the volatility of the metric, Datadog automatically adjusts the sensitivity of the alert. For example, if a metric tends to fluctuate widely, the system may adjust the threshold to be more forgiving, while metrics with stable behavior may have a stricter threshold.

---

##### Alert Escalation

- If adaptive alerting detects that a metric's trend is becoming more volatile, it can escalate the severity or frequency of alerts. This ensures that any anomalies that would have gone unnoticed are caught before they become serious.

---

#### Use Cases of Adaptive Alerting

- **Fluctuating Metrics**: For metrics that naturally fluctuate over time (e.g., website traffic, CPU usage), adaptive alerting ensures that you aren't bombarded with alerts during normal surges or drops.

- **High-Traffic Systems**: In cases where traffic varies significantly (e.g., e-commerce websites during sales events), adaptive alerting ensures alerts are only triggered when there is a genuine issue.

- **Microservices or Distributed Systems**: Adaptive alerting adjusts alerting behavior when working with a large number of services, each having its own operational characteristics and potential issues.

---

#### Benefits of Adaptive Alerting

- **Minimized Alert Fatigue**: By adjusting thresholds based on data trends, adaptive alerting ensures alerts are relevant and necessary, reducing the noise that might cause teams to ignore critical warnings.

- **Automated Tuning**: It removes the need for constant tweaking of alert thresholds, saving time and effort for monitoring teams.

- **Improved Focus**: By reducing false positives, adaptive alerting allows teams to focus on the most critical issues without being overwhelmed by too many alerts.

---
class: center, middle

*Example*: Consider a scenario where a metric like web request latency spikes during peak traffic hours.

Without adaptive alerting, this could trigger an alert every day at the same time, even though it's expected behavior.

Adaptive alerting understands this and adjusts the alert thresholds during peak hours to prevent unnecessary alerts. However, if latency spikes during an off-peak hour (when it's unexpected), an alert would be triggered.

---

### **Comparison and Relationship**

- **Anomaly Detection** provides intelligent, data-driven insight into when something is outside the norm, allowing you to detect potential issues before they become critical. It looks for "unexpected" events in your data.

- **Adaptive Alerting** focuses on adjusting the sensitivity of your alerts to better match your environment's changing conditions, preventing over-alerting during normal fluctuations and ensuring alerts are useful.

---
class: center, middle

Both features work together to provide a more refined and responsive monitoring experience, helping you catch critical issues without being overwhelmed by noise.

---
class: center, middle

### **Composite Alerts in Datadog**

---
class: center, middle

**Composite Alerts** are advanced alerting rules in Datadog that **combine multiple alert conditions using boolean logic** (e.g., AND, OR, NOT). They allow you to trigger an alert **only when multiple related conditions are met**, helping reduce alert noise and prioritize truly critical issues.

---
class: center, middle

#### Key Features

---

**Logical Combination of Monitors**:

You can reference up to **10 existing monitors** (which can be metric, log, trace, or status monitors) and combine them using logical operators like:

- `AND`: All conditions must be true.

- `OR`: Any condition can be true.

- `NOT`: Invert the result of a condition.

---

**Monitor Composition**:

- Each component monitor is treated as a **named variable**, like `A`, `B`, `C`.

- You define a condition using an expression, e.g.:

  ```
  A AND (B OR C)
  ```

- This composite condition is evaluated continuously.

---

**Decoupled Alert Logic**:

- Component monitors continue to operate independently.

- The composite alert triggers **only when the logical condition is met**—you can use this to avoid noisy alerts from single-point failures.

---

#### 🛠 **Use Cases**

- **Correlated Failures**:

- Example: Alert only when **CPU usage is high AND request latency is increasing**.

  - `A = CPU > 90%`
  - `B = Latency > 500ms`
  - Composite: `A AND B`

- **Guarded Alerts**:

- Avoid false alarms by adding a **guard condition**.

  - Example: Only alert if service is failing **AND traffic volume is significant**.
  - This prevents alerting on low-traffic test environments.

---

- **Reducing Alert Fatigue**:

- Combine noisy alerts with a severity threshold to trigger alerts **only when they actually matter**.

- **System-Wide Health**:

- Alert when **multiple services** are degraded at once:

     ```
     (A AND B) OR (C AND D)
     ```

This can signal a systemic issue across a microservices environment.

---

#### 📋 **Requirements & Limitations**

**Component Monitors**:

- Must be existing monitors.

- Should have clearly defined thresholds.

- Can be **any type**: metric, log, trace, service checks, etc.

**No Nested Composites**:

- You cannot include a composite monitor **inside another composite**.

**Alerting Behavior**:

- Composite alerts will trigger and resolve **based on the logical state** of their components.

- You can configure **notifications**, **priorities**, and **escalation policies** just like regular monitors.

---

*Example*: Let’s say you’re running a web application and want to alert only if both:

- The **frontend latency** is above 1s (`Monitor A`),
- The **backend error rate** is above 5% (`Monitor B`),

You define a **composite monitor** with:

```
A AND B
```

So now, even if latency spikes due to a benign reason (e.g., client-side delay), or the backend has minor errors during low traffic, **no alert is sent** unless both degrade together—suggesting a real problem.

---

#### ✅ Benefits of Composite Alerts

- **Noise Reduction**: Avoid alerting on transient, non-critical issues.

- **Better Context**: Alert only when multiple symptoms suggest a real problem.

- **Operational Clarity**: Helps SREs, devs, and ops teams focus on the bigger picture, not isolated signals.

---
class: center, middle

## 🚨 **Incident Handling in Datadog**

---

### **Incident Detection**

Incidents are typically triggered through:

- **Monitors** (metric, log, trace, service check, SLO, etc.)

- **Composite Alerts**

- **Manual Creation** (via the Incidents UI or API)

- **Third-party Integrations** (e.g., PagerDuty, Slack)

---
class: center, middle

When a monitor enters an **alert** or **warning** state, it can trigger the automatic **creation of an incident** with a predefined severity level.

---

### **Datadog Incident Management Module**

Datadog includes a first-class **Incident Management** module, similar to PagerDuty or Opsgenie, with:

#### 🔍 **Key Features**

| Feature               | Description                                                                                         |
| --------------------- | --------------------------------------------------------------------------------------------------- |
| **Incident Timeline** | Live feed of all updates, monitors, comments, and status changes.                                   |
| **Roles**             | Assign roles like **Commander**, **Scribe**, and **Subject Matter Expert**.                         |
| **Severity Levels**   | Classify incidents from **SEV-1 to SEV-5** based on business impact.                                |
| **Status Updates**    | Post updates during the incident lifecycle (e.g., Identified, Investigating, Monitoring, Resolved). |
| **Postmortems**       | Auto-generate or manually create post-incident analysis.                                            |
| **Custom Fields**     | Tag incidents with custom metadata (e.g., affected service, impact scope).                          |

---

### **Incident Lifecycle Stages**

| Stage          | Action                                                                      |
| -------------- | --------------------------------------------------------------------------- |
| **Detection**  | Triggered by monitor alert or manual creation.                              |
| **Triage**     | Evaluate severity, assign roles, gather initial data.                       |
| **Mitigation** | Implement fixes, deploy rollbacks, coordinate across teams.                 |
| **Resolution** | Declare the incident resolved once the system stabilizes.                   |
| **Postmortem** | Analyze root cause, time-to-detect, response actions, and preventive steps. |

---
class: center, middle

## 📣 **Notification Workflows**

Datadog offers flexible, powerful **notification and escalation workflows**, integrated into every monitor and incident rule.

---

### **Notification Channels**

You can notify teams via:

- **Email**

- **Slack**

- **Microsoft Teams**

- **PagerDuty / Opsgenie / VictorOps**

- **Webhook**

- **ServiceNow, Jira**, and other ITSM tools

---

#### 👉 Each channel can be tied to

- **Alert severity**

- **Monitor tags**

- **Incident roles**

- **Routing rules**

---

### **Routing and Escalation**

Datadog supports advanced notification routing via:

- **Monitor tags**: Route alerts based on service, environment, region, etc.

- **Notification suppression**: Prevent duplicate alerts from noisy monitors.

- **Downtime scheduling**: Temporarily suppress alerts during maintenance.

- **Multi-recipient routing**: Notify different people/teams based on severity.

---

### **Templated Messages**

Monitor and incident messages can be templated using variables:

```markdown
{{value}}, {{threshold}}, {{host.name}}, {{env}}, {{service.name}}
```

These help generate detailed, actionable notifications with direct links to:

- Dashboards
- Logs
- Traces
- Affected monitors
- Runbooks or internal playbooks

---

### **Slack-Specific Features**

Slack integration goes beyond basic notifications:

- Interactive message buttons (Acknowledge, Resolve)

- Rich incident card summaries

- Channel-level alert routing

- Command-based interactions (`/datadog incident create`)

---

### **Automations and Webhooks**

- Use **webhooks** to send alerts to custom platforms (e.g., internal dashboards, chatbots).
- Use **Datadog Workflows** (automation pipelines) to:

  - Auto-create incidents

  - Send custom notifications

  - Create Jira tickets

  - Run diagnostics

---

## 🧠 **Best Practices for Incident Handling & Notifications**

| Area                     | Best Practice                                                        |
| ------------------------ | -------------------------------------------------------------------- |
| **Granular Alerts**      | Use tags and composite monitors to minimize alert noise.             |
| **Clear Ownership**      | Use incident roles and define on-call ownership.                     |
| **Predefined Templates** | Standardize incident messages for clarity and actionability.         |
| **Postmortems**          | Treat every incident as a learning opportunity.                      |
| **Integrations**         | Make use of PagerDuty/Slack/Jira for seamless response coordination. |
| **Automation**           | Automate repetitive tasks using Datadog Workflows or scripts.        |

---

## [Datadog with Kubernetes/AWS](https://datadog-with-kubernetes-and-aws.slides.AgarwalConsulting.com)

---
class: center, middle

## Troubleshooting Performance Issues with DataDog APM

---
class: center, middle

*Exercise*: Simulating and troubleshooting issues in TSRE Microservices

---
class: center, middle

Code
https://github.com/AgarwalConsulting/datadog-training

Slides
https://datadog.slides.agarwalconsulting.com
