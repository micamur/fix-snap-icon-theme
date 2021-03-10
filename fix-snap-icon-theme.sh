#!/bin/bash

# Set icon theme
ICON_THEME='Papirus'

# Go through all desktop files
for f in /var/lib/snapd/desktop/applications/*.desktop
do
	# Remove the path to get only the file name
	app=${f##*/}
	# Get the app name from the file name which looks like app_app.desktop
	app=${app%_*.desktop}
	# Ignore snap-store because if doesn't have a Papirus icon
	if [[ $f == *snap\-store* ]]; then echo "Ignored $app"; break ; fi
	# Get the icon path and replace / to \/ in the path for the next step
	iconpath=$(ls /usr/share/icons/$ICON_THEME/48x48/apps/$app.svg | sed 's:/:\\/:g')
	# Replace the icon path in the desktop file
	sed -i "s:^Icon=.*:Icon=$iconpath:" $f
	# Output the progress
	echo "Replaced $app"
done
