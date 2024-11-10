A. 

bash bash-script.sh 

python3 python-script.py 


B. 

docker build -f Dockerfile-python -t img-python .

docker run -d --name cont-python img-python

docker logs cont-python


docker build -f Dockerfile-bash -t img-bash .

docker run -d --name cont-bash img-bash

docker logs cont-bash


docker stop cont-python cont-bash

docker rm cont-python cont-bash

docker rmi img-python img-bash


C. 

docker-compose build

docker-compose up -d

docker-compose logs

docker-compose down

docker rmi devops-itschool-project_python-service devops-itschool-project_bash-service


D. 

ansible-playbook -i inventory deploy-playbook.yaml --ask-become-pass

ansible-playbook -i inventory cleanup-playbook.yaml --ask-become-pass
