# 🔐 Cybersecurity Workshop Resources

Welcome to the official GitHub repository for our **Reverse Engineering**! This repository contains all the files, scripts, tools, and references used during the workshop to help participants.
---
## 📁 Repository Structure

```bash
.
├── slides/                # Presentation slides used during the session
├── ghidra/         # Ghidra tool download with JDK
├── labs/                  # Hands-on lab exercises and instructions
├── solutions/             # Suggested solutions for lab tasks
├── references/            # Useful links and further reading
└── README.md              # This file

```
## ⚙️ Setup
### Prerequisites
Before starting with the labs or tools, please ensure the following are installed:
- **Linux** (Kali preferred) or any Unix-based OS
- **Python 3.x**
- **Git**
- **VirtualBox** or **VMware**

### Clone the repository
```bash        
cd ~
git clone https://github.com/your-username/Aegis_workshop.git
cd Aegis_workshop
```
### Installing tools and JDK
To install JDK: 
```bash
sudo apt install openjdk-21-jdk
java --version    #to verify installation
```
Download the Ghidra application
```bash
cd ~/workshop/Aegis-workshop
mkdir tools
cd tools
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.3.2_build/ghidra_11.3.2_PUBLIC_20250415.zip
unzip ghidra_11.3.2_PUBLIC_20250415.zip
mv ghidra_11.3.2_PUBLIC_20250415.zip ghidra    #rename folder name
```


