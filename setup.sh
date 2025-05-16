#!/bin/bash
# Ensure the script is run as root
if [ "$EUID" -ne 0 ]; then 
    echo -e "\033[1;31m Please run as root: sudo ./setup.sh\033[0m"
    exit
fi

echo -e "\033[1;36m Installing essential reverse engineering tools...	        [1/7]\033[0m"
apt install -y wget unzip build-essential gcc git xxd

echo -e "\033[1;36m Downloading Java JDK and Python                             [2/7]\033[0m"
cd ~
apt install openjdk-21-jdk

echo -e "\033[1;36m Creating workshop directory...			        [3/7]\033[0m"
mkdir -p ~/workshop/tools
cd ~/workshop/tools

echo -e "\033[1;36m Downloading Ghidra				        [4/7]\033[0m"
cd ~/workshop/tools
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.3.2_build/ghidra_11.3.2_PUBLIC_20250415.zip

echo -e "\033[1;36m Extracting Ghidra...				       [5/7]\033[0m"
unzip ghidra_11.3.2_PUBLIC_20250415.zip
mv ghidra_11.3.2_PUBLIC_20250415 ghidra_11.3.2
rm ghidra_11.3.2_PUBLIC_20250415.zip

echo -e "\033[1;36m Setting up Ghidra launch alias...			       [6/7]\033[0m"
GHIDRA_DIR=$(find . -maxdepth 1 -type d -name "ghidra_*" | head -1)
echo "alias ghidra='~/workshop/tools/$GHIDRA_DIR/ghidraRun'" >> ~/.bashrc
source ~/.bashrc
echo -e "\033[1;32m Use ghidra in terminal to run\033[0m"

cd ~/workshop
if [ -d "~/workshop/repo/" ]; then
    echo -e "\033[1;32m Repo already exists at ~/workshop/repo/. Skipping clone.\033[0m"
else
    echo -e "\033[1;36m Cloning Aegis_workshop repository...		       [7/7]\033[0m"
    git clone https://github.com/JoeChala/Aegis_workshop.git ~/workshop/repo/
    echo -e "\033[1;32m Repo cloned successfully.\033[0m"
fi

echo -e "\033[1;32m Successfully installed ghidra and other workshop tools\033[0m"
echo -e "\033[1;32m Opening workshop folder\033[0m"
chmod +x ~/workshop/repo/labs/exes/*
chmod +x ~/workshop/repo/labs/programs/*
cd ~/workshop
exec "$SHELL"
