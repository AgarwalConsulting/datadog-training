# Generate Logs

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process .\generate.ps1

# (or)

powershell -executionpolicy bypass -File .\generate.ps1
```

Writes logs into a file at: `C:\Logs\myapp.log`
