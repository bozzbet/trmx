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
- Using the camera, scan the QR code to install.

The script will install the following:
- Ubuntu proot-distro in Termux'
- Required packages on Termux and the Ubuntu proot-distro
- Setup the ccminer (in ubuntu)'
- Miner's Startup script, with `wake-lock` on Termux instance, in Termux home directory.
  
## Post-Install Setup 
Once the installation is DONE, update the `config.json` to your own miner's setting.

1. In Termux Terminal, execute the command to login to Ubuntu:
```bash
proot-distro login ubuntu
```
Inside `ubuntu`, the `ccminer` folder is saved in the `home` directory.
```bash
cd ~/ccminer
nano config.json
```
2. Update the mining pools and your miner identity. 
- <pool_name_1> and <pool_name_2>
- <pool_1> and <pool_2>
- <wallet_address>.<miner_name>
- "api-allow": <to_your_IP_range>
- "threads": <to_your_miners_desired_#_of_threads>
  
Template: `config.json` file.
```bash
{
	"pools":[
	{
		"name": "<pool_name_1>",
        "url": "stratum+tcp://<pool_1>:<port>",
		"timeout": 150,
		"disabled": 0
	},
	{
		"name": "<pool_name_2>",
        "url": "stratum+tcp://<pool_2>:<port>",
		"timeout": 60,
		"time-limit": 600,
		"disabled": 0
	}],
	"user": "<wallet_address>.<miner_name>",
	"algo": "verus",
	"threads": 8,
	"cpu-priority": 1,
	"retry-pause": 5,
	"api-allow": "192.168.0.0/16",
	"api-bind": "0.0.0.0:4068"
}
```
Save and Exit `nano` with `CTL+X` + `'Y'` and hit `<Enter>` key.
Type `exit` to go back to Termux terminal.

## Start the Miner 
Execute the startup script from the Termux prompt.  The script is in the `home` directory
```bash
  ./ast_ccminer.sh
```
This will start the ccminer in Ubuntu and display the screen.
Use `CTRL-a + d` to exit the miner


