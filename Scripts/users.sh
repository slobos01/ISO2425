#!/bin/bash
#Fecha:11/02/2025
#Autor:Santiago Lobo Sosa
#General:Realizar la tarea Users.sh

clear

UID_base=${1:-1000}
fecha=$(date "+%d-%m-%Y - %H:%M")
user_auditor=$(whoami)
archivo="/tmp/logeventos"
Total=0
echo "====================================================="

echo "Informe de usuarios el día $fecha"

echo ""

while IFS=":" read -r us x uid gid d h shell; do

	if [ $uid -ge $UID_base ]; then

		echo "$us - $uid"
		((Total++))
	fi
done < /etc/passwd

echo "Total: $Total usuarios"
echo "===================================================="

echo "$fecha - El usuario $user_auditor ha solicitado un informe de usuarios"
