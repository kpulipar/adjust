#this script to print random numbers from 1 to 10 on terminal

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

