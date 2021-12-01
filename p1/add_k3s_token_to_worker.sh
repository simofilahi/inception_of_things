echo "Start copying token to the worker ..."
ssh-keyscan -t rsa 192.168.42.111 > ~/.ssh/known_hosts 
scp token vagrant@192.168.42.111:/vagrant/.