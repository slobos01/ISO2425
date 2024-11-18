@echo off
rem Script que se encarga de crear dentro del perfil del usuario actual los siguientes directorios:asir dam smr daw ceti
rem Nombre: Santiago Lobo Sosa
rem Fecha:13/11/2024
mkdir %USERPROFILE%\asir %USERPROFILE%\dam %USERPROFILE%\ceti %USERPROFILE%\daw %USERPROFILE%\smr
mkdir %USERPROFILE%\asir\docs %USERPROFILE%\asir\pract %USERPROFILE%\asir\examen

mkdir %USERPROFILE%\dam\docs %USERPROFILE%\dam\pract %USERPROFILE%\dam\examen

mkdir %USERPROFILE%\cet\docs %USERPROFILE%\ceti\pract %USERPROFILE%\ceti\examen

mkdir %USERPROFILE%\daw\docs %USERPROFILE%\daw\pract %USERPROFILE%\daw\examen

mkdir %USERPROFILE%\smr\docs %USERPROFILE%\smr\pract %USERPROFILE%\smr\examen
