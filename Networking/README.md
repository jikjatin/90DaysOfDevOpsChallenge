# Networking Challenge - Week 1

## Overview
Welcome to Week 1 of the **90 Days of DevOps - 2025 Edition**! This week, focused on **Networking**, a fundamental concept for DevOps professionals. Below are the tasks completed during this challenge.

---

## Tasks Completed

### 1. Understanding OSI & TCP/IP Models
Networking operates using structured models that define communication layers. We explored both **OSI (Open Systems Interconnection) Model** and **TCP/IP Model**:

- **OSI Model** (7 Layers):
  1. Physical (Cables, Ethernet)
  2. Data Link (MAC Address, Switches)
  3. Network (IP Addresses, Routers)
  4. Transport (TCP/UDP)
  5. Session (Maintains Sessions)
  6. Presentation (Encryption, Encoding)
  7. Application (HTTP, FTP, DNS)

- **TCP/IP Model** (4 Layers):
  1. Network Interface (Physical & Data Link in OSI)
  2. Internet (Network Layer in OSI)
  3. Transport (Same as OSI)
  4. Application (Combines OSI’s Top 3 Layers)

**Real-World Examples:**
- **HTTP at Application Layer** → Websites use it for communication.
- **TCP at Transport Layer** → Ensures reliable data transfer.
- **IP at Network Layer** → Assigns unique addresses to devices.

### 2. Protocols and Ports for DevOps
Understanding networking protocols and ports is essential in DevOps for managing cloud infrastructure, security, and CI/CD pipelines.

- **Common Protocols & Port Numbers:**
  - **HTTP (80), HTTPS (443)** → Web Communication
  - **FTP (21), SFTP (22)** → File Transfers
  - **SSH (22)** → Secure Remote Login
  - **DNS (53)** → Domain Name Resolution
  - **MySQL (3306), PostgreSQL (5432)** → Database Connections

✅ **Created a detailed guide listing these protocols and their relevance to DevOps workflows.**

### 3. AWS EC2 and Security Groups
AWS EC2 allows launching cloud-based virtual machines, and **Security Groups** act as a firewall to control inbound and outbound traffic.

**Steps Followed:**
1. **Launched an EC2 Instance** (Ubuntu Free Tier).
2. **Created a Security Group** with the following rules:
   - Allowed SSH (22) only from my IP.
   - Enabled HTTP (80) for web access.
   - Allowed HTTPS (443) for secure communication.
3. **Connected to EC2 using SSH:**
   ```bash
   ssh -i my-key.pem ubuntu@<public-ip>
   ```
4. **Tested Web Server Setup** by installing and running an Apache server.

✅ **Documented a step-by-step guide on setting up Security Groups.**

### 4. Hands-On with Networking Commands
Practiced and documented commonly used networking commands:

- **ping** → Checks connectivity between devices.
  ```bash
  ping google.com
  ```
- **traceroute / tracert** → Traces the path packets take to reach a destination.
  ```bash
  traceroute google.com
  ```
- **netstat** → Displays network connections and listening ports.
  ```bash
  netstat -tulnp
  ```
- **curl** → Fetches data from URLs (useful in DevOps for API testing).
  ```bash
  curl -I https://google.com
  ```
- **dig / nslookup** → Performs DNS lookups.
  ```bash
  dig google.com
  ```

✅ **Created a cheat sheet explaining the usage and output of these commands.**

---

This challenge provided a solid foundation in networking concepts essential for DevOps professionals. 🚀

