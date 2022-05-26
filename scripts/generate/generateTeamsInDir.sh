 
#!/bin/bash

NBMinTeams=1
NBMaxTeams=$1

for (( n=$NBMinTeams; n<=$NBMaxTeams; n++ ));

  do
  echo "Le fichier de l equipe $n a été généré"
  touch ../../teams_ns/team$n

done

