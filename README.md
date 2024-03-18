# Mouse Scrolling Distinction On MacOS

I've created this repository a problem that I had with scrolling type on MacOS and I thought it would be useful to share this solution with others.

## Problem
I am using my Macbook mostly with an external screen and place my Macbook to a stand so I can't reach Macbook's trackpad to use the cursor. Therefore, I am using an external mouse, but as some of you all know, MacOS uses Natural Scrolling, it is opposite movement with external mouse scrolling. In short, everytime I plug/unplug my external mouse I had to toggle this option from System Preferences which was very annoying.

## Solution
I thought a bash script would do the trick but I wanted it to be working automatically on the background so that it happens seemlesly. You need these steps to have this functionality on your Mackbook.

- Create a bash script called, `mouse-scrolling.sh`, I provide this bash in this repository.
- Move this script under a directory called `~/Scripts/`
- Create a Launch Agent to make scrolling check automatic with the following command, `cat << EOF > ~/Library/LaunchAgents/com.mouse-scrolling.plist`, I've shared the content of the file in the repository.
- Finally, to load the Launch Agent, you need to run this command `launchctl load ~/Library/LaunchAgents/com.mouse-scrolling.plist`
- Now you are all set! Your Macbook will check scrolling any time you plugin/plugout a USB device.
