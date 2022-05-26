 
#!/bin/bash

alias kubectl="minikube kubectl --";

kubectl get namespace | grep team
