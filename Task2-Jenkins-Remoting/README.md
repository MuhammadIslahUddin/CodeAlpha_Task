# Task 2 — Jenkins Remoting Project 🤝

## 🎯 Objective
Set up distributed CI/CD pipeline with Jenkins Master + Remote Agent architecture.

## 🏗️ Architecture
JENKINS MASTER (port 8081)
│
▼ Secure WebSocket Connection
JENKINS AGENT (agent-01)
├── Executes jobs remotely
├── Isolated workspace
└── Scalable — add more agents anytime
plaintext

## ✅ Verification — SUCCESS OUTPUT
Building remotely on agent-01
✅ SUCCESS! Job running on AGENT-01
Node name: islah-Latitude-E7440
Working directory: /home/islah/.../jenkins-work/workspace/Test-Agent
Current time: Thu Sep 24 01:42:14 AM PKT 2026
Finished: SUCCESS ✅
plaintext

## ✅ What Was Accomplished
- ✅ Jenkins Master server installed & configured at http://localhost:8081
- ✅ Admin user created & set up
- ✅ Agent node `agent-01` registered & connected via WebSocket
- ✅ Custom workspace path configured → permission issues resolved
- ✅ Test job built **remotely on agent-01** — SUCCESS ✅
- ✅ Master delegates → Agent executes → Results reported back

## 🧠 Key Concepts Learned
- **Master/Agent Pattern** → Central controller + distributed workers
- **Remoting Protocol** → WebSocket-based connection (works through firewalls)
- **Label Assignment** → `agent-01` label routes jobs to specific node
- **Workspace Isolation** → Each agent runs in dedicated directory
- **Scalability** → Add agents to handle more jobs in parallel

## 📁 Project Files
- `README.md` — This documentation
- `agent.jar` — Jenkins remoting agent binary
- `jenkins-work/` — Agent workspace directory

## 🚀 How to Restart Later
**Terminal 1 — Start Master:**
```bash
docker start jenkins-master
# Open: http://localhost:8081
Terminal 2 — Start Agent:
bash
cd ~/CodeAlpha_Task/Task2-Jenkins-Remoting
java -jar agent.jar \
  -url http://localhost:8081/ \
  -secret 7e635476ea5c211187187d9af497177a15a2d7833b4136927f34e8adfc02f54b \
  -name "agent-01" \
  -webSocket \
  -workDir "/home/islah/CodeAlpha_Task/Task2-Jenkins-Remoting/jenkins-work"
# Keep this terminal open!
✅ Status
Master: Online ✅ | Agent-01: Connected ✅ | Test Job: SUCCESS ✅ | Complete 🟢
