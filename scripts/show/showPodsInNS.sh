
#!/bin/bash

alias kubectl="minikube kubectl --";

nbns=$1

kubectl get pods -n team$nbns
