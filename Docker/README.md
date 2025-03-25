# Docker Basics & Advanced Challenge 🚀

Welcome to the **Docker Basics & Advanced Challenge**! This challenge covers core and advanced Docker concepts essential for DevOps workflows. Below are the tasks completed, with descriptions and screenshots demonstrating each step.

---

## 📌 Task 1: Introduction and Conceptual Understanding
**Description:**
- Explained Docker’s role in DevOps.
- Compared Virtualization vs. Containerization.
- Discussed benefits of containerization for microservices and CI/CD.

**Screenshot:**  
![Task 1](images/task1.png)

---

## 📌 Task 2: Create a Dockerfile for a Sample Project
**Description:**
- Created a simple application.
- Wrote a Dockerfile to containerize it.
- Built and ran the Docker container.

**Commands Used:**
```sh
docker build -t myusername/sample-app:latest .
docker run -d -p 8080:80 myusername/sample-app:latest
docker ps
docker logs <container_id>
```

**Screenshot:**  
![Task 2](images/task2.png)

---

## 📌 Task 3: Explore Docker Terminologies and Components
**Description:**
- Documented key Docker terms like images, containers, volumes, networks.
- Explained Docker Engine, Docker Hub, and how they interact.

**Screenshot:**  
![Task 3](images/task3.png)

---

## 📌 Task 4: Optimize Your Docker Image with Multi-Stage Builds
**Description:**
- Used multi-stage builds to reduce image size.
- Compared image sizes before and after optimization.

**Commands Used:**
```sh
docker images
```

**Screenshot:**  
![Task 4](images/task4.png)

---

## 📌 Task 5: Manage Your Image with Docker Hub
**Description:**
- Tagged and pushed an image to Docker Hub.
- Verified by pulling the image.

**Commands Used:**
```sh
docker tag myusername/sample-app:latest myusername/sample-app:v1.0
docker login
docker push myusername/sample-app:v1.0
docker pull myusername/sample-app:v1.0
```

**Screenshot:**  
![Task 5](images/task5.png)

---

## 📌 Task 6: Persist Data with Docker Volumes
**Description:**
- Created a Docker volume to persist data.
- Ran a container using the volume.

**Commands Used:**
```sh
docker volume create my_volume
docker run -d -v my_volume:/app/data myusername/sample-app:v1.0
```

**Screenshot:**  
![Task 6](images/task6.png)

---

## 📌 Task 7: Configure Docker Networking
**Description:**
- Created a custom Docker network.
- Connected multiple containers using the network.

**Commands Used:**
```sh
docker network create my_network
docker run -d --name sample-app --network my_network myusername/sample-app:v1.0
docker run -d --name my-db --network my_network -e MYSQL_ROOT_PASSWORD=root mysql:latest
```

**Screenshot:**  
![Task 7](images/task7.png)

---

## 📌 Task 8: Orchestrate with Docker Compose
**Description:**
- Wrote a `docker-compose.yml` file.
- Deployed multiple containers using Docker Compose.

**Commands Used:**
```sh
docker-compose up -d
docker-compose down
```

**Screenshot:**  
![Task 8](images/task8.png)

---

## 📌 Task 9: Analyze Your Image with Docker Scout
**Description:**
- Used Docker Scout to analyze security vulnerabilities.
- Documented CVEs and recommended fixes.

**Commands Used:**
```sh
docker scout cves myusername/sample-app:v1.0 > scout_report.txt
```

**Screenshot:**  
![Task 9](images/task9.png)

---

## 📌 Task 10: Documentation and Reflection
**Description:**
- Documented all commands and steps in `solution.md`.
- Reflected on Docker's impact on modern software development.

**Screenshot:**  
![Task 10](images/task10.png)

---

## 🎯 Conclusion
This challenge provided hands-on experience with Docker’s essential and advanced features. It covered everything from building images, networking, and data persistence to container orchestration and security analysis.
