# How to Use Touch ID for sudo Commands in Terminal

This guide will walk you through enabling Touch ID authentication for sudo commands on your Mac. This allows you to use your fingerprint instead of typing your password in the Terminal.
The Modern Method (for macOS Sonoma and Newer)

## Starting with macOS Sonoma, Apple introduced an official way to make this change persist through system updates. This is the highly recommended method.
Open the Terminal

You can find it in Applications > Utilities, or by searching with Spotlight.

    Create a Local sudo Configuration File
    macOS now uses a template file for local sudo customizations. You'll make a copy of this template. Run the following command:

    sudo cp /etc/pam.d/sudo_local.template /etc/pam.d/sudo_local

    You will be prompted to enter your password for this command.

    Edit the New Configuration File
    Now, open the file you just created with a command-line text editor like nano.

    sudo nano /etc/pam.d/sudo_local

    Enable Touch ID Authentication
    The file will contain comments explaining its purpose. You will see a line that is "commented out" with a # symbol.

    Find this line:
    #auth sufficient pam_tid.so

    Remove the # at the beginning of the line to uncomment it. The file should now look like this:

    # sudo_local: local config file which survives system update and is included for sudo
    #
    # uncomment following line to enable Touch ID for sudo
    auth sufficient pam_tid.so 

    Save and Exit

        Press Control + X to exit the nano editor.

        It will ask you to save the modified buffer. Press Y for Yes.

        It will then ask for the file name to write. Just press Enter to confirm the existing name.


**Important Notes**

    SSH Sessions: This method only works when you are physically using your Mac. It will not work over an SSH connection, which will default back to asking for your password.

    iTerm2 Users: If you use iTerm2 and find Touch ID isn't working, you may need to adjust a setting. Go to iTerm2 > Settings (or Preferences) > Advanced and search for the setting Allow sessions to survive logging out and back in. Set this to No.