cd /vagrant
sudo docker build app1/. -t app-1-image
sudo docker build app2/. -t app-2-image
sudo docker build app3/. -t app-3-image
/usr/local/bin/k3s kubectl apply -f infra/app-deployment.yaml
/usr/local/bin/k3s kubectl apply -f infra/app-ingress.yaml
/usr/local/bin/k3s kubectl apply -f infra/app-service.yaml