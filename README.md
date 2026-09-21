# CodeAlpha Internship — DevOps Projects 🚀

> **Internship Domain:** DevOps & Cloud Computing
> **Intern:** Muhammad Islah Uddin
> **Status:** ✅ 2/2 Tasks Completed

---

## 📋 Project Overview
This repository contains all DevOps tasks completed during the CodeAlpha Internship Program. Each task focuses on real-world industry practices — build automation, containerization, and software deployment.

---

## ✅ Completed Tasks

### 1. Task 3 — Java Application Using Gradle
| Detail | Information |
|---|---|
| **Objective** | Build and run a Java application using Gradle build automation tool |
| **Tools** | Java 25, Gradle, Git |
| **Key Skills** | Build automation, dependency management, project structure |
| **Status** | ✅ COMPLETED |
| **Folder** | [`TASK3—Java_Application_Using_Gradle/`](./TASK3—Java_Application_Using_Gradle/) |

**Highlights:**
- Standard source directory structure followed
- Application plugin configured for easy execution
- Runnable JAR file generated for standalone deployment
- Clean build cycle: `clean` → `build` → `run` → `jar`

---

### 2. Task 4 — Web Server in Docker
| Detail | Information |
|---|---|
| **Objective** | Create a custom Docker image to run an Nginx web server with custom content |
| **Tools** | Docker, Nginx, HTML |
| **Key Skills** | Containerization, Dockerfile creation, port mapping, image management |
| **Status** | ✅ COMPLETED |
| **Folder** | [`Task4-WebServerinDocker/`](./Task4-WebServerinDocker/) |

**Highlights:**
- Custom Docker image built from official Nginx base image
- Custom HTML page served on container startup
- Container runs on port `8081` locally
- Fully portable — same behavior on any machine

---

## 🛠️ Environment Details
| Tool | Version |
|---|---|
| Operating System | Ubuntu (Linux) |
| Java | OpenJDK 25 |
| Gradle | Latest |
| Docker | Latest |
| Git | Latest |

---

## 📁 Repository Structure
CodeAlpha_Task/
├── README.md
├── TASK3—Java_Application_Using_Gradle/
│   ├── README.md
│   ├── build.gradle
│   └── src/
│       └── main/
│           └── java/
│               └── HelloCodeAlpha.java
└── Task4-WebServerinDocker/
├── README.md
├── Dockerfile
└── index.htmlplaintext
---

## 🚀 Quick Start Guide

### Clone This Repository
```bash

git clone https://github.com/MuhammadIslahUddin/CodeAlpha_Task.git

cd CodeAlpha_Task

Run Task 3 — Java + Gradlebashcd TASK3—Java_Application_Using_Gradle

gradle build

gradle run

Run Task 4 — Docker Web Serverbashcd Task4-WebServerinDocker

docker build -t my-custom-website .

docker run -d -p 8081:80 --name my-final-web my-custom-website

Then visit: http://localhost:8081🎓 Learning Outcomes

✅ Understand build automation and project lifecycles
✅ Master containerization concepts with Docker
✅ Write maintainable, professional documentation
✅ Version control workflow with Git & GitHub
✅ Deploy services locally and verify functionality
© 2026 Muhammad Islah Uddin


Completed as part of CodeAlpha Internship Program
