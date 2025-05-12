# Log output path
$logFile = "C:\Logs\myapp.log"

# Ensure the log directory exists
if (-not (Test-Path -Path (Split-Path $logFile))) {
    New-Item -ItemType Directory -Path (Split-Path $logFile) -Force
}

# Define possible log levels and users
$levels = @("INFO", "WARN", "ERROR")
$users = @("om", "alice", "bob", "charlie")
$ips = @("192.168.0.12", "10.0.0.15", "172.16.5.10")
$errors = @(
    "Failed to connect to database: timeout",
    "User authentication failed: invalid credentials",
    "Payment gateway timeout",
    "Low disk space on drive D:",
    "Configuration file missing"
)

# Continuous log generation
while ($true) {
    $now = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $level = Get-Random -InputObject $levels

    switch ($level) {
        "INFO" {
            $user = Get-Random -InputObject $users
            $ip = Get-Random -InputObject $ips
            $message = "User '$user' logged in from IP $ip"
        }
        "WARN" {
            $message = Get-Random -InputObject $errors
        }
        "ERROR" {
            $message = Get-Random -InputObject $errors
        }
    }

    $logLine = "[$now] $level  $message"
    Add-Content -Path $logFile -Value $logLine

    # Wait 1–3 seconds
    Start-Sleep -Seconds (Get-Random -Minimum 1 -Maximum 4)
}
