#!/bin/bash
numEjecuccion=1
IMAGEN="sample4"
EXTENSION=".png"
PROGRA="sinNada"
ITERACIONES="20"
echo "N,Time" > ${PROGRA}-${IMAGEN}.csv
while [[ $numEjecuccion -le ${ITERACIONES} ]]
do
   echo "Ejecuccion num ${numEjecuccion}"
   echo -n "${numEjecuccion}," >> ${PROGRA}-${IMAGEN}.csv
   ./${PROGRA} -f ${IMAGEN}${EXTENSION} >> ${PROGRA}-${IMAGEN}.csv
   (( numEjecuccion++ ))
done
