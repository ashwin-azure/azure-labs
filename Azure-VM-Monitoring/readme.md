# 🚀 Project 4: Monitor Azure VMs with Log Analytics, Alerts, JIT & Bastion

## 🔍 Overview
In this project, I implemented a real-world Azure monitoring and access control solution by combining:
- Azure Monitor (CPU/Activity Alerts)
- Log Analytics (Insights & Logs)
- Just-in-Time (JIT) VM Access
- Azure Bastion (Browser-based RDP)

## 🎯 Objective
Ensure that all production VMs are:
✅ Continuously monitored  
✅ Secure from unauthorized RDP access  
✅ Alerted for high CPU and delete operations  
✅ Auditable via logs and dashboards

---

## 🛠️ Tools & Services Used
- Azure Monitor
- Log Analytics Workspace
- Azure Alerts (Metric & Activity Logs)
- Microsoft Defender for Cloud (JIT)
- Azure Bastion
- Azure Portal

---

## 🧪 Implementation Steps

### 🔹 Step 1: Setup Log Analytics Workspace
- Created LA workspace under the same region as VM
- Linked workspace with VM using “Enable Insights”

### 🔹 Step 2: Enable VM Insights
- Navigated to VM → Monitoring → Insights → Enabled
- Verified heartbeats & performance metrics flow into Logs

### 🔹 Step 3: Configure Alerts
- **CPU Alert**: Alert when CPU > 80% for 5 minutes
- **Activity Log Alert**: Trigger alert when any resource is deleted

### 🔹 Step 4: Enable Just-in-Time (JIT) Access
- Enabled JIT via Defender for Cloud
- Allowed RDP access for only 3 hours from specific IPs

### 🔹 Step 5: Secure Access using Azure Bastion
- Created Azure Bastion in same VNet
- Disabled public IP from VM
- Verified login via Bastion browser session

---

## ✅ Result
- VM is protected from brute force or unmonitored access
- Real-time alerts keep admin notified of performance and risk
- No public IP exposure, enhancing compliance posture

---

## 💼 Real-World Application
- Used in healthcare and finance environments to secure production workloads
- Reduces exposure to lateral movement and port scanning attacks
- Enables proactive resource management via automated alerts

---

## 📚 Learnings
- Using Log Analytics and KQL for performance tracking
- Setting up alerts for preventive maintenance
- Implementing secure remote access strategy using Bastion and JIT

---

## 📁 GitHub Structure

