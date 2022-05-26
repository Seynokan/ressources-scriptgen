
#!/bin/bash

alias kubectl="minikube kubectl --";

for var in "$@";
do

nbns=$var

kubectl get pods -n team$nbns
done
