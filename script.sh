#!/bin/bash
numEjecuccion=1
IMAGEN="sample.png"
echo "N,Time" > resultados${IMAGEN}.csv
while [[ $numEjecuccion -le 20 ]]
do
   echo -n "${numEjecuccion}," >> resultados${IMAGEN}.csv
   ./test -f ${IMAGEN} >> resultados${IMAGEN}.csv
   (( numEjecuccion++ ))
done
