#this script is to print random numbers from 1 to 10 on terminal
# Usage : sh random.sh 1 10
# Range starts from 1 and ends at 10

#! /bin/bash

i=0; 
while [ $i -lt 10  ]; do 

  task=$RANDOM; 
  if [ $task -gt $1 ] && [ $task -lt $2  ]; then 
      echo $task; 
  else continue; 
  fi;
  i=$((i+1));

done

