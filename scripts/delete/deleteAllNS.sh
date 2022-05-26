
#!/bin/bash

alias kubectl="minikube kubectl --";


NBMinTeams=1
nbTeams=$(ls -l teams_ns | grep -v ^d | wc -l);
let NBMaxTeams=nbTeams-1

  for (( n=$NBMinTeams; n<=$NBMaxTeams; n++ ));

  do

  echo "$n "
  kubectl delete namespace team$n;
  done



