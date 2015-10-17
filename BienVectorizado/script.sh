#!/bin/bash
numEjecuccion=1
IMAGEN="sample.png"
PROGRA="conParalelizacion"
ITERACIONES="20"
echo "N,Time" > resultados${IMAGEN}.csv
while [[ $numEjecuccion -le ${ITERACIONES} ]]
do
   echo "Ejecuccion num ${numEjecuccion}"
   echo -n "${numEjecuccion}," >> resultados${IMAGEN}.csv
   ./${PROGRA} -f ${IMAGEN} >> resultados${IMAGEN}.csv
   (( numEjecuccion++ ))
done
