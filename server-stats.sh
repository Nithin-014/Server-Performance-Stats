
#!/bin/bash

echo "========================================"
echo "          SERVER PERFORMANCE STATS"
echo "========================================"

# 1. CPU Usage
echo
echo "---------- CPU USAGE ----------"

top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'

# 2. Memory Usage
echo
echo "---------- MEMORY USAGE ----------"

free -h

# 3. Disk Usage
echo
echo "---------- DISK USAGE ----------"

df -h

# 4. Top 5 Processes by CPU Usage
echo
echo "---------- TOP 5 PROCESSES BY CPU ----------"

ps aux --sort=-%cpu | head -6

# 5. Top 5 Processes by Memory Usage
echo
echo "---------- TOP 5 PROCESSES BY MEMORY ----------"

ps aux --sort=-%mem | head -6

# 6. Operating System
echo
echo "---------- OS INFORMATION ----------"

cat /etc/os-release | grep PRETTY_NAME

# 7. System Uptime
echo
echo "---------- SYSTEM UPTIME ----------"

uptime -p

# 8. Load Average
echo
echo "---------- LOAD AVERAGE ----------"

uptime

echo
echo "========================================"
echo "       SERVER STATS COMPLETED"
echo "========================================"

