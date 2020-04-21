ls -lrt
sudo apt get update
sudo apt update
sudo apt install docker.io
sudo docker pull cassandra:latest
sudo docker run --name cassandraapp -p 9042:9042 -d cassandra:latest
sudo docker exec -it cassandraapp cqlsh
vim app.py
vim requirements.txt
vim Dockerfile
mkdir templates
vim templates/welcome.html
vim templates/login.html
vim templates/movieview.html
vim templates/signup.html
vim templates/actorview.html
ls -lrt
vim templates/actorview.html 
sudo docker build . --tag=cassandraapp:v1
vi requirements.txt 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
ls -lrt
cd templates/
ls -lrt
vi signup.html 
vi login.html 
cd ..
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
sudo apt update
sudo apt install docker.io
sudo snap install microk8s -classic
sudo snap install microk8s --classic
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64   && chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
eval $(minikube docker-env)
sudo docker build . --tag=cassandraapp:v2
eval $(minikube docker-env)
ls -lrt
sudo docker ps
sudo docker build . --tag=cassandraapp:v2
sudo docker run -p 80:80 cassandraapp:v2
sudo docker ps
sudo microk8s.kubectl run my-app --image=cassandraapp:v2 --port=80 --image-pull-policy=Never
sudo microk8s.kubectl get pods
sudo microk8s.kubectl run my-app --image=cassandraapp:v2 --port=80
sudo microk8s.kubectl get pods
sudo microk8s.kubectl delete deployment my-app
sudo microk8s.kubectl get pods
sudo microk8s.kubectl run my-app --image=cassandraapp:v2
sudo microk8s.kubectl run my-app1 --image=cassandraapp:v2
sudo microk8s.kubectl get pods
ls -lrt
cd minikube
minikube start
ls -lrt
vi app.py 
cd templates/
cd ..
vim templates/welcome.html 
history | grep casandra
history | grep cassandra
<button type="submit" class="btn btn-danger" onClick="parent.location='http://ec2-23-22-24-111.compute-1.amazonaws.com/logout'">Logout</button>
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vim templates/welcome.html 
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
sudo docker images
sudo docker ps
pwd
sudo docker save -o /home/ubuntu/myapp.tar cassandraapp:v1
ls -lrt
sudo docker load -i myapp.tar
sudo microk8s.kubectl run my-app-v1 --image=cassandraapp:v1 --port=80
sudo microk8s.kubectl get pods
eval $(minikube docker-env)
sudo microk8s.kubectl run my-app-v2 --image=cassandraapp:v1 --port=80
sudo microk8s.kubectl get pods
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vim templates/user.html
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker run -p 80:80 cassandraapp:v1
vi templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
docker login
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
vim templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
vi templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
minikube ssh
minikube start
sudo apt -y  install software-properties-common
sudo add-apt-repository -y ppa:projectatomic/ppa
sudo apt update
sudo apt -y install podman
minikube start
ls -lrt
vi app.py 
vi templates/
vim templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi templates/welcome.html 
ls -lrt
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
ps -e
sudo kill -9 22016 22070
sudo docker run -p 80:80 cassandraapp:v1
vi templates/welcome.html 
vi templates/user.html 
vi app.py 
sudo docker run -p 80:80 cassandraapp:v1
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
vi templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi templates/welcome.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
ls -lrt
vi app.py 
vi templates/userdetails.html
sudo docker build . --tag=cassandraapp:v1
ls -lrt
sudo rm -r myapp.tar 
sudo rm -r minikube 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
ls -lrt
vi app1.py
vim templates/user.html 
vi Dockerfile 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
ps -e
sudo kill -9 22194 22241
ls  -lrt
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app1.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app1.py 
sudo docker build . --tag=cassandraapp:v1
ls -lrt
sudo docker inspect
sudo docker ps
vi Dockerfile 
sudo docker build . --tag=cassandraapp:v1
ps -e
sudo kill -9 31281 31326
ls -lrt
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
vi app.py 
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
vi templates/actorview.html 
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
ps -e
sudo kill -9 31676 31728
ls -lrt
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
cd templates/
ls -lrt
less userdetails.html
vi userdetails.html 
sudo docker build . --tag=cassandraapp:v1
cd ..
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
ls -lrt
cd templates/
ls -lrt
less userdetails.html
vi userdetails.html 
cd
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
cd templates/
ls -lrt
vi userdetails.html
ccd
cd
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
cd templates/
ls -lt
vi userdetails.html
cd ..
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
cd templates/userdet
vim templates/userdetails.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
vim templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
sudo docker ps
ls -lrt
pwd
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
v Dockerfile 
vi Dockerfile 
ls -lrt
cd doc
vi Dockerfile 
sudo docker build . --tag=cassandraapp:v1
sudo docker system prune -all
df -k
sudo rm -r /snap/microk8s/1341
df -k
sudo docker ps -a -q
ps -a
docker sudo ps
sudo docker ps
sudo docker ps -a
sudo kill -9 4a52d0033876
sudo docker rm 46247894ebea
sudo docker rm 891dba76e5df
sudo docker rm 21a0d26f9dac
sudo docker rm a3315d580b94 69951947195b 00081e1627c3 4f8521b7d388
sudo docker rm 74afe3df5684 533e90203b2c c7f23d3172ab
sudo docker build . --tag=cassandraapp:v1
docker system prune --all --force --volumes
sudo docker system prune --all --force --volumes
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi templates/user.html 
vi app1.py 
vi Dockerfile 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app1.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app1.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app1.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app1.py 
vi Dockerfile 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi templates/user.html 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -p 80:80 cassandraapp:v1
ls -lrt
openssl req -x509 -newkey rsa:4096 -nodes -out cert.pem -keyout key.pem -days 365 
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -dp 443:443 cassandraapp:v1
ls -lrt
vi app.py 
sudo docker build . --tag=cassandraapp:v1
sudo docker run -dp 443:443 cassandraapp:v1
ps -e
sudo kill -9 9259
sudo kill -9 7441 7666
sudo docker run -dp 443:443 cassandraapp:v1
ps -e
sudo kill -9 16132 16156
sudo docker run -dp 443:443 cassandraapp:v1
ps -e
suod kill -9 19132 19135
sudo kill -9 19132 19135
sudo docker run -p 443:443 cassandraapp:v1
ps -e
sudo kill -9 19553 19558
sudo docker build . --tag=cassandraapp:v1
vi app.py 
ps -e
sudo kill -9 20046 20051
sudo docker run -dp 443:443 cassandraapp:v1
ls -lrt
sudo docker exec -it  cassandraapp cqlsh
