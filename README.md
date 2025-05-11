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
mkdir ~/workshop          #create a directory to store all workshop related files
cd ~/workshop
git clone https://github.com/your-username/Aegis_workshop.git
cd Aegis-workshop
```
### Installing tools and JDK
```bash
cd ghidra
```
extract ghidra application
```bash
unzip ghidra.zip
```
Extract the JDK:
```bash
tar xvf <JDK distribution .tar.gz>
```
Open ~/.bashrc with an editor of your ch
At the very end of the file, add the JDK bin directory to the PATH variable:
export PATH=<path of extracted JDK dir>/bin:$PATH


