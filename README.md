# pwnmap

This is a very basic script that runs nmap using the default ports and then uses ndiff to compare the results.

This script *should* be configured to run daily via cron or another task scheduler

Used in "Red Team Recon" -- Sample code taken from The Hacker Playbook 3

## TO-DO
* Build a better port list than the default for services like Redis (6379/6380)

* Implement NMAP Banner Grabbing

* Keep historical tracking of ports

* Build email alerting/notification system

* Check out Slack Alerts: http://bit.ly/2H1o5AW
