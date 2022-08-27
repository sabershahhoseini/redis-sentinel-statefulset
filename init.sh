kubectl create ns redis
kubectl apply -f sc.yaml
kubectl apply -f pv.yaml
kubectl apply -n redis -f redis-configmap.yaml
kubectl apply -n redis -f redis-statefulset.yaml
echo 'Waiting 15 seconds for pods to initialize ...'
sleep 15
kubectl apply -n redis -f sentinel-statefulset.yaml
echo 'You\'re all set!'
