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

Code
https://github.com/AgarwalConsulting/datadog-training

Slides
https://datadog.slides.agarwalconsulting.com
