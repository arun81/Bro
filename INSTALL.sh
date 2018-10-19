#!/bin/sh

# Copy the files into place
install -b etc/* /etc
install -b usr/* /usr

# Set the capabilities of Bro
setcap cap_net_raw,cap_net_admin=eip /usr/bin/bro
setcap cap_net_raw,cap_net_admin=eip /usr/bin/capstats

# Update the log directory permissions
chown -R logstash:logstash /var/log/bro/
chown -R logstash:logstash /var/spool/bro/

# Install the bro configuration files
sudo -u logstash /usr/bin/broctl install

# Run bro
#sudo -u logstash /usr/bin/broctl start
