# SplunkConfig
Configuration files for running Splunk locally

docker run -d -p 8000:8000 -e "SPLUNK_START_ARGS=--accept-license" -e "SPLUNK_PASSWORD=Endicia@1" -v c:/stampslogs:/logs/a -v d:/stampslogs:/logs/b -v c:/git/mikehixsonsdc/splunkconfig:/splunkconfig --name splunk splunk/splunk:latest

Runs Splunk on port 8000

Bind Mount /logs/a to c:/stampslogs

Bind Mount /logs/b to d:/stampslogs

Bind Mount /splunkconfig to c:/git/mikehixsonsdc/splunkconfig
