# Creating a Network Performance Dashboard

📌 **Track key Kubernetes network metrics in a custom dashboard.**

## **✅ Dashboard Widgets & Metrics**

| **Widget** | **Metric** |
|------------|---------------------------|
| **Pod Network Traffic** | `kubernetes.pod.network.tx_bytes`, `kubernetes.pod.network.rx_bytes` |
| **Node Network Traffic** | `kubernetes.node.network.tx_bytes`, `kubernetes.node.network.rx_bytes` |
| **TCP Retransmissions** | `kubernetes.network.tcp.retransmits` |
| **Packet Drops** | `kubernetes.network.dropped_packets` |
| **API Server Latency** | `kubernetes.apiserver.request.latency` |
