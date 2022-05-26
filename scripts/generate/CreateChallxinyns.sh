
#!/bin/bash

alias kubectl="minikube kubectl --";


chall=$1
nbns=$2

path="../../yaml_challenges/"
ext=".yaml"


  kubectl create namespace team$nbns

  file=$path$chall$ext


  kubectl apply -f "$file" -n team$nbns;
