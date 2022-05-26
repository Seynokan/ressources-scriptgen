 

#!/bin/bash

for var in "$@";
  do
  n=$var

  rm ../../teams_ns/team$n;
  echo "Le fichier de l equipe $n a été supprimé";

done