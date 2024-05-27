#!/bin/bash

# Log file to store CPU usage data
LOG_FILE="/path/to/your/cpu_usage.log"

# Interval in seconds between each CPU usage check
INTERVAL=5

# Function to log CPU usage
log_cpu_usage() {
    while true; do
        # Get the current date and time
        TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

        # Get CPU usage information
        CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')

        # Log the date, time, and CPU usage
        echo "$TIMESTAMP - CPU Usage: $CPU_USAGE" >> "$LOG_FILE"

        # Wait for the specified interval before checking again
        sleep $INTERVAL
    done
}

# Ensure the log file directory exists
mkdir -p "$(dirname "$LOG_FILE")"

# Start logging CPU usage
log_cpu_usage
