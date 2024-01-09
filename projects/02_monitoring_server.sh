#!/bin/bash

# Define threshold values
CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

# Logger for server
logger() {
    log_path="/var/log/server_monitoring.log"

    if [ $1 -ge $CPU_THRESHOLD ] || [ $2 -ge $MEMORY_THRESHOLD ] || [ $3 -ge $DISK_THRESHOLD ]; then
        echo "ALERT: CPU usage is ${1}%, Memory usage is ${2}%, Disk usage is ${3}%" >> $log_path
    else
        echo "OK: CPU usage is ${1}%, Memory usage is ${2}%, Disk usage is ${3}%" >> $log_path
    fi
}

# While loop to check metrics in every 10 seconds
while true; do

    # Check CPU usage
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d . -f 1)

    # Check memory usage
    MEMORY_USAGE=$(free | awk '/Mem/ {print $3/$2 * 100.0}')

    # Check disk space
    DISK_USAGE=$(df -h | awk '$NF=="/"{print $5}' | sed 's/%//')

    # Log metrics for historical analysis
    logger $CPU_USAGE $MEMORY_USAGE $DISK_USAGE
    
    sleep 10

done