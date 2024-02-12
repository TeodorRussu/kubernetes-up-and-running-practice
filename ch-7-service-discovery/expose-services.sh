#!/bin/bash

#kubectl create deployment alpaca-prod --image=gcr.io/kuar-demo/kuard-amd64:blue --port=8080
kubectl apply -f alpaca-prod-deployment.yaml
kubectl scale deployment alpaca-prod --replicas 3
kubectl expose deployment alpaca-prod --type=NodePort
#kubectl expose deployment alpaca-prod --type=LoadBalancer

kubectl create deployment bandicoot-prod --image=gcr.io/kuar-demo/kuard-amd64:green --port=8080
kubectl scale deployment bandicoot-prod --replicas 2
kubectl expose deployment bandicoot-prod

kubectl get services -o wide