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

### [On Kubernetes](https://docs.datadoghq.com/containers/kubernetes/)

---
class: center, middle

### [DataDog Client Libraries](https://docs.datadoghq.com/developers/community/libraries/)

---
class: center, middle

### **Integrating with AWS**

.content-credits[https://docs.datadoghq.com/integrations/amazon_web_services/]

---
class: center, middle

#### **Integrating DataDog with AWS RDS (SQL Server, PostgreSQL, MySQL, etc.)**

---

#### **Steps:**

1️⃣ **Go to AWS Integration in DataDog**

- Navigate to **Integrations** → **AWS** in DataDog UI.
- Click **"Install Integration"** (if not installed).

2️⃣ **Set Up an IAM Role for DataDog**

- Create an **IAM Role** in AWS with a **CloudWatch Read-Only Policy**.
- Attach the following policies:
  - `CloudWatchReadOnlyAccess`
  - `AWSRDSReadOnlyAccess`
- Add a **trust policy** to allow DataDog to assume this role.

---

3️⃣ **Link DataDog to AWS**

- In DataDog, go to **AWS Integration** settings.
- Enter the **IAM Role ARN** created earlier.
- Select **RDS service** for monitoring.

4️⃣ **Enable Enhanced RDS Monitoring (Optional, Recommended)**

- In AWS Console, go to **RDS → Modify DB Instance**.
- Enable **Enhanced Monitoring** and select a **monitoring role**.
- Choose **Granularity** (1s, 5s, 10s, etc.).

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

### Monitoring Kubernetes & Container Metrics with DataDog

---

#### **🔹 Node Metrics**

- `kubernetes.cpu.usage.total` → CPU usage
- `kubernetes.memory.usage` → Memory usage
- `kubernetes.filesystem.usage` → Disk usage

#### **🔹 Pod & Container Metrics**

- `kubernetes.containers.running` → Running containers
- `kubernetes.pods.ready` → Number of ready pods
- `kubernetes.container.cpu.usage` → Container CPU
- `kubernetes.container.memory.usage` → Container memory

#### **🔹 Network Metrics**

- `kubernetes.network.rx_bytes` → Incoming network traffic
- `kubernetes.network.tx_bytes` → Outgoing network traffic

---
class: center, middle

#### Monitoring Kubernetes Events & Logs

---
class: center, middle

`kubeStateMetricsEnabled: true`

---
class: center, middle

#### Container-Level Monitoring (Docker & Kubernetes)

---
class: center, middle

```yaml
  processAgent:
    enabled: true
  containerRuntime:
    collectContainerCount: true
```

---

Key Container Metrics:

- `container.cpu.usage` → CPU % used

- `container.memory.usage` → Memory used

- `container.disk.read_bytes` → Disk reads

- `container.network.bytes_sent` → Network usage

---
class: center, middle

#### Kubernetes Service Monitoring

Monitor high-level service health, request latency, and error rates

---
class: center, middle

```yaml
  apm:
    enabled: true
    env: production
```

---

Key Service Metrics:

- `service.response.time` → API latency

- `service.error.rate` → % of failed requests

- `service.request.count` → Total request count

---

### AWS RDS Metrics shipped via AWS Integration

- `aws.rds.cpuutilization`

- `aws.rds.database_connections`

- `aws.rds.query_execution_time`

---
class: center, middle

### Log Management with DataDog

---
class: center, middle

```yaml
  logs:
    enabled: true
    containerCollectAll: true  # Collect all container logs
```

---
class: center, middle

#### Collecting AWS RDS Logs

---

##### Step 1: Enable RDS Log Export to CloudWatch:

1️⃣ Open **AWS Console → RDS → Databases**

2️⃣ Select your **RDS Instance**

3️⃣ Go to **Log Exports** and enable:

- **General Logs**
- **Slow Query Logs**
- **Error Logs**

4️⃣ Click **Save Changes**

---

##### Step 2: Forward CloudWatch Logs to DataDog

Use the AWS Lambda function provided by DataDog:

```bash
datadog-forwarder --function-name datadog-logs-forwarder
```

---
class: center, middle

#### ElasticSearch Log Integration with DataDog

---

🔹 Option 1: Enable ElasticSearch Logs on EKS & EC2

🔹 Option 2: Forward ElasticSearch Logs via Logstash

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

Enabling APM in DataDog Agent (Kubernetes Helm)

```yaml
datadog:
  apm:
    enabled: true
  logs:
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

#### ✅ Kubernetes Dashboard (EKS & EC2)

- **Go to** → `Dashboards → New Dashboard → Kubernetes`

- DataDog provides a **default Kubernetes dashboard**:

  - **Pod & Node CPU & Memory Usage**

  - **Pod Restarts & CrashLoops**

  - **Network Traffic**

  - **Kube API Server Requests**

---

#### ✅ **AWS Resource Dashboard**

- **Go to** → `Dashboards → New Dashboard → AWS`

- This includes built-in dashboards for:

  - **EC2 Instances (CPU, Memory, Disk IO)**

  - **RDS Query Performance & Slow Queries**

  - **S3 Storage & Errors**

  - **Lambda Execution Time & Invocations**

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

### 🚨 **Built-in Kubernetes Alerts**

- **Go to** → `Monitors → New Monitor → Kubernetes`

- Select pre-built alerts for:

  - **Node CPU or Memory Pressure**

  - **Pod CrashLoopBackOff**

  - **High API Server Latency**

  - **Failed Container Starts**

---

### 🚨 **Built-in AWS Alerts**

- **Go to** → `Monitors → New Monitor → AWS`

- Select from **default AWS alerts**, including:

  - **EC2 CPU Spikes**

  - **RDS High Query Latency**

  - **S3 5xx Errors**

  - **Lambda Execution Failures**

---

class: center, middle

### Custom Alerts

---
class: center, middle

*Exercise*: Setup custom alerts for PetClinic

---
class: center, middle

### Bonus: Anomaly Detection for Unusual Spikes

---
class: center, middle

Catch sudden, unexpected changes in CPU, memory, or request latency

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

##### ✅ Kubernetes Anomalies

- **Pods Restarting More Than Usual**

- **Sudden Increase in API Latency**

- **Container CPU Spikes Compared to Baseline**

---

##### ✅ AWS Anomalies

- **EC2 CPU or Network Traffic Sudden Changes**

- **RDS Query Duration Irregular Spikes**

- **S3 Unexpected High Error Rate**

---

📌 **How to enable?**

1️⃣ **Go to** `Monitors → Recommended Monitors → Enable Anomalies`

2️⃣ **Select Sensitivity** (`Aggressive, Moderate, Conservative`)

3️⃣ **Enable Slack, PagerDuty, or Email notifications**

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

#### Troubleshooting Performance Issues with DataDog APM

---
class: center, middle

*Exercise*: Simulating and troubleshooting issues in PetClinic

---
class: center, middle

##### K8s Specific Troubleshooting

---
class: center, middle

## Kubernetes Network Performance Monitoring with DataDog

---
class: center, middle

`datadog.networkMonitoring.enabled`

---
class: center, middle

### **✅ Essential Network Performance Metrics**

---

| **Metric** | **Description** | **DataDog Metric Name** |
|------------|---------------|------------------|
| **Pod Network Traffic** | Measures ingress/egress traffic for pods | `kubernetes.pod.network.tx_bytes`, `kubernetes.pod.network.rx_bytes` |
| **Node Network Traffic** | Measures node-level network usage | `kubernetes.node.network.tx_bytes`, `kubernetes.node.network.rx_bytes` |
| **API Server Latency** | Tracks latency for requests to Kubernetes API | `kubernetes.apiserver.request.latency` |
| **DNS Resolution Time** | Measures Kubernetes DNS query performance | `kubernetes.dns.request_duration` |
| **Service Connectivity** | Monitors network reachability between services | `datadog.network.tcp.response_time` |
| **Packet Drops** | Detects lost packets due to network congestion | `kubernetes.network.dropped_packets` |
| **TCP Retransmissions** | Measures TCP retransmissions due to network issues | `kubernetes.network.tcp.retransmits` |

---
class: center, middle

*Exercise*: Creating a Network Performance Dashboard for K8s

---
class: center, middle

### Kubernetes Network Performance Monitoring with CNI & DataDog

---
class: center, middle

What is CNI in Kubernetes?

---

**Container Network Interface (CNI)** is the **networking layer** in Kubernetes responsible for:

✔ Assigning **IP addresses** to Pods

✔ Setting up **routes** for inter-pod communication

✔ Enforcing **network policies** for security

✔ Handling **network overlays** (if applicable)

---

**Popular CNIs** & How They Work:

| **CNI** | **Type** | **How it Works** |
|---------|---------|----------------|
| **Calico** | L3 | Uses BGP for pod networking & security policies |
| **Cilium** | L3/L7 | eBPF-based for efficient networking & observability |
| **Flannel** | L2 | Simple overlay networking with VXLAN |
| **AWS VPC CNI** | L3 | Assigns ENIs (Elastic Network Interfaces) directly in AWS VPC |
| **Weave** | L2/L3 | Uses VXLAN & IP routing for networking |

---
class: center, middle

📌 **Why This Matters?** Different CNIs expose **different metrics** that impact network monitoring.

---
class: center, middle

#### **📌 CNI-Specific Monitoring Strategies**

---

##### **✅ Cilium CNI Monitoring**

📌 **Monitor eBPF-based networking, L7 security, and service connectivity.**

1️⃣ **Enable Cilium Hubble for Observability**
```sh
helm upgrade --install cilium cilium/cilium \
  --set hubble.enabled=true \
  --set hubble.relay.enabled=true \
  --set hubble.ui.enabled=true
```

2️⃣ **Metrics in DataDog**

- **Packet Drops**: `cilium.policy.drops`
- **L7 HTTP Request Latency**: `cilium.http.request_duration_seconds`
- **Service Connectivity**: `cilium.endpoint.state`

3️⃣ **Create Alert: High Network Latency Between Services**

```plaintext
avg:cilium.http.request_duration_seconds{*} by {service} > 0.5
```

🚨 **Triggers if HTTP request latency between services is >500ms.**

---

##### **✅ AWS VPC CNI Monitoring**

📌 **Monitor AWS ENI allocation, bandwidth limits & dropped packets.**

1️⃣ **Enable AWS VPC CNI Metrics Collection**

```sh
kubectl set env daemonset/aws-node -n kube-system ENABLE_VPC_CNI_PROMETHEUS=true
```

2️⃣ **Metrics in DataDog**

- **ENI Allocation**: `aws.vpc_cni.enis_allocated`
- **IP Addresses Per ENI**: `aws.vpc_cni.ipv4_addresses_per_eni`
- **Packet Drops**: `aws.vpc_cni.dropped_packets`

3️⃣ **Create Alert: Running Out of ENIs**

```plaintext
avg:aws.vpc_cni.enis_allocated{*} by {region} > 80
```

🚨 **Triggers if more than 80% of ENIs are allocated.**

---
class: center, middle

## Query Performance Monitoring (QPM) in SQL Server

---
class: center, middle

### **✅ Enable Query Execution Monitoring**

---

1️⃣ **Enable `sys.dm_exec_requests` Query Collection**

Edit `/etc/datadog-agent/conf.d/sqlserver.d/conf.yaml`:

```yaml
query_metrics:
  - name: "long_running_queries"
    query: |
      SELECT session_id, start_time, total_elapsed_time/1000 as duration_ms, command, database_id
      FROM sys.dm_exec_requests
      WHERE total_elapsed_time > 5000
    columns:
      - name: session_id
        type: tag
      - name: start_time
        type: tag
      - name: duration_ms
        type: gauge
      - name: command
        type: tag
```

2️⃣ **Restart DataDog Agent**

```sh
sudo systemctl restart datadog-agent
```

✅ **Now you can track long-running queries in DataDog!**

---
class: center, middle

## **🚀 DataDog AWS Integration Best Practices**

---
class: center, middle

Setting up **DataDog with AWS** requires best practices for **security, cost optimization, and effective monitoring**.

---

✔ **IAM Role Setup & Security Best Practices**

✔ **Optimizing AWS API Calls (Cost & Performance)**

✔ **Key AWS Services to Monitor**

✔ **Dashboards & Alerts Best Practices**

✔ **Anomaly Detection & Auto-Tagging**

✔ **Managing Multi-Account AWS Monitoring**

---

### **✅ Use IAM Role-Based Authentication**

🔹 Instead of static access keys, **create an IAM Role** for DataDog with cross-account access.

🔹 This improves **security** and avoids credential leaks.

### **✅ Least Privilege IAM Permissions**

Assign only the necessary permissions. **Use AWS Managed Policies**

---
class: center, middle

✅ **Avoid using `AdministratorAccess`** to reduce security risks.

---

### **✅ Use AWS Tag-Based Filtering**

Instead of pulling **all AWS services**, use tags to filter resources.

📌 **Example: Allow only resources with `Environment=Production`**

1️⃣ Go to **DataDog → AWS Integration**

2️⃣ Under **"Limit metrics collection by tag"**, add:
   ```yaml
   Environment:Production
   Service:WebApp
   ```

✅ This reduces unnecessary API calls and cost!

---

### **✅ Reduce High-Frequency API Calls**

Some AWS API calls (like `DescribeInstances`) can be expensive.

📌 **Best Practices:**

- **Use CloudWatch Metrics** instead of `DescribeInstances` for EC2 metrics.

- **Enable CloudWatch Metric Streams** for real-time, cost-efficient monitoring.

- **Disable Unused AWS Services** in DataDog integration.

---

### **✅ EC2 & Auto Scaling**

✔ Track **CPU, Memory, Disk, Network** (`aws.ec2.cpuutilization`)

✔ Monitor **Auto Scaling events**

✔ Alert on **high CPU, memory exhaustion, or instance failures**

---

### **✅ RDS (MySQL, PostgreSQL, SQL Server)**

✔ **Key Metrics:**

- CPU Utilization (`aws.rds.cpuutilization`)

- Active Connections (`aws.rds.database_connections`)

- Read/Write Latency (`aws.rds.read_latency`)

---

| **Metric** | **Description** | **DataDog Metric** |
|------------|---------------|------------------|
| **CPU Utilization** | Tracks SQL Server CPU load | `aws.rds.cpuutilization` |
| **Memory Usage** | Measures available memory | `aws.rds.freeablememory` |
| **Read/Write Latency** | Disk I/O performance | `aws.rds.read_latency`, `aws.rds.write_latency` |
| **Database Connections** | Active connections count | `aws.rds.database_connections` |
| **Deadlocks** | Number of deadlocks detected | `aws.rds.deadlocks` |
| **Long-Running Queries** | Tracks slow queries | `sqlserver.queries.slow` |
| **Lock Wait Time** | Time spent waiting for locks | `sqlserver.lock_waits` |

---

### **✅ Kubernetes (EKS) & Containers**

✔ **Monitor Cluster Health (`aws.eks.node_count`)**

✔ **Track Pod CPU/Memory Usage**

✔ **Enable Log Collection with AWS FluentBit**

---

### **✅ Lambda & Serverless**

✔ Monitor **Cold Start Latency (`aws.lambda.duration`)**

✔ Track **Invocation Errors (`aws.lambda.errors`)**

---
class: center, middle

## **🔒 Security & Incident Response in DataDog**

---
class: center, middle

DataDog provides **security monitoring, anomaly detection, and incident response tools** to detect and mitigate threats in cloud environments.

---

✔ **Security Monitoring for AWS, Kubernetes, and EC2**

✔ **Threat Detection with Logs & Metrics**

✔ **Anomaly Detection & Alerts**

✔ **Incident Response & Forensics**

✔ **Compliance & Audit Logging**

---

### **✅ Enable Security Monitoring in DataDog**

Security monitoring requires **DataDog Security Monitoring** (SIEM) and **log ingestion**.

📌 **To enable security monitoring:**

1️⃣ **Go to** `Security → Security Signals`

2️⃣ **Enable CloudTrail, VPC Flow Logs, Kubernetes Logs, and System Logs**

3️⃣ Set up **Security Rules** to detect unauthorized access

---

📌 **Example: Detect AWS Root User Login**

1️⃣ **Go to** `Security → Rules`
2️⃣ Create a new rule:

```yaml
security.rule:
  name: "AWS Root User Login"
  query: 'service:aws.cloudtrail @userIdentity.type:Root'
  severity: "high"
  notification: "@security-team"
```

🚨 **Triggers an alert if AWS root user logs in.**

---

### **✅ Security Log Monitoring**

Collect logs from:

- **AWS CloudTrail** (IAM activity, unauthorized access)

- **VPC Flow Logs** (network anomalies)

- **EC2 & Kubernetes Logs** (process anomalies)

- **Application Logs** (authentication failures)

---

📌 **Example: Monitor Unauthorized SSH Access on EC2**

1️⃣ **Enable log collection:**

```yaml
logs_enabled: true
```

2️⃣ **Create a log filter rule:**

```yaml
logs:
  - type: file
    path: /var/log/auth.log
    source: ssh
    service: security
```

3️⃣ **Set up a Security Rule:**

```yaml
security.rule:
  name: "Unauthorized SSH Access"
  query: 'service:ssh @status:failed'
  severity: "medium"
  notification: "@security-team"
```

🚨 **Triggers an alert when an SSH login fails multiple times.**

---

### **✅ Enable Anomaly Detection**

1️⃣ **Go to** `Monitors → New Monitor → Anomaly Detection`

2️⃣ Choose **metrics like CPU spikes, network traffic surges, or unauthorized logins**

3️⃣ Set up thresholds for normal vs. abnormal behavior

---

📌 **Example: Detect Unusual Traffic in Kubernetes**

```yaml
avg:kubernetes.network.tx{namespace:prod} by {pod} > anomaly("basic", 2, direction=above)
```

🚨 **Triggers an alert when outbound traffic spikes unexpectedly.**

---

📌 **Common Security Anomaly Alerts**

| **Threat** | **Metric/Log** | **DataDog Alert** |
|------------|--------------|------------------|
| **DDoS Attack** | High incoming traffic | `aws.vpc.network_in > anomaly(3x)` |
| **Brute Force SSH Attack** | Failed SSH logins | `service:ssh @status:failed > 5 times in 10 min` |
| **Unauthorized API Access** | AWS CloudTrail logs | `@eventName:AuthorizeSecurityGroupIngress` |
| **Container Escape Attempt** | K8s audit logs | `kubernetes.audit @event:exec into privileged container` |

---
class: center, middle

✅ **Security anomalies are automatically flagged in DataDog.**

---

### **✅ Set Up Incident Management in DataDog**

📌 **Steps to Create an Incident Response Workflow:**

1️⃣ **Go to** `Incident Management → Create Incident`

2️⃣ **Define Severity Levels:**

- 🔴 **Critical** (Service down, data breach)
- 🟠 **High** (Unauthorized access, API abuse)
- 🟡 **Medium** (Suspicious login attempt)

3️⃣ **Assign Teams** (Security, DevOps, IT)

4️⃣ **Attach Logs, Metrics, Dashboards for Analysis**

---

📌 **Example: Security Incident Response for EC2 Compromise**

1️⃣ **Detect Unauthorized Access:**

- **Alert Triggered:** "Root login detected from unknown IP"

2️⃣ **Investigate Logs & Network Traffic:**

- **Check CloudTrail logs:**

```sh
aws cloudtrail lookup-events --lookup-attributes AttributeKey=EventName,AttributeValue=ConsoleLogin
```

- **Inspect EC2 network traffic:**

```sh
aws ec2 describe-flow-logs
```

3️⃣ **Mitigate the Threat:**

- 🚨 **Revoke compromised IAM keys**
- 🔒 **Restrict security group rules**
- 🛑 **Quarantine the instance**

---

### **✅ Enable AWS Compliance Monitoring**

📌 **To enable compliance monitoring:**

1️⃣ **Go to** `Security → Compliance Monitoring`

2️⃣ Enable **CIS AWS Foundations Benchmark**

3️⃣ Monitor for:

- **Public S3 Buckets**

- **Unencrypted Databases**

- **Overly Permissive IAM Roles**

---

📌 **Example: Detect Publicly Accessible S3 Buckets**

```yaml
security.rule:
  name: "S3 Bucket Publicly Accessible"
  query: 'service:aws.s3 @acl:public-read OR @acl:public-write'
  severity: "critical"
  notification: "@security-team"
```

🚨 **Triggers an alert when an S3 bucket is exposed to the public.**

---

📌 **Example: Detect Unrestricted Security Groups**

```yaml
security.rule:
  name: "Security Group Open to the World"
  query: 'service:aws.ec2 @IpPermissions:0.0.0.0/0'
  severity: "high"
  notification: "@security-team"
```

🚨 **Notifies if an EC2 security group is open to the public.**

---
class: center, middle

Code
https://github.com/AgarwalConsulting/datadog-training

Slides
https://datadog.slides.agarwalconsulting.com
