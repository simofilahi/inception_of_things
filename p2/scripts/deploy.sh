cd /vagrant
curl https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.0/deploy/static/provider/cloud/deploy.yaml -O &&\
/usr/local/bin/k3s kubectl apply -f deploy.yaml
sudo docker build app1/. -t app-1-image
sudo docker build app2/. -t app-2-image
sudo docker build app3/. -t app-3-image
/usr/local/bin/k3s kubectl apply -f infra/app-deployment.yaml
/usr/local/bin/k3s kubectl apply -f infra/app-service.yaml
/usr/local/bin/k3s kubectl apply -f infra/app-ingress.yaml

