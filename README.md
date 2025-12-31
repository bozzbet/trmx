# Verus Miner Quick Installer for Mobile Phone (Android)
This is a sinngle command to setup the ccminer in Mobile Phone.

## Pre-requesite
1. Termux is installed in the Mobile Phone.
2. Termux app is set to run in the baclground.

## Installation and Usage:
Run this command in Termux shell:
```bash
curl -s https://raw.githubusercontent.com/bozzbet/trmx/main/setup_ccminer_termux.sh | sh
```
The command will installs the following:
- Ubuntu proot-distro in Termux
- Applies `wake-lock` on termux instance (this will keep Termux and the ccminer running)
- Required packages on Termux and the Ubuntu proot-distro
- Setup the ccminer
- Startup script
  
Once the installation is done, you can execute the startup script from the Termux prompt.
```bash
  ./ast_ccminer.sh
```
This will start the ccminer in Ubuntu and display the screen.
Use `CTRL-a + d` to exit the miner


