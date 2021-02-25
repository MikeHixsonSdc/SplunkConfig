#!/bin/bash

# Set permissions on config locations so we can write
sudo chmod -R go+rwx $SPLUNK_HOME/etc/system/
sudo chmod -R go+rwx $SPLUNK_HOME/etc/apps/search/

# Copy config files
cp -r ../config/. $SPLUNK_HOME/etc/system/local/

# Copy config files to search application
cp -r ../search_config/. $SPLUNK_HOME/etc/apps/search/local/

# Restart
sudo $SPLUNK_HOME/bin/splunk stop
yes | sudo $SPLUNK_HOME/bin/splunk clean eventdata
sudo $SPLUNK_HOME/bin/splunk start