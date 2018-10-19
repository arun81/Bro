#!/bin/sh

# Copy the files into place
cp -r etc/* /etc
cp -r usr/* /usr

# Set the capabilities of Bro
setcap cap_net_raw,cap_net_admin=eip /usr/bin/bro
setcap cap_net_raw,cap_net_admin=eip /usr/bin/capstats

# Update the log directory permissions
chown -R logstash:logstash /var/log/bro/

# Install the bro configuration files
su logstash -c /usr/bin/broctl install

# Run bro
#su logstash -c /usr/bin/broctl start
