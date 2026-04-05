#  MedeX_End-to-End

## MedeX: End-to-End Medical Chatbot (AWS Deployment)

An end-to-end **Medical Chatbot** powered by LLMs, deployed using **AWS CI/CD pipelines**, leveraging **LangChain, Pinecone, and OpenAI**.

---

## 📌 How to Run the Project

### 🔽 Step 0: Clone the Repository

```
git clone https://github.com/DhirajBembade/MedeX_End-to-End.git
cd MedeX_End-to-End
```

---

## ⚙️ Step 1: Create & Activate Environment

Choose **any ONE** method:

### 🔹 Option 1: Conda

```
conda create -n medexbot python=3.10 -y
conda activate medexbot
```

### 🔹 Option 2: Python venv

```
python -m venv medexbot
```

**Activate Environment**

macOS / Linux:

```
source medexbot/bin/activate
```

Windows:

```
medexbot\Scripts\activate
```

### 🔹 Option 3: uv (Recommended ⚡)

```
uv venv --python 3.11
```

**Activate Environment**

macOS / Linux:

```
source .venv/bin/activate
```

Windows:

```
.venv\Scripts\activate
```

---

## 📦 Step 2: Install Dependencies

```
pip install -r requirements.txt
```

or (faster):

```
uv pip install -r requirements.txt
```

---

## 🔐 Step 3: Setup Environment Variables

Create a `.env` file in root directory:

```
PINECONE_API_KEY= "pcsk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
OPENAI_API_KEY= "sk -xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
```

---

## 🧠 Step 4: Store Embeddings in Pinecone

```
python store_index.py
```

---

## ▶️ Step 5: Run the Application

```
python app.py
```

---

## 🌐 Access the App

Open in browser:

```
http://localhost:8080
```

---

## 🧰 Tech Stack

* Python
* LangChain
* Flask
* OpenAI GPT
* Pinecone
* AWS (EC2, ECR, CI/CD)

---

# ☁️ AWS CI/CD Deployment Guide

## 🔐 Step 1: Login to AWS Console

## 👤 Step 2: Create IAM User

Required Permissions:

* AmazonEC2FullAccess
* AmazonEC2ContainerRegistryFullAccess

---

## 📦 Step 3: Create ECR Repository

```
<your-account-id>.dkr.ecr.<region>.amazonaws.com/medicalbot
```
---

## 🖥️ Step 4: Launch EC2 Instance (Ubuntu)

---

## 🐳 Step 5: Install Docker on EC2

```
sudo apt-get update -y
sudo apt-get upgrade -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo usermod -aG docker ubuntu
newgrp docker
```

---

## 🔄 Step 6: Configure Self-Hosted GitHub Runner

Go to:
Repo → Settings → Actions → Runners → New Self-Hosted Runner
Run the provided commands on EC2. 

```
## 🔧 GitHub Actions Runner — Troubleshooting

#If the self-hosted runner shows Offline or Not Idle in GitHub Actions, SSH into the EC2 instance and start the runner manually:

cd actions-runner && ./run.sh

#To keep it running permanently (survives reboots):

sudo ./svc.sh install
sudo ./svc.sh start

```
---

## 🔑 Step 7: Setup GitHub Secrets

```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION
ECR_REPO
PINECONE_API_KEY
OPENAI_API_KEY
```

---

## 🚀 Deployment Workflow

* Build Docker image
* Push to ECR
* Launch EC2
* Pull image on EC2
* Run container

---

## ✅ Final Output

* Medical Chatbot running locally & on AWS
* Scalable deployment
* Fast retrieval using vector search

---

## 💡 Future Improvements

* Authentication
* UI (React / Streamlit)
* Multi-document support
* RAG optimization
