# SplunkConfig
Run Splunk locally

```console
docker run -d -p 8000:8000 -e "SPLUNK_START_ARGS=--accept-license" -e "SPLUNK_PASSWORD=XXXXXXXX" -e "SPLUNK_LICENSE_URI=Free" -e "TZ=America/Los_Angeles" -v c:/stampslogs:/logs/a -v d:/stampslogs:/logs/b -v c:/git/mikehixsonsdc/splunkconfig:/splunkconfig --name splunk splunk/splunk:8.2.4
```

Runs Splunk on port 8000

Indexes log files in c:\StampsLogs & d:\StampsLogs

Parses log files using standard SDC format