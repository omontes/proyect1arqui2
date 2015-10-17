#!/bin/bash
numEjecuccion=1
IMAGEN="sample.png"
echo "N,Time" > resultados${IMAGEN}.csv
while [[ $numEjecuccion -le 20 ]]
do
   echo "Ejecuccion num ${numEjecuccion}"
   echo -n "${numEjecuccion}," >> resultados${IMAGEN}.csv
   ./conParalelizacion -f ${IMAGEN} >> resultados${IMAGEN}.csv
   (( numEjecuccion++ ))
done
