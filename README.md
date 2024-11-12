# A. Raw Scripts

## Run the Scripts Directly:

###  Run the Bash script

```bash
bash bash-script.sh
```

###  Run the Python script

```bash
python3 python-script.py
```


# B. Docker

## Run the Python Scripts in a Docker Container:

###   Install Docker

```bash
sudo apt update
sudo apt install docker
```



###   Build the Docker image

```bash
docker build -f Dockerfile-python -t img-python .
```

###   Run the container

```bash
docker run -d --name cont-python img-python
```

###   Check the logs

```bash
docker logs cont-python
```


## Run the Bash Scripts in a Docker Container:


###   Build the Docker image

```bash
docker build -f Dockerfile-bash -t img-bash .
```

###   Run the container
```bash
docker run -d --name cont-bash img-bash
```

###   Check the logs

```bash
docker logs cont-bash
```

##  Cleanup all the resources created by Docker:

###   Stop the containers

```bash
docker stop cont-python cont-bash
```
###   Remove the containers

```bash
docker rm cont-python cont-bash
```

###   Remove the images

```bash
docker rmi img-python img-bash
```


# C. Docker Compose 

## Run the scripts in a Docker Compose Deplyoment:

###   Install Docker Compose

```bash
sudo apt update
sudo apt install docker-compose
```


###   Build and start the Docker Compose services

```bash
docker-compose build
docker-compose up -d
```

###   Check the logs

```bash
docker-compose logs
```


## To cleanup all the resources created by Docker Compose:

###   Bring down the Docker Compose services

```bash
docker-compose down
```

###   Remove the images

```bash
docker rmi devops-itschool-project_python-service devops-itschool-project_bash-service
```

# D. Ansible

## Run Playbooks Using Ansible:

### Install Ansible

```bash
sudo apt update
sudo apt install ansible
```

###   Run the deployment playbook

```bash
ansible-playbook -i  inventory deploy-playbook.yaml -k -K
```

###  Run the cleanup playbook

```bash
ansible-playbook -i inventory cleanup-playbook.yaml -k -K 
```


