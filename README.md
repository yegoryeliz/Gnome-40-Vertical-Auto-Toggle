# Gnome-40-Vertical-Auto-Toggle
A script to automatically toggle the vertical overview gnome extension based on screen aspect ratio. Useful when docking a laptop to an ultawide screen.

## Prerequisites
This script depends on the Vertical overview Gnome extension which can be found [Here](https://extensions.gnome.org/extension/4144/vertical-overview/)

### Notes
This script is designed to loop indefinitely. **How you chose to launch it is up to you**. It will run every 5 seconds checking aspect ratio. If the ratio is 16:9 or wider it will toggle the Vertical overview extension. Once the aspect ratio drops below 16:9 the extension will be turned off and Gnome 40 will be returned to the default layout.

#### TODO
prevent multiple instances launcing when screen is unlocked
