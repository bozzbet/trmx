# Verus Miner Quick Installer for Mobile Phone (Android)
This is a single command to setup the miner in Mobile Phone.

## Pre-requesite
1. Termux is installed in the Mobile Phone.
2. Termux app is set to run 'UNRESTRICTED" in the background.

## Installation and Usage:
Option 1: Run this command in Termux shell:
```bash
curl -s https://raw.githubusercontent.com/bozzbet/trmx/main/setup_ccminer_termux.sh | sh
```
Option 2: QR Code >>>To be updated/added<<<
 Using the camera, scan the QR code to install.

The script will install the following:
- Ubuntu proot-distro in Termux'
- Required packages on Termux and the Ubuntu proot-distro
- Setup the ccminer (in ubuntu)'
- Miner's Startup script, with `wake-lock` on Termux instance, in Termux home directory.
  
Once the installation is done, you can execute the startup script from the Termux prompt.
```bash
  ./ast_ccminer.sh
```
This will start the ccminer in Ubuntu and display the screen.
Use `CTRL-a + d` to exit the miner


