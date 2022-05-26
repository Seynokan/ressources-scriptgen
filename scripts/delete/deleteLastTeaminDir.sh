
#!/bin/bash

nbTeams=$(ls -l ../../teams_ns | grep -v ^d | wc -l);
let n=nbTeams-1
echo $n;

  rm ../../teams_ns/team$n;
  echo "Le fichier de l equipe $n a été supprimé";
