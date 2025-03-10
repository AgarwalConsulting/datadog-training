# On Windows

## Using PowerShell

```shell
Start-Process -Wait msiexec -ArgumentList '/qn /i "https://s3.amazonaws.com/ddagent-windows-stable/datadog-agent-7-latest.amd64.msi" APIKEY="<api-key-shared-separately>" SITE="datadoghq.com"'
```

## Using Installer

```bash
wget https://s3.amazonaws.com/ddagent-windows-stable/datadog-agent-7-latest.amd64.msi
```

During installation, follow the prompts and add your selected API key and the specified Region.

```toml
API Key: <api-key-shared-separately>
Region: datadoghq.com
```

## Using Chocolatey

```Shell
choco install -ia="APIKEY=""<api-key-shared-separately>"" SITE=""datadoghq.com"" HOSTNAME=""my_hostname"" TAGS=""mytag1,mytag2""" datadog-agent
```
