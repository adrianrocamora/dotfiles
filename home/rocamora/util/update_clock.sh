#!/usr/bin/bash

#sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
#sudo systemctl start ntp
sudo ntpdate -s time.nist.gov
#sudo systemctl stop ntp
