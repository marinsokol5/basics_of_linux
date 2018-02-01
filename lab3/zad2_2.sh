#!/bin/bash

echo $$

prvi=0
drugi=0
treci=0


# Inicijalizacija varijabli i postavljanje signal handlera

trap increment_jedan 1
increment_jedan()
{
  prvi=$((prvi+1))
}

trap increment_dva 3
increment_dva()
{
  drugi=$((drugi+1))
}

trap increment_tri 4
increment_tri()
{
  treci=$((treci+1))
}

trap finish 2
finish()
{
  echo "Caught SIGINT quiting."
  echo "kapsule $prvi, komprimirane $drugi, šumeće tablete $treci"
  exit 1
}

while true
do

	echo "kapsule $prvi, komprimirane $drugi, šumeće tablete $treci"

	sleep 1
done
