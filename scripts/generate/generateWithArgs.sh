
#!/bin/bash

alias kubectl="minikube kubectl --";


NBMinTeams=1
nbTeams=$(ls -l ../../teams_ns | grep -v ^d | wc -l);
let NBMaxTeams=nbTeams-1


path="../../yaml_challenges/"
ext=".yaml"

  for (( n=$NBMinTeams; n<=$NBMaxTeams; n++ ));

  do
  kubectl create namespace team$n
  for var in "$@";

do
  file=$path$var$ext


  echo "$n "
  kubectl apply -f "$file" -n team$n;
  done
done




