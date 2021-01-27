# KioskPi
Automatically configure Raspberry Pi OS to Kiosk mode

Needed equipment:
* Raspberry Pi 2/3/4
* SD-Card (Recommended 8GB)
* Power supply for Raspberry Pi
* Network (LAN / WIFI)
* Monitor 
* HDMI Cable

You will need to have Raspberry Pi OS installed/migrated to SD-card. You can choose the version for your needs.\
I'm using version Raspberry Pi OS with desktop.
[RaspberryPi-Operating-Systems](https://www.raspberrypi.org/software/operating-systems/)


#Running Rasbperry Pi

When Raspberry Pi boots, please connect to internet via lan-cable or WiFi.

You can run command `<curl -s>` to automatically run the `<start.sh`> script via network. No need to move files locally.\
`<sudo curl -s https://raw.githubusercontent.com/JamiJ/KioskPi/main/start.sh | sh>`

After this scrip has installed everything, please wait until your device reboots.
When rebooted you can see the Kiosk mode has started, but you need to modify the link that it wants to connect to.

Close Kiosk mode with:
* `<ctrl + alt + f1>`
* `<sudo systemctl stop kiosk>`
* `<ctrl + alt + f7>`

You are able to see settings menu. Please choose Autologin for Desktop:
* `<1. System option>`
* `<S5 Boot / Auto Login>`
* `<B4 Desktop Autologin>`
* Exit menu with `<Esc>`

Change link to the kiosk.sh file
* `<--kiosk INSERT-LINK-HERE-REPLACE-THIS>`

Finally reboot, and your kiosk should show what you want!
