# nodejs-application

NodeJS-Application is an automated deployment setup for a containerized Node.js application. It integrates Ansible for infrastructure provisioning, Docker for containerization, and GitHub Actions for a seamless CI/CD pipeline. The setup ensures efficient deployment and maintenance while adhering to best practices for security and scalability.

# Key Features

Containerized Node.js Application:

**Serves dynamic data through endpoints using SQLite.**

Includes endpoints for adding and listing data.
Reverse Proxy with Nginx:

**Handles HTTP requests on port 80.**

Routes / to the Node.js application.
Routes /public to a Caddy file server.
Infrastructure as Code:

# Deployable on a vanilla Ubuntu 24.04 server using an Ansible playbook.

Utilizes Docker and Docker Compose for deployment.

**GitHub Actions CI/CD Workflow:**

Automatically builds and pushes Docker images on changes to the main or staging branches.

# Non-Privileged User Management:

**Allows designated users to manage deployments:**

View container logs.
Start/stop containers.
Trigger deployments or rollbacks.
Backup and restore container volumes.

# Project README

## Prerequisites

Before you begin, ensure you have the following software installed:

- **Ansible**: [Installation Guide](https://docs.ansible.com/ansible/latest/installation_guide/index.html)
- **Git Client**: [Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Steps to Deploy

1. **Clone the Repository**:
   Clone the repository using the following command:
   
   git clone https://github.com/haseemtether/nodejs-tether.git

2. **Navigate to the Repository Directory**
   Change to the directory where the repository was cloned
   Go to the Ansible Playbook Directory: Navigate to the directory containing the Ansible playbook:
   
   cd ansible-playbook
   
3. **Run the Ansible Playbook**

    Execute the Ansible playbook to deploy the application:
    ansible-playbook -i inventory.ini deploy.yml

 
