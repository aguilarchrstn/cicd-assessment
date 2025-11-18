# cicd-assessment
cicd-assessment

CI/CD Assessment

This repository contains a simple project with a CI/CD pipeline using GitHub Actions.

📌 CI/CD Pipeline (GitHub Actions)

The workflow does the following:

Installs dependencies

Runs tests

Mock deployment step
→ echo "Deploying..."

The workflow file is located in:
.github/workflows/ci.yml

🚀 How to Trigger

Just push any commit and the pipeline runs automatically.



🖥️ Linux & Scripting
1. Disk Usage Monitoring Script

This script checks the system’s disk usage and sends an email alert if it goes above 80%.
It works by:

Getting the current disk usage percentage

Comparing it to the 80% threshold

Sending an email alert if the limit is exceeded

Otherwise, printing that disk usage is normal

2. What chmod +x script.sh Does

The command chmod +x script.sh gives the script execute permission, which allows it to be run directly using:
./script.sh
