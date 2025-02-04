#!/bin/bash
#Autor:Santiago Lobo Sosa
#Fecha:04/02/2025
#Tarea:Realizar una calculadora

clear

if [ $# -ne 2 ]; then

	echo "La calculadora se cerro"
	exit
fi

if [ -f $1 ]; then

	echo "El fichero existe"
	exit
fi

cont=0

while [ $cont -lt $2 ]; do

cont=$((cont+1))
read -p " Operación op1 op2 " op op1 op2

case $op in

		"s")

			echo $op $op1 $op2 >> $1
		;;

		"r")

			echo $op $op1 $op2 >> $1
		;;

		"m")

			echo $op $op1 $op2 >> $1
		;;

		"d")

			echo $op $op1 $op2 >> $1
		;;

		"x")

			exit
			echo "La calculadora ha sido cerrada"
		;;

esac

done
