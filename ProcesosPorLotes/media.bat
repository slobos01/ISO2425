@echo off
rem script de realizar la media de 3 números pasados por parámetro o argumentos.
rem Autor: Santiago Lobo Sosa
rem Fecha:18/11/2024

set num1=%1
set num2=%2
set num3=%3

set /A suma=%1 + %2 + %3

set /A media= (%1 + %2 + %3) /3

echo La media de %1 %2 y %3 es %media%