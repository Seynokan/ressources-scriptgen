
#!/bin/bash

alias kubectl="minikube kubectl --";


chall=$1
nbns=$2

kubectl delete pod $chall -n team$nbns;
