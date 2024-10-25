# SplunkConfig
Run Splunk locally

Run from linux so that the volume paths in the compose file work correctly.

```console
docker-compose up -d
```

Runs Splunk on port 8000
http://localhost:8000

user: admin
password: endicia@1

Indexes log files in c:\StampsLogs & d:\StampsLogs

Parses log files using standard SDC format
