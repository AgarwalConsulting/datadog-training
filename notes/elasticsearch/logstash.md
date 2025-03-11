# Forward ElasticSearch Logs via Logstash

📌 **If you already use Logstash, you can forward logs to DataDog.**

## Add DataDog Output Plugin in Logstash

Modify `logstash.conf`:

```yaml
output {
  http {
    url => "https://http-intake.logs.datadoghq.com/v1/input/<YOUR_API_KEY>"
    http_method => "post"
    format => "json"
    content_type => "application/json"
    codec => "json"
  }
}
```

Restart Logstash:

```bash
sudo systemctl restart logstash
```

✅ **Now, logs are forwarded from Logstash to DataDog.**
