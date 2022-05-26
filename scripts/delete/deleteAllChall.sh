#!/bin/sh

alias kubectl="minikube kubectl --";

NBMinTeams=1
nbTeams=$(ls -l ../../teams_ns | grep -v ^d | wc -l);
let NBMaxTeams=nbTeams-1


  for (( n=$NBMinTeams; n<=$NBMaxTeams; n++ ));

do
  for file in ../../yaml_challenges/*;

  do
  filename="${file##*/}";
  finalname="${filename%%.*}"
  kubectl delete pod $finalname -n team$n;
  done
done
