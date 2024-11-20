@echo off
rem Script usando la variable if
rem Autor:Santiago Lobo Sosa
rem Fecha:20/11/2024

echo Pulsa 1 para crear un archivo .txt
echo Pulsa 2 para crear un archivo .bat

set /P opcion=
if %opcion% == 1 goto archivo.txt
if %opcion% == 2 goto archivo.bat

:archivo.txt

set /P Archivo= "Dime el nombre del archivo.txt que deseas crear: "
echo > %Archivo%.txt
pause
exit

:archivo.bat

set /P Archivos= "Dime el nombre del archivo.bat que deseas crear: "
echo > %Archivos%.bat
pause
exit
