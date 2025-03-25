# Week 5: Docker Basics & Advanced Challenge

Welcome to the **Week 5 Docker Challenge!** This repository showcases the completion of all tasks in the challenge. Below are the completed tasks along with their descriptions, commands used, and screenshots.

## Task 1: Introduction and Conceptual Understanding

### ✅ Completed Task
- Explained Docker’s purpose in modern DevOps.
- Compared Virtualization vs. Containerization.

![Task 1 Screenshot](images/task1.png)

## Task 2: Create a Dockerfile for a Sample Project

### ✅ Completed Task
- Selected a simple application.
- Created a `Dockerfile`.
- Built and ran the image locally.

### Commands Used:
```sh
docker build -t <your-username>/sample-app:latest .
docker run -d -p 8080:80 <your-username>/sample-app:latest
docker ps
docker logs <container_id>
```

![Task 2 Screenshot](images/task2.png)

## Task 3: Explore Docker Terminologies and Components

### ✅ Completed Task
- Documented key Docker terminologies and components.

![Task 3 Screenshot](images/task3.png)

## Task 4: Optimize Your Docker Image with Multi-Stage Builds

### ✅ Completed Task
- Implemented multi-stage builds.
- Compared image sizes.

### Commands Used:
```sh
docker images
```

![Task 4 Screenshot](images/task4.png)

## Task 5: Manage Your Image with Docker Hub

### ✅ Completed Task
- Tagged and pushed image to Docker Hub.

### Commands Used:
```sh
docker tag <your-username>/sample-app:latest <your-username>/sample-app:v1.0
docker login
docker push <your-username>/sample-app:v1.0
docker pull <your-username>/sample-app:v1.0
```

![Task 5 Screenshot](images/task5.png)

## Task 6: Persist Data with Docker Volumes

### ✅ Completed Task
- Created and used a Docker volume.

### Commands Used:
```sh
docker volume create my_volume
docker run -d -v my_volume:/app/data <your-username>/sample-app:v1.0
```

![Task 6 Screenshot](images/task6.png)

## Task 7: Configure Docker Networking

### ✅ Completed Task
- Created a custom Docker network.
- Connected multiple containers.

### Commands Used:
```sh
docker network create my_network
docker run -d --name sample-app --network my_network <your-username>/sample-app:v1.0
docker run -d --name my-db --network my_network -e MYSQL_ROOT_PASSWORD=root mysql:latest
```

![Task 7 Screenshot](images/task7.png)

## Task 8: Orchestrate with Docker Compose

### ✅ Completed Task
- Created a `docker-compose.yml` file.
- Deployed services.

### Commands Used:
```sh
docker-compose up -d
docker-compose down
```

![Task 8 Screenshot](images/task8.png)

## Task 9: Analyze Your Image with Docker Scout

### ✅ Completed Task
- Analyzed image vulnerabilities with Docker Scout.

### Commands Used:
```sh
docker scout cves <your-username>/sample-app:v1.0
docker scout quickview <your-username>/sample-app:v1.0
docker scout cves <your-username>/sample-app:v1.0 > scout_report.txt
```

![Task 9 Screenshot](images/task9.png)

## Task 10: Documentation and Critical Reflection

### ✅ Completed Task
- Documented steps, commands, and improvements.
- Wrote reflections on Docker’s impact.

![Task 10 Screenshot](images/task10.png)

---
### 🎉 Challenge Completed!
All tasks have been successfully completed and documented. 🚀
