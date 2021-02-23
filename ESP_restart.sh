#!/bin/bash

for options in $(echo $@)

do
  SERVERLIST=$options
done

if [ ! -s "$SERVERLIST" ]
then
  echo "ERROR: $SERVERLIST does not exist"
  exit 1
fi



for i in $(cat $SERVERLIST)
do
		echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		echo $i
		rosh -l root -n $i -t '/bbtscripts/startesp.sh '
	    rosh -l root -n $i -t 'ps -ef | grep cybAgent|grep -v grep'
		echo rosh -l root -n $i -t 'ps -ef | grep cybAgent|grep -v grep'
		echo ****ESP serves restarted****
		
		echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
done


ps -ef | grep cybAgent|grep -v grep
 /bbtscripts/startesp.sh
 /bbtscripts/stopesp.sh
 
drs-spmvdbs01
drs-spmvdbs02
drs-spmvdbs03
drs-vlegapp03
drs-vlegapp04
prd-vlegapp05
prd-vlegapp06
prd-vlegapp17
prd-vlegapp18 


  