#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "[[ <<In Termux:  Setting up Mining Platform>> ]]"
echo "[Setup 1 of 4]: Updating Termux packages..."
pkg update -y

echo "[Setup 2 of 4]: Installing proot-distro..."
pkg install -y proot-distro

echo "[Setup 3 of 4]: Installing Ubuntu..."
proot-distro install ubuntu || true

echo "[Setup 4 of 4]: Running your Ubuntu installer..."
proot-distro login ubuntu -- /bin/sh -c "
    apt-get update &&
    apt-get install -y wget &&
    wget -O /root/install_termux.sh https://raw.githubusercontent.com/bozzbet/rvsc/mcvrsc/install_termux.sh &&
    chmod +x /root/install_termux.sh &&
    /root/install_termux.sh
"

echo "------------------ "
echo "[[ <<Creating CCminer launcher script in Termux>> ]]"

# Create the script in Termux home instead of ~/.termux/boot
cat > ~/ast_ccminer.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

# Keep CPU awake
termux-wake-lock

# Start Ubuntu and run miner
proot-distro login ubuntu --shared-tmp -- bash -c "
    cd ~/ccminer
    ./start.sh
    screen -x CCminer
"
EOF

chmod +x ~/ast_ccminer.sh

echo "Launcher script created at: ~/ast_ccminer.sh"
echo "Run it manually anytime using:"
echo "    bash ~/ast_ccminer.sh"
echo "------------------ "
