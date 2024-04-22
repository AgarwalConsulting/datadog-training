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

Monitoring is an action you take. Monitoring a system, an app, a certain metric to pick up on anomalies that might indicate an issue. It answers the question “Is this system working correctly?”

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

The concept of SRE starts with the idea that metrics should be closely tied to business objectives. We use several essential tools—SLO, SLA and SLI—in SRE planning and practice.

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

- And *complex* Pricing

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

.content-credits[https://github.com/AgarwalConsulting/datadog-training/blob/master/Setup.md]

---
class: center, middle

#### [Other Integrations](https://app.datadoghq.com/signup/agent)

---
class: center, middle

Infrastructure, Metrics, Dashboards and Logs...

---
class: center, middle

#### Understanding the Windows Agent

.content-credits[https://docs.datadoghq.com/agent/basic_agent_usage/windows]

---
class: center, middle

and it's configuration

.content-credits[https://docs.datadoghq.com/agent/configuration/agent-configuration-files/?tab=agentv6v7]

---
class: center, middle

#### Monitoring windows Performance counters

.content-credits[https://www.datadoghq.com/blog/windows-performance-counters-datadog/]

---
class: center, middle

Code
https://github.com/AgarwalConsulting/datadog-training

Slides
https://datadog.slides.agarwalconsulting.com
