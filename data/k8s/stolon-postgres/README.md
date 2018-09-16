#original stolon chart from here
https://github.com/lwolf/stolon-chart/tree/master/stolon

#Install
cd stolon-chart
helm dep build
helm install --name global-postgres .

#Get password
PGPASSWORD=$(kubectl get secret --namespace default global-postgres-stolon -o jsonpath="{.data.pg_su_password}" | base64 --decode; echo)

#Expose to world, if needed
kubectl apply -f stolon-proxy-service.yaml

#Remove
helm del --purge global-postgres;