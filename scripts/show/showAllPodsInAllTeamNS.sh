
#!/bin/sh

alias kubectl="minikube kubectl --";
NBMinTeams=1
nbTeams=$(ls -l ../../teams_ns | grep -v ^d | wc -l);
let NBMaxTeams=nbTeams-1

  for (( n=$NBMinTeams; n<=$NBMaxTeams; n++ ));
do
echo "namespace team$n";
kubectl get pods -n team$n

done
