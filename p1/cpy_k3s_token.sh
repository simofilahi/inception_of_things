echo "Copying k3s server token started"
vagrant ssh mfilahiS -c "sudo cat /var/lib/rancher/k3s/server/node-token" > ./token