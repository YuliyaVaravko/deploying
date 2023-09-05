#!/bin/bash
echo "<h1> System information </h1>
$(date +%d-%m-%Y\ %H:%M:%S) </br>

<h2> Processor information </h2>
CPU model: $(awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo) </br>
Number of cores: $(awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo) </br>
CPU frequency: $(awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo) </br>
Total amount of RAM: $(free -m | awk 'NR==2 {print $2}') </br>
Total amount of swap: $(free -m | awk 'NR==4 {print $2}') </br>
TSystem uptime: $(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }') </br></br>


<h2> Measurement of read and write speed. <h2>" > /tmp/result.html
sudo apt install hdparm
sudo hdparm -tT /dev/sda >> /tmp/result.html
