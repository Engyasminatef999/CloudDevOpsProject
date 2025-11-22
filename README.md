
# Cloud DevOps Project
مشروع تخرّج: تطبيق Flask (Python) مع CI/CD وInfrastructure as Code


## المتطلبات
- Docker
- Minikube
- kubectl
- terraform
- ansible
- jenkins



```bash
minikube start --driver=docker

ي DockerHub (docker login)
docker build -t yasminatef/flask-app:latest .
docker push yasminatef/flask-app:latest

د Kubernetes

kubectl apply -f kubernetes/namespace.yaml
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml

 NodePort

kubectl get svc -n ivolve
minikube service flask-service -n ivolve --url

CI/CD

Jenkinsfile موجود تحت /jenkins/Jenkinsfile.

 DockerHub credentials في Jenkins كـ username/password under id dockerhub-cred.

Infra

 Terraform داخل /terraform.

Ansible

 EC2 عبر dynamic inventory.


المشروع عبارة عن Pipeline كاملة تشمل:

Python Flask Application

Containerization باستخدام Docker

Orchestration باستخدام Kubernetes (Minikube)

Infrastructure-as-Code باستخدام Terraform (AWS for Jenkins EC2 + Network)

Configuration Management باستخدام Ansible

CI باستخدام Jenkins

CD باستخدام ArgoCD

Monitoring & Logs through Minikube + AWS CloudWatc

GitOps Workflow (Jenkins updates manifests → ArgoCD sync)
