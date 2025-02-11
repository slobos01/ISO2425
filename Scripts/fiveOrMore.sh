#!/bin/bash
#Fecha:
#Autor:Santiago Lobo Sosa
#Trabajo: Realizar un script de FIVEORMORE
clear

if [ $# -ne 2 ]; then

	echo"No hay dos parametros"

	exit

fi

if [ -f $1 ]; then

	echo "El fichero ya existe"

	exit

fi

if [ ! -d $2 ]; then

	echo "El directorio no existe"

	exit
fi

arch=$(ls $2 | wc -l)

if [ $arch -eq 0 ]; then

	echo "Directorio $2 vacio"

	exit
fi

echo "Santiago Lobo Sosa"

for direc in $2/*.txt; do
	num=$( wc -l $direc | cut -f "1" -d " ") 
	if [ $num  -ge 5 ]; then
		echo "$direc"
		echo $direc >> $1
		palabras=$(cat $direc | wc -w)
		echo "EL fichero original tiene $palabras palabras" > $direc.q
		cat $direc >> $1.q
	fi

done

num=$(cat $1 | wc -l)
echo "Se han identificado $num fichero" >> $1
