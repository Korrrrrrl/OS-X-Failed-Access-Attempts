#!/bin/sh

# failed_access.sh
# Version 0.1.2
# Copyright (c) 2015 Karl Kernaghan
# Email - kkernaghan7@gmail.com

# This script creates a log based on information grabbed from /var/log/system.log
# pertaining to failed login attempts via ssh.

# This script is called by /Library/LaunchDaemons/com.failed_access.plist
# and is run every 5 minuets printing it's output to /var/log/failed_access.log

echo "****************************" >> /var/log/failed_access.log

echo "$(date) - Authentication error:" >> /var/log/failed_access.log
grep authentication\ error /var/log/system.log >> /var/log/failed_access.log

echo "$(date) - Failed login attempt - Invalid user:" >> /var/log/failed_access.log
grep Invalid\ user /var/log/system.log >> /var/log/failed_access.log
