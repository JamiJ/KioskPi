#!/bin/bash
sleep 3
sudo apt-get purge -y wolfram-engine scratch scratch2 nuscratch sonic-pi idle3
sudo apt-get purge -y smartsim java-common minecraft-pi libreoffice*
sudo apt-get clean
sudo apt-get autoremove -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y xdotool unclutter sed
echo
echo
echo
sleep 15
echo "Install & Upgrade done" 
echo "Starting to download Kiosk"
echo
echo "Downloading needed files from the server"
sleep 1
wget -O kiosk.service https://raw.githubusercontent.com/JamiJ/KioskPi/main/kiosk.service
wget -O kiosk.sh https://raw.githubusercontent.com/JamiJ/KioskPi/main/kiosk.sh
echo "Download completed!"
sleep 2
echo
echo
echo
echo
echo
sleep 2
echo "Creating a reboot crontab"
sleep 1
#Write out current crontab
crontab -l > rebootcron
#Echo new cron into cron file
echo @midnight reboot >> rebootcron
#Install new cron file
crontab rebootcron
rm rebootcron
echo "Reboot crontab created"
sleep 2
echo
echo
echo
echo
echo
echo "Copying kiosk.service to /lib/systemd/system/"
sleep 2
echo ""
sudo cp /home/pi/kiosk.service /lib/systemd/system/
echo "Copying done!"
sleep 2
echo "Enabling & Starting kiosk.service"
sudo systemctl enable kiosk.service
sudo systemctl start kiosk.service
echo "Enable & Start completed!"
sleep 2
echo
echo
echo
echo
echo
sleep 2
echo "Set timezone Europe/Helsinki"
sudo timedatectl set-timezone Europe/Helsinki
sleep 1
echo
echo
echo
echo
echo
echo "Starting raspi-config in 15 seconds, please navigate and choose:"
echo "1 System Options -> S5 Boot / Auto Login -> B4 Desktop Autologin"
sleep 15
sudo raspi-config