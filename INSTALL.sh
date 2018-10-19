#!/bin/sh

# Make a backup of the existing files
mkdir /usr/src/bro-backup
cp -r /usr/share/bro /usr/src/bro-backup
cp -r /usr/share/broctl /usr/src/bro-backup
cp -r /etc/bro /usr/src/bro-backup
cp -r /etc/logstash /usr/src/bro-backup

# Copy the files into place and make a backup for good measure
cp -b etc/* /etc
cp -b usr/* /usr

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
