# Setting Greeting Script to launch Automatically on Startup 

## Step 1:

In your preferred terminal, create a directory for LaunchAgents if it doesn't exist:

`mkdir -p ~/Library/LaunchAgents`

Create a new property list (.plist) file for your agent using a command-line editor like nano:

`nano ~/Library/LaunchAgents/com.user.jarvisgreeting.plist `

Paste the following XML content into the editor. Important: Replace YOUR_USERNAME with your actual macOS username.:

```<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>L
    abel</key>
    <string>com.user.jarvisgreeting</string>
    <key>ProgramArguments</key>
    <array>
        <string>/Users/YOUR_USERNAME/Documents/jarvis_greeting.sh</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
</dict>
</plist>
```

Save the file by pressing Control + X, then Y, then Enter.

## Step 2: Load the launchd Agent

In the Terminal, load your new agent with this command:

`launchctl load ~/Library/LaunchAgents/com.user.jarvisgreeting.plist`
