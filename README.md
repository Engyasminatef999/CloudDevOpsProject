
# Cloud DevOps Project
مشروع تخرّج: تطبيق Flask (Python) مع CI/CD وInfrastructure as Code


## المتطلبات
- Docker
- Minikube
- kubectl
- terraform
- ansible
- jenkins (اختياري لو هتشغلي pipeline محلياً)


## خطوات سريعة للتشغيل على الماك/لينكس مع Minikube


1. شغّلي minikube
```bash
minikube start --driver=docker

بنِ الصورة وادخلي DockerHub (docker login)
docker build -t yasminatef/flask-app:latest .
docker push yasminatef/flask-app:latest

طبّقي موارد Kubernetes

kubectl apply -f kubernetes/namespace.yaml
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml

اعرضي NodePort

kubectl get svc -n ivolve
minikube service flask-service -n ivolve --url

CI/CD

Jenkinsfile موجود تحت /jenkins/Jenkinsfile.

أضيفي DockerHub credentials في Jenkins كـ username/password under id dockerhub-cred.

Infra

سكربتات Terraform داخل /terraform.

Ansible

جربّي التشغيل على EC2 عبر dynamic inventory.


