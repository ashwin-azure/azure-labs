# 📦 Project 6: Azure Backup Reporting, Alerts & Compliance Monitoring

## 🔍 Overview

This project focuses on enhancing **Azure VM backup reliability** and visibility using:

- Azure Recovery Services Vault
- Diagnostic Settings → Log Analytics
- Alert Rules
- PowerShell automation for weekly reporting

## 🎯 Objective

Implement a centralized monitoring and alerting system for backup jobs and generate compliance reports for audits.

## ⚙️ Tech Stack

- Azure Recovery Services Vault
- Log Analytics Workspace
- Azure Monitor Alerts
- PowerShell Scripting
- Azure Portal

---

## 🧰 Step-by-Step Implementation

### ✅ Step 1: Configure Backup Alerts

1. Go to **Recovery Services Vault → Alerts and Events**
2. Click **Backup Alerts (Preview)** or Diagnostics Settings (legacy).
3. Enable alert for:
   - Backup job failures
   - Backup job warnings
   - Alerts by severity (Critical)

### ✅ Step 2: Push to Log Analytics

1. Enable **Diagnostic Settings** for your vault.
2. Forward logs to:
   - **Log Analytics Workspace**
   - Retain logs for 30–90 days

📸 ![Diagnostic Settings](./backup-alerts-screenshot.png)

---

### ✅ Step 3: Setup Alert Rules

1. Go to **Azure Monitor → Alerts**
2. Create rule for:
   - **Metric signal**: `Backup Job Status`
   - Condition: `Status equals Failed`
3. Notify via:
   - Email
   - ITSM integration (optional)

---

### ✅ Step 4: Export Backup Reports via Script

In `scripts/export-backup-report.ps1`, include PowerShell to export the backup status of all VMs:

```powershell
# Example PowerShell: Export backup jobs
Get-AzRecoveryServicesBackupJob -Status Completed | Export-Csv backup-report.csv
