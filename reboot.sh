#!/bin/bash
echo "Updating crontab reboots"
sleep 5
#Write out current crontab
crontab -l > rebootcron
#Echo new cron into cron file
echo @midnight reboot >> rebootcron
echo 30 5 * * * reboot >> rebootcron
echo 0 16 * * * reboot >> rebootcron
#Install new cron file
crontab rebootcron
rm rebootcron
echo "Reboot crontab created"
sleep 5
echo
echo
echo
sleep 15
echo "Rebooting system"
sudo reboot
