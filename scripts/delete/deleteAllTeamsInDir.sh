
#!/bin/bash


NBMinTeams=1
nbTeams=$(ls -l ../../teams_ns | grep -v ^d | wc -l);
let NBMaxTeams=nbTeams-1
echo $NBMaxTeams;
for (( n=$NBMinTeams; n<=$NBMaxTeams; n++ ));
  do
  rm ../../teams_ns/team$n;
  echo "Le fichier de l equipe $n a été supprimé";

done
