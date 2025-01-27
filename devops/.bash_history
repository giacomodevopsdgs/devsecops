cd /root
ls
cd conjur/write-to-secret/
conjur login
conjur login -a <Account> -u <User> -p <Password> -c <ApplianceURL>
conjur login -a dgsspa -u admin  -c https://conjur-cluster.lab
conjur init -a dgsspa -u https://conjur-cluster.lab
conjur init -a dgsspa -u https://conjur-cluster.lab --self-signed
conjur login - -u admin 
conjur login  -u admin 
conjur login  -i admin 
ls
conjur policy load -b root -f host-devsecops.yml 
ku
ls
ls
cd ..
ls
cd eso/
ls
kubectl apply conjur-external-secret.yaml 
kubectl apply -f conjur-external-secret.yaml 
kubectl apply -f conjur-secret-store.yaml 
kubectl delete -f conjur-external-secret.yaml 
kubectl apply -f conjur-external-secret.yaml 
cd host/
conjur policy load -f test-app.yaml -b app-path
ls
conjur policy load -f test-app-eso.yaml -b app-path
conjur policy load -f test-app-eso.yml -b app-path
cat test-app-eso.yml 
conjur policy load -f test-app-eso.yml -b app-path
conjur policy load -f test-app-eso.yml -b app-path
conjur policy load -f grant-app-access.yaml -b root
conjur policy load -f grant-secrets-access.yaml -b root
cd ..
ls
kubectl apply -f conjur-secret-store.yaml 
kubectl delete -f conjur-external-secret.yaml
kubectl apply -f conjur-external-secret.yaml
cd ..
ls
cd eso
ls
conjur policy load -f grant-secrets-access.yaml -b root
ls
cd host/
conjur policy load -f grant-secrets-access.yaml -b root
cd ..
ls
kubectl apply -f .
kubectl delete -f conjur-external-secret.yaml
kubectl apply -f conjur-external-secret.yaml
kubectl apply -f conjur-external-secret.yaml
cd ..
ls
cd ..
cd k8s/
ls
kubectl apply -f backend.yaml 
cd ../conjur
ls
cd eso/
cd ..
kubectl apply -d .
kubectl apply -f .
kubectl apply -f .
ls
kubectl apply -f ./eso/
ls
cd ..
ls
cd k8s
ls
kubectl apply -f frontend.yaml 
kubectl apply -f ingress.yaml 
kubectl delete -f ingress.yaml 
kubectl apply -f ingress.yaml 
kubectl delete -f ingress.yaml 
kubectl apply -f ingress.yaml 
kubectl apply -f frontend.yaml 
kubectl apply -f backend.yaml.yaml 
kubectl apply -f backend.yaml
cd ..
cd conjur/cloudguard/
ls
conjur policy load -f cg-secrets.yml -b root
history | grep conjur
cd /root/conjur
ls
cd ..
ls
cd conjur
ls
cd eso
ls
cd k8s-config/
ls
kubectl apply -f conjur-secret-store.yaml 
kubectl apply -f conjur-external-secret.yaml 
