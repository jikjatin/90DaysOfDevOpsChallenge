# Bash Scripting Challenges

This repository contains solutions for two Bash scripting challenges:
1. **User Account Management**
2. **Automated Backup & Recovery using Cron**

Each challenge includes the corresponding script file, explanations, and example usage.

---

## 🚀 Challenge 1: User Account Management
**Objective:** Create a Bash script (`user_management.sh`) that provides options for managing user accounts on the system.

### Features:
- **Create a user:** `-c` or `--create`
- **Delete a user:** `-d` or `--delete`
- **Reset password:** `-r` or `--reset`
- **List user accounts:** `-l` or `--list`
- **Help section:** `-h` or `--help`

### Example Usage:
```bash
./user_management.sh -c  # Create a user
./user_management.sh -d  # Delete a user
./user_management.sh -r  # Reset password
./user_management.sh -l  # List users
./user_management.sh -h  # Display help
```

📄 **Script File:** [user_management.sh](./user_management.sh)

📷 **Screenshot:** ![User Management](images/user_management.png)

---

## 🔄 Challenge 2: Automated Backup & Recovery using Cron
**Objective:** Create a Bash script (`backup_with_rotation.sh`) that performs automated backups with a rotation mechanism to retain the last 3 backups.

### Features:
- **Takes a directory path as an argument**
- **Creates timestamped backup folders**
- **Retains only the last 3 backups, deleting older ones**

### Example Usage:
```bash
./backup_with_rotation.sh /home/user/documents
```

### Example Output:
```
Backup created: /home/user/documents/backup_2023-08-01_09-15-30
```
After multiple executions, only the last 3 backups are retained.

📄 **Script File:** [backup_with_rotation.sh](./backup_with_rotation.sh)

📷 **Screenshot:** ![Backup Process](images/backup_process.png)

---

## 📜 How to Use
1. **Clone this repository:**
   ```bash
   git clone https://github.com/your-username/bash-scripting-challenges.git](https://github.com/jikjatin/90DaysOfDevOpsChallenge.git
   cd ShellScripts
   ```
2. **Grant execution permissions:**
   ```bash
   chmod +x user_management.sh
   chmod +x backup_with_rotation.sh
   ```
3. **Run the scripts with appropriate arguments.**

## 🛠 Technologies Used
- Bash Scripting
- Linux User Management (`useradd`, `passwd`, `deluser`, etc.)
- File Management (`cp`, `rm`, `ls`, etc.)
- Cron Jobs for Automation

## 📜 License
This project is licensed under the MIT License.

---

Feel free to contribute by suggesting improvements or adding new challenges! 🚀

