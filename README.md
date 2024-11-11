## A. Run the Scripts Directly

# To run the scripts directly without Docker:

```bash
# Run the Bash script
bash bash-script.sh

# Run the Python script
python3 python-script.p

# Project Setup and Execution Guide


## B. Run the Python Scripts in a Docker Container

### 1. Install Docker

# To install Docker on your system, run the following commands:

```bash
sudo apt update
sudo apt install docker



# Build the Docker image
docker build -f Dockerfile-python -t img-python .

# Run the container
docker run -d --name cont-python img-python

# Check the logs
docker logs cont-python



# To run the Bash script in a Docker container, use the following steps:

```bash
# Build the Docker image
docker build -f Dockerfile-bash -t img-bash .

# Run the container
docker run -d --name cont-bash img-bash

# Check the logs
docker logs cont-bash

# To cleanup all the resources created by Docker:

# Stop the containers
docker stop cont-python cont-bash

# Remove the containers
docker rm cont-python cont-bash

# Remove the images
docker rmi img-python img-bash



## C. Run the Scripts in a Docker Compose Deployment

# Install Docker Compose

```bash
sudo apt update
sudo apt install docker-compose


# Build and start the Docker Compose services

docker-compose build
docker-compose up -d

# Check the logs
docker-compose logs


# To cleanup all the resources created by Docker Compose:

# Bring down the Docker Compose services
docker-compose down

# Remove the images
docker rmi devops-itschool-project_python-service devops-itschool-project_bash-service



## D. Run Playbooks Using Ansible

# To install Ansible on your system, run the following commands:

```bash
sudo apt update
sudo apt install ansible

# Run the deployment playbook
ansible-playbook -i inventory deploy-playbook.yaml --ask-become-pass

# Run the cleanup playbook
ansible-playbook -i inventory cleanup-playbook.yaml --ask-become-pass

