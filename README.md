# Server Performance Stats
A Bash script to analyze basic Linux server performance stats.  
Project idea from [roadmap.sh](https://roadmap.sh/projects/server-stats).

## Features
- Total CPU usage
- Total memory usage (Free vs Used including percentage)
- Total disk usage (Free vs Used including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- Extras: OS version, uptime, load average, logged-in users

## Requirements
- Bash 4+
- Standard GNU tools available on most Linux servers: top, grep, awk, free (procps), df (coreutils), ps, w, uptime, xargs.

## Installation
```bash
git clone https://github.com/Pavloffm/server-stats.git
cd server-stats
chmod +x server-stats.sh
```

## Usage
```bash
./server-stats.sh
```

## Example Output
```bash
Linux server stats:
Total CPU usage:
1.2% used
Total memory usage (Free vs Used including percentage):
Free: 12463/15385 vs Used: 10.7182%
Total disk usage (Free vs Used including percentage):
Free: 99G/112G vs Used: 8%
Top 5 processes by CPU usage:
    861 irq/76-rtw88_pc  0.7
   1834 node             0.3
   1658 node             0.1
   1621 node             0.1
   1797 code-f220831ea2  0.1
Top 5 processes by memory usage:
   1834 node             4.7
   1621 node             1.0
   1658 node             0.5
   1845 node             0.4
  13464 node             0.4
OS version:
Ubuntu 24.04.3 LTS
Uptime:
up 4 hours, 1 minute
Load average:
0.23, 0.10, 0.02
Logged in users:
miserant
miserant
```