# 🚀 Node.js Sample App with CI/CD Pipeline using GitHub Actions & Docker

A simple Node.js web app that demonstrates how to automate build and deployment using **GitHub Actions** and **Docker Hub**. Every push to the `main` branch triggers a CI/CD workflow that builds a Docker image and pushes it to Docker Hub.

---

## 📦 Prerequisites

Make sure the following are installed on your system:

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)
- [Node.js](https://nodejs.org/)

---

## 🏁 Running the App Locally

```bash
git clone https://github.com/<your-github-username>/nodejs-demo-app.git
cd nodejs-demo-app
npm install
npm start
Visit: http://localhost:5000

**## 🐳 Running the App with Docker**

```bash
docker build -t <your-dockerhub-username>/nodejs-demo-app .
docker run -p 3000:5000 <your-dockerhub-username>/nodejs-demo-app

**## ⚙️ GitHub Actions CI/CD Workflow**

```bash
The GitHub Actions workflow is located at:
.github/workflows/main.yml


**### ✅ What it Does**

- ✅ Triggers on push to `main`
- 🛠️ Checks out the code
- 🐳 Sets up Docker Buildx
- 🔐 Logs in to Docker Hub using GitHub Secrets
- 📦 Builds the Docker image
- 🚀 Pushes it to Docker Hub
- 🔓 Logs out from Docker

---

**## 🔐 Setup GitHub Secrets**

Go to your repository → **Settings > Secrets and variables > Actions**, and add the following secrets:

| Name              | Description                        |
|-------------------|------------------------------------|
| `DOCKER_USERNAME` | Your Docker Hub username           |
| `DOCKER_PASSWORD` | Your Docker Hub password or token  |


**## 🧪 Trigger the Pipeline**

Any push to the `main` branch will automatically trigger the CI/CD workflow:

```bash
git add .
git commit -m "your message"
git push origin main

---

**## 📁 Project Structure**

nodejs-demo-app/
├── .github/
│   └── workflows/
│       └── main.yml          # GitHub Actions CI/CD pipeline
├── Dockerfile                # Docker container config
├── index.js                  # Node.js application file
├── package.json              # Node project dependencies
└── README.md                 # Project documentation

---

### 🙌 Acknowledgments
Built for learning purposes — demonstrating how to implement CI/CD using GitHub Actions and Docker in a Node.js environment.
