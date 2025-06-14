# My-Took-Kit
Hej! If you made it here, your probably a fan of making your life easier or just like making your machine more aligned to your liking. 

## 👨‍💻 Here's how this repo works:
There are 3 different directories for each of the 3 major OSes in the computer world. **Linux**, **MacOS** and **Windows** respectively.  

## ⚠️ Disclaimer

Please be aware that all scripts in this repository are provided as-is. I am not responsible for any damage, data loss, or unexpected behavior that may occur on your system from using or modifying these scripts. Always understand what a script does before you run it, and it's highly recommended to back up your data beforehand. Use these tools at your own risk.

## 🚀 Getting Started: Making Scripts Executable

Before you can run most of these scripts, you may need to make them "executable." This tells your operating system that the file is a program that can be run. Here’s how to do it for your OS.

### For MacOS & Linux

Most scripts for macOS and Linux (like shell scripts with a .sh extension) can be made executable using the Terminal.

    Open your Terminal application.

    Navigate to the directory where the script is located using the cd command. For example:

    cd ~/Downloads/My-Tool-Kit/macOS

    Use the chmod (change mode) command to give the script execute permissions:

    chmod +x your-script-name.sh

    Now you can run the script from your terminal:

    ./your-script-name.sh

### For Windows

For Windows batch (.bat) or PowerShell (.ps1) scripts, the process is different.

Batch Scripts (.bat)
Batch files are usually executable by default. You can typically run them by simply double-clicking the file or by typing its name in the Command Prompt.

PowerShell Scripts (.ps1)
Windows has a security policy that often prevents PowerShell scripts from running by default. To run a script, you may need to change the execution policy for your user session.

    Open PowerShell (you can search for it in the Start Menu).

    To allow scripts to run for your current session, use the following command:

    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

    This change only lasts as long as the PowerShell window is open.

    Navigate to your script's directory:

    cd C:\Users\YourUser\Documents\My-Tool-Kit\Windows

    Run the script:

    .\your-script-name.ps1
