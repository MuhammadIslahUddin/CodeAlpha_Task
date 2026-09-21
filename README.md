# CodeAlpha_Task
# Task 4 — Web Server in Docker 🐳

> **Internship:** CodeAlpha · DevOps Domain
> **Status:** ✅ COMPLETED
> **Submitted by:** Muhammad Islah Uddin

---

## 📌 Table of Contents
- [Objective](#-objective)
- [What Is Docker](#-what-is-docker)
- [Technologies Used](#-technologies-used)
- [Project Structure](#-project-structure)
- [Dockerfile Explained](#-dockerfile-explained)
- [Setup & Deployment](#-setup--deployment)
- [Troubleshooting](#-troubleshooting)
- [Commands Reference](#-commands-reference)
- [Key Concepts Learned](#-key-concepts-learned)

---

## 🎯 Objective
Build a custom Docker image that packages an Nginx web server with a custom HTML page. Run the container and access the website through your browser.

---

## 🤔 What Is Docker?
Docker packages software into **containers** — everything the app needs (code, server, settings) is included. It runs exactly the same on every computer — "It works on my machine" becomes "It works everywhere".

---

## 🛠️ Technologies Used
| Tool | Purpose |
|---|---|
| **Docker** | Container platform |
| **Nginx** | High-performance web server |
| **HTML** | Web page content |
| **Git** | Code sharing & version control |

---

## 📁 Project Structure


Task4-WebServerinDocker/
├── README.md
├── Dockerfile
└── index.html
plaintext

---

## 📝 Files Content

### Dockerfile
```dockerfile
FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY index.html .
EXPOSE 80
index.html
html
Preview
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CodeAlpha — Docker Web Server</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background: linear-gradient(135deg, #007bff, #00d4aa);
            color: white;
            min-height: 100vh;
            margin: 0;
        }
        .container {
            background: rgba(255,255,255,0.1);
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 8px 32px rgba(0,0,0,0.2);
        }
        h1 { font-size: 2.5em; margin-bottom: 10px; }
        .status { color: #90EE90; font-weight: bold; font-size: 1.2em; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🚀 Welcome to CodeAlpha Intern!</h1>
        <p style="font-size: 1.3em;">Docker Web Server Successfully Deployed</p>
        <p class="status">✅ CONTAINER RUNNING</p>
        <p><strong>Intern:</strong> Muhammad Islah Uddin</p>
        <p><strong>Task:</strong> Web Server in Docker</p>
        <p><strong>Tech:</strong> Nginx + Docker</p>
    </div>
</body>
</html>

🚀 Step-by-Step Deployment
Step 1 — Check Docker
bash
docker --version
Step 2 — Go to Project Folder
bash
cd Task4-WebServerinDocker
Step 3 — Build Image
bash
docker build -t my-custom-website .
Step 4 — See Your Image
bash
docker images
Step 5 — Clean Old Containers
bash
docker rm -f my-final-web 2>/dev/null || true
Step 6 — Run Your Website
bash
docker run -d -p 8081:80 --name my-final-web my-custom-website
Step 7 — Check It's Running
bash
docker ps
Step 8 — Open in Browser
plaintext
http://localhost:8081
⌨️ Commands Reference

Table
Command	What It Does
docker build -t name .	Build image from Dockerfile
docker images	List all saved images
docker ps	Show running containers
docker ps -a	Show all containers
docker stop name	Stop a running container
docker start name	Start a stopped container
docker rm -f name	Force delete a container
docker rmi name	Delete an image
docker logs name	See container output

🔧 Troubleshooting

❌ "Container name already in use"
bash
docker rm -f my-final-web
Then run your container again.

❌ "Port already in use"

Use different port:
bash
docker run -d -p 8082:80 --name my-final-web my-custom-website
Then open http://localhost:8082


❌ Website not loading

Check: docker ps → see if your container is there
Restart: docker restart my-final-web
Rebuild: docker build -t my-custom-website . then run again

💡 Key Concepts Learned
Table
Concept	Explanation
Image vs Container	Image = blueprint; Container = running instance
Port Mapping	-p 8081:80 connects your computer to the container
Isolation	Container has its own system — clean and safe
Consistency	Runs the same on every machine
Lightweight	Starts in seconds, uses very little memory

✅ Verification Checklist

 Dockerfile created correctly

 Custom HTML page designed

 docker build succeeds

 Container runs in background

 Website opens at localhost:8081

 Code pushed to GitHub

 Documentation complete

Task Completed: ✅ September 2026

Submitted By: Muhammad Islah Uddin
