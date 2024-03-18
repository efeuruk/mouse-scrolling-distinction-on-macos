#!/bin/bash

# Check if a mouse is plugged in
mouse_connected=$(ioreg -n IOHIDDevice -r | grep -i 'VendorID' | grep -c '05ac\|0x05ac')

# Set natural scrolling according to mouse connection
if [ $mouse_connected -eq 1 ]; then
    # Mouse is connected, disable natural scrolling
    defaults write -g com.apple.swipescrolldirection -bool false
    echo "Mouse is connected. Natural scrolling is disabled."
else
    # No mouse connected, enable natural scrolling
    defaults write -g com.apple.swipescrolldirection -bool true
    echo "No mouse detected. Natural scrolling is enabled."
fi