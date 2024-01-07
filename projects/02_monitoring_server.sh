#!/bin/bash

# Define threshold values
CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

# Function to send alert
send_alert() {
    # Replace this placeholder with your alerting mechanism (email, SMS, etc.)
    log="ALERT: $(date +"%Y-%m-%d %H:%M:%S") -$1 exceeded threshold - $2% usage."
    echo $log
    echo $log >> /var/log/server_monitoring.log
}

# While loop to check metrics in every 10 seconds
while true; do

    # Check CPU usage
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d . -f 1)
    if [ "$CPU_USAGE" -gt "$CPU_THRESHOLD" ]; then
        send_alert "CPU" "$CPU_USAGE"
    fi

    # Check memory usage
    MEMORY_USAGE=$(free | awk '/Mem/ {print $3/$2 * 100.0}')
    if [ "$(printf "%.0f" "$MEMORY_USAGE")" -gt "$MEMORY_THRESHOLD" ]; then
        send_alert "Memory" "$MEMORY_USAGE"
    fi

    # Check disk space
    DISK_USAGE=$(df -h | awk '$NF=="/"{print $5}' | sed 's/%//')
    if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
        send_alert "Disk" "$DISK_USAGE"
    fi

    # Log metrics for historical analysis
    echo "LOG: $(date +"%Y-%m-%d %H:%M:%S") - CPU: $CPU_USAGE%, Memory: $MEMORY_USAGE%, Disk: $DISK_USAGE%" >> /var/log/server_monitoring.log
    sleep 10

done