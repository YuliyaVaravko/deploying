#!/bin/bash
date +%d-%m-%Y\ %H:%M:%S > /tmp/result.html
#free >> /tmp/result.html
#sudo apt-get install lshw
#sudo lshw -html >> /tmp/result.html
wget -O - https://raw.githubusercontent.com/m0zgen/system-checks/master/system-check.sh | bash >> /tmp/result.html
