
#!/bin/bash
alias kubectl="minikube kubectl --";


NBMinTeams=1
nbTeams=$(ls -l ../../teams_ns | grep -v ^d | wc -l);
let NBMaxTeams=nbTeams-1



while [ true ];
do
 for (( n=$NBMinTeams; n<=$NBMaxTeams; n++ ));
do
echo "$n "
kubectl create namespace team$n

for file in ../../yaml_challenges/*;
  do
  kubectl apply -f "$file" -n team$n;
  echo "$file";
done


done
sleep 5
done
