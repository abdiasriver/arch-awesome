#!/bin/bash
set -e
sudo cp 98-screen-detect.rules /etc/udev/rules.d/

sudo udevadm control --reload-rules

sudo cp -r notify-awesome /lib/udev/
cp -r screenful.lua ~/.config/awesome
cp -r screens_db.lua ~/.config/awesome


#Add to your rc.lua file the following require statements:

#     require("awful.remote")
#     require("screenful")

#Restart Awesome WM