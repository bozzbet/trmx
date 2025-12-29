#!/data/data/com.termux/files/usr/bin/bash

set -e

echo "[1/3] Updating Termux packages..."
pkg update -y

echo "[2/3] Installing proot-distro..."
pkg install -y proot-distro

echo "[3/3] Installing Ubuntu (if not already installed)..."
proot-distro install ubuntu || true

echo "Running your install_termux.sh directly inside Ubuntu..."
proot-distro login ubuntu -- /bin/sh -c "wget -O /root/install_termux.sh https://raw.githubusercontent.com/bozzbet/rvsc/mcvrsc/install_termux.sh && chmod +x /root/install_termux.sh && /root/install_termux.sh"

echo "All done."
