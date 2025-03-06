# Week 1: Networking Challenge - 90 Days of DevOps (2025 Edition)

## Overview
Welcome to **Week 1 of the 90 Days of DevOps - 2025 Edition!** This week's focus is on **Networking**, a crucial skill for every DevOps professional. Networking is the backbone of communication between applications, services, and infrastructure in modern cloud environments. This challenge will help you understand the fundamentals of networking and apply them to real-world DevOps scenarios.

## Tasks

### 1️⃣ Understanding OSI & TCP/IP Models
#### Learning Objectives:
- Understand the **OSI Model** (7 layers) and **TCP/IP Model** (4 layers).
- Learn how these models map to real-world networking scenarios.

#### Task:
- Write examples of how each OSI layer applies to real-world scenarios:
  - **Application Layer (Layer 7):** Handles high-level APIs, like HTTP, SMTP, and FTP.
    - Example: When you visit a website (HTTP request), your browser interacts with the web server.
  - **Presentation Layer (Layer 6):** Ensures data is in the correct format (e.g., encryption, compression).
    - Example: SSL/TLS encrypts HTTPS traffic for secure transmission.
  - **Session Layer (Layer 5):** Manages sessions and connections between applications.
    - Example: A persistent SSH connection between your system and a remote server.
  - **Transport Layer (Layer 4):** Ensures reliable data transfer (TCP) or faster, connectionless communication (UDP).
    - Example: TCP is used for downloading files to ensure data integrity.
  - **Network Layer (Layer 3):** Handles routing and addressing (IP, ICMP, ARP).
    - Example: Routers use IP addresses to forward data between networks.
  - **Data Link Layer (Layer 2):** Manages MAC addresses and switches.
    - Example: A switch forwards packets to the correct device on the local network.
  - **Physical Layer (Layer 1):** Defines hardware connections (Ethernet cables, Wi-Fi, etc.).
    - Example: Your laptop's network adapter transmits data as electrical signals over an Ethernet cable.

---

### 2️⃣ Protocols and Ports for DevOps
#### Learning Objectives:
- Understand commonly used **network protocols** and their **port numbers**.
- Learn their importance in **DevOps workflows**.

#### Task:
- Create a blog, article, or GitHub page explaining key networking protocols:
  - **HTTP (80) / HTTPS (443):** Used for web traffic and REST APIs.
  - **SSH (22):** Securely connects to remote servers (e.g., managing cloud instances).
  - **FTP (21) / SFTP (22):** Transfers files between systems.
  - **DNS (53):** Resolves domain names to IP addresses.
  - **MySQL (3306) / PostgreSQL (5432):** Common database communication ports.
  - **Redis (6379):** In-memory caching service used in cloud environments.
- Explain their relevance in DevOps, such as configuring **firewalls, security groups, and Kubernetes networking**.

---

### 3️⃣ AWS EC2 and Security Groups
#### Learning Objectives:
- Understand how **Security Groups** protect cloud infrastructure.
- Learn how to launch and configure an **AWS EC2 instance**.

#### Task:
- Launch an **AWS EC2 instance** (Free Tier recommended).
- Configure **Security Groups**:
  - Allow inbound traffic on **port 22 (SSH)** for remote access.
  - Restrict all unnecessary open ports to enhance security.
  - Allow only necessary **HTTP (80) / HTTPS (443) traffic** if running a web server.
- Write a **step-by-step guide** explaining:
  - How to launch an **EC2 instance**.
  - How to configure **Security Groups**.
  - Best practices for **securing cloud environments**.

---

### 4️⃣ Hands-On with Networking Commands
#### Learning Objectives:
- Master essential **network troubleshooting** and **diagnostic commands**.
- Learn how to check connectivity, analyze routes, and inspect network traffic.

#### Task:
- Create a **cheat sheet** explaining each of these networking commands:
  - **ping:** Test connectivity to a remote system.
    ```sh
    ping google.com
    ```
  - **traceroute / tracert (Windows):** Trace the path packets take to a destination.
    ```sh
    traceroute google.com
    ```
  - **netstat:** Display active network connections and listening ports.
    ```sh
    netstat -tulnp
    ```
  - **curl:** Make HTTP requests to test API responses.
    ```sh
    curl -I https://google.com
    ```
  - **dig / nslookup:** Perform DNS lookups to verify domain resolution.
    ```sh
    dig google.com
    nslookup google.com
    ```
- Document real-world **use cases** for each command, such as debugging server issues and troubleshooting DNS failures.

---

## How to Submit
- Create a **LinkedIn post** summarizing your **Week 1 Networking Challenge** experience.
- Include the **link to your blog, GitHub page, or README** in the comments of your post.
- **Pro Tip:** Use a **networking diagram or flowchart** to visually explain key concepts.

---

## Conclusion
Networking is a **critical skill** in the DevOps world. Whether setting up cloud environments, troubleshooting connectivity issues, or configuring security groups, understanding networking fundamentals is essential for DevOps engineers. By completing these tasks, you've built a strong foundation for upcoming DevOps challenges! 🚀

---

**Happy Learning!** 🎯

