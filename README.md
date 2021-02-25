# SplunkConfig
Configuration files for running Splunk locally

```console
docker run -d -p 8000:8000 -e "SPLUNK_START_ARGS=--accept-license" -e "SPLUNK_PASSWORD=Endicia@1" -v c:/stampslogs:/logs/a -v d:/stampslogs:/logs/b -v c:/git/mikehixsonsdc/splunkconfig:/splunkconfig --name splunk splunk/splunk:latest
```

Runs Splunk on port 8000

Bind Mount /logs/a to c:/stampslogs

Bind Mount /logs/b to d:/stampslogs

Bind Mount /splunkconfig to c:/git/mikehixsonsdc/splunkconfig


The first time running, execute the following to configure.

```console
docker exec -it splunk /splunkconfig/script/splunk-reset.sh
```

From the UI
Settings > Licensing > Change License Group > Free License

If some logs are not showing up try fixing the permissions on the bind mounts:

```console
sudo chmod -R a+rwx /logs
```
