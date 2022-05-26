
#!/bin/bash


nbTeams=$(ls -l ../../teams_ns | grep -v ^d | wc -l);
let NBTEAMS=nbTeams-1
echo $NBTEAMS

