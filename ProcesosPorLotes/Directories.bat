@echo off
rem Script usando la variable if
rem Autor:Santiago Lobo Sosa
rem Fecha:20/11/2024

echo Pulsa 1 para crear fichero:
echo Pulsa 2 para mostrar el arbol de directorios de la carpeta de usuario:
echo Pulsa 3 Mostrar archivos con extension ".txt":
echo Pulsa 4 para crear directorios alfredoff, marinapg y raomonam:
echo Pulsa 5 para copiar el contenido de tu carpeta al Escritorio:

set /P opcion=

if %opcion% == 1 goto fichero.txt
if %opcion% == 2 goto arbol
if %opcion% == 3 goto extension.txt
if %opcion% == 4 goto directorios
if %opcion% == 5 goto copiar

:fichero.txt

set /P fichero= "Dime un nombre para el fichero.txt: "
echo > %fichero%.txt
pause
exit

:arbol 

tree C:\Users
pause
exit

:extension.txt

dir *txt
pause
exit

:directorios

mkdir alfredoff
mkdir marinapg
mkdir ramonam
pause
exit

:copiar

xcopy /E %USERPROFILE% C:\Copia
pause
exit