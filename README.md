# CPU-Monitoring-Script
This script continuously monitors CPU usage and logs it into a specified log file at regular intervals.

## How It Works
1. Timestamp: The script logs the current date and time along with the CPU usage percentage.
2. CPU Usage Calculation: The script uses the top command to get the CPU usage information. It extracts the percentage of idle CPU time, calculates the used CPU percentage, and formats it for logging.
3. Continuous Monitoring: The script runs indefinitely, logging the CPU usage at regular intervals specified by the INTERVAL variable.
4. Log File Creation: The script ensures that the directory for the log file exists, creating it if necessary.
