#!/bin/bash

# The docker image doesnt have tzdata package, therefore no concept of timezones
# https://www.reddit.com/r/Splunk/comments/loktmw/time_wrong_even_with_the_correct_timezone_set_up/
#sudo microdnf -y --nodocs update tzdata
#sudo microdnf -y --nodocs reinstall tzdata

# Set permissions on config locations so we can write
sudo chmod -R go+rwx $SPLUNK_HOME/etc/system/
sudo chmod -R go+rwx $SPLUNK_HOME/etc/apps/search/

# Copy config files
cp -r /splunkconfig/config/. $SPLUNK_HOME/etc/system/local/

# Copy config files to search application
cp -r /splunkconfig/search_config/. $SPLUNK_HOME/etc/apps/search/local/

# Restart
sudo $SPLUNK_HOME/bin/splunk stop
yes | sudo $SPLUNK_HOME/bin/splunk clean eventdata
sudo $SPLUNK_HOME/bin/splunk start