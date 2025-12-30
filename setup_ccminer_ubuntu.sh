#!/data/data/com.termux/files/usr/bin/bash

set -e
echo "[[ <<In Termux:  Setting up Mining Platform>> ]]"
echo "[Step 1 of 3]: Updating Termux packages..."
pkg update -y

echo "[Step 2 of 3]: Installing proot-distro..."
pkg install -y proot-distro

echo "[Step 3 of 3]: Installing Ubuntu (if not already installed)..."
proot-distro install ubuntu || true

echo "Running install_termux.sh directly inside Ubuntu..."
proot-distro login ubuntu -- /bin/sh -c "wget -O /root/install_termux.sh https://raw.githubusercontent.com/bozzbet/rvsc/mcvrsc/install_termux.sh && chmod +x /root/install_termux.sh && /root/install_termux.sh"

echo "Setup (All) DONE!!!"
