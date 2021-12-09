

# docker installation
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm -rf get-docker.sh
systemctl restart docker


# kubectl installation
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv kubectl /usr/local/bin/.

# k3d installation
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash

# creating a cluster
k3d cluster create dev-cluster --port 8080:80@loadbalancer --port 8443:443@loadbalancer \
  --k3s-arg "--disable=traefik@server:0" \
  --verbose

# argocd installation
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
chmod +x /usr/local/bin/argocd
sudo modprobe ip_tables
sudo echo 'ip_tables' >> /etc/modules
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}




