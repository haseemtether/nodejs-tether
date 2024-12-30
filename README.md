# nodejs-tether
An automated deployment setup for a containerized NodeJS application.
# Project README

## Prerequisites

Before you begin, ensure you have the following software installed:

- **Ansible**: [Installation Guide](https://docs.ansible.com/ansible/latest/installation_guide/index.html)
- **Git Client**: [Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Steps to Deploy

1. **Clone the Repository**:
   Clone the repository using the following command:
   
   git clone <repo-url>

2. **Navigate to the Repository Directory**
    Change to the directory where the repository was cloned
   Go to the Ansible Playbook Directory: Navigate to the directory containing the Ansible playbook:
   cd ansible-playbook
   
3. **Run the Ansible Playbook**

    Execute the Ansible playbook to deploy the application:
    ansible-playbook -i inventory.ini deploy.yml

**Continuous Integration (CI) Workflow**
The repository also includes a CI workflow. As soon as there is a push to the main or staging branches, a new image will automatically be pushed to the private container registry.
 
