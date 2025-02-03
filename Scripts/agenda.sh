#!/bin/bash
#Autor:Santiago Lobo Sosa
#Tarea: Realizar una agenda
#Fecha:03/02/2025

clear

while true; do

	echo "a: Añadir una entrada"

	echo "b: Buscar por DNI"

	echo "c: Ver la agenda completa"

	echo "d: Eliminar todas las entradas de la agenda"

	echo "e: Finalizar"

read -p "Elige una de estas opciones: " opc

	case $opc in

		a)
			read -p "Dime tu Dni: " dni

				if grep "^$dni:" agenda.txt > /dev/null; then

					echo "El usuario ya existe"

			else

			read -p "Dime tu nombre: " nombr

			read -p "Dime tus apellidos: " apel

			read -p "Dime tu localidad: " loc


			echo "$dni:$nombr:$apel:$loc" >> agenda.txt 

				fi
		;;

		b)
			read -p "Dime tu dni: " dni

		if grep "^$dni:" agenda.txt >> /dev/null; then

		        nomb=$(grep "^$dni" agenda.txt | cut -d ":" -f 2) 

			apel=$(grep "^$dni" agenda.txt | cut -d ":" -f 3)

			loc=$(grep "^$dni" agenda.txt | cut -d ":" -f 4)

			echo "La persona con DNI número $dni es: $nomb $apel , y vive en $loc"
		else


			echo "El DNI no se encuentra"
		fi
		;;

		c)
			if [ -s agenda.txt ]; then
				cat agenda.txt
			else
				echo "Agenda vacia"
			fi
		;;

		d)
			> agenda.txt
				echo "Todo el contenido del archivo ha sido borrado"
		;;

		e)
			echo "Agenda cerrada"
				break
		;;

esac

done
