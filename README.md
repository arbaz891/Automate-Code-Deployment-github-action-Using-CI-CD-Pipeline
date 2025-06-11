# Node.js Sample App with CI/CD Pipeline using GitHub Actions and Docker

A simple Node.js app with an automated CI/CD pipeline that builds and pushes a Docker image to Docker Hub whenever you push to the `main` branch.

---

## Getting Started

### Prerequisites

Make sure you have the following installed:

- [Git](https://git-scm.com/)
- [Docker](https://docs.docker.com/get-docker/)
- [Node.js](https://nodejs.org/) (for local testing)

---

### Running Locally

```bash
git clone https://github.com/<your-github-username>/nodejs-demo-app.git
cd nodejs-demo-app
npm install
npm start

The app will run at http://localhost:5000.

---

### Running with Docker
Build and run the Docker container locally:

```bash
docker build -t <dockerhub-username>/nodejs-demo-app .
docker run -p 5000:5000 <dockerhub-username>/nodejs-demo-app

Visit http://localhost:5000 to see the app.

---

### CI/CD Pipeline with GitHub Actions
This repo contains a GitHub Actions workflow located at .github/workflows/main.yml which does the following on every push to the main branch:

Checks out the repo

Sets up Docker Buildx builder

Logs into Docker Hub using secrets stored in the repo settings

Builds the Docker image

Pushes the image to Docker Hub (<dockerhub-username>/nodejs-demo-app:latest)

Logs out from Docker Hub

---

### Setting up GitHub Secrets

```bash
Go to your repo’s Settings > Secrets and variables > Actions and add:

Secret Name	Description
DOCKER_USERNAME	Your Docker Hub username
DOCKER_PASSWORD	Your Docker Hub password or token

---

### How to Trigger Deployment

Commit and push your changes to the main branch:

git add .
git commit -m "Your commit message"
git push origin main
-This will trigger the GitHub Actions workflow to build and deploy your updated Docker image automatically.

---

### Project Structure

```bash

nodejs-demo-app/
├── .github/
│   └── workflows/
│       └── main.yml            # GitHub Actions pipeline
├── Dockerfile                  # Dockerfile to containerize app
├── index.js                    # Node.js app entry point
├── package.json                # Node.js dependencies and scripts
└── README.md                   # Project documentation
