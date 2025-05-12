# Setup

## ✅ **Part 1: Change Hostname on Windows**

You can change the hostname (computer name) via GUI or Command Line:

### **Option A: Using Command Line (PowerShell or CMD as Administrator)**

```powershell
Rename-Computer -NewName "NEW-HOSTNAME" -Force -Restart
```

> Replace `"NEW-HOSTNAME"` with your desired hostname.
> The `-Restart` flag automatically restarts the system to apply the change.

### **Option B: Using the GUI**

1. Open **Settings > System > About**.
2. Click **Rename this PC**.
3. Enter the new name and click **Next**.
4. Click **Restart now** to apply the change.

---

## ✅ **Part 2: Install the Datadog Agent on Windows**

### **Step 1: Download the Agent Installer**

Go to: [https://app.datadoghq.com/account/settings#agent](https://app.datadoghq.com/account/settings#agent)

```bash
wget https://s3.amazonaws.com/ddagent-windows-stable/datadog-agent-7-latest.amd64.msi
```

Choose Windows and download the `EXE` installer.

### **Step 2: Install Using the Command Line (Recommended for Automation)**

Open **PowerShell or CMD as Administrator**, then run:

```powershell
start /wait msiexec /i "datadog-agent-7-latest.amd64.msi" ^
APIKEY=<YOUR_DATADOG_API_KEY> ^
TAGS="env:prod,team:infra" ^
HOSTNAME=<NEW-HOSTNAME> ^
/qn
```

* Replace `<YOUR_DATADOG_API_KEY>` with your actual Datadog API key.
* Replace `<NEW-HOSTNAME>` if you want to override the default hostname.
* `TAGS` are optional but useful for filtering in Datadog.

### **Step 3: Verify the Agent**

After installation:

```powershell
"C:\Program Files\Datadog\Datadog Agent\bin\agent.exe" status
```

This will show agent status, checks, and logs.
