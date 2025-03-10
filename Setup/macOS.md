# On macOS

## Via Script

Install using: `DD_API_KEY=<api-key-shared-separately> DD_SITE="datadoghq.com" bash -c "$(curl -L https://install.datadoghq.com/scripts/install_mac_os.sh)"`

Config file: /opt/datadog-agent/etc/datadog.yaml

```yaml
api_key: <api-key-shared-separately>
site: datadoghq.com
```

## Via Homebrew

```bash
brew install --cask datadog-agent
```

You will need to update `/opt/datadog-agent/etc/datadog.yaml` and replace
`APIKEY` with your api key
