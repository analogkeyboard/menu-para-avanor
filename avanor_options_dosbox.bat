@echo off

cls
echo *************************
echo 	Avanor 0.5.8
echo *************************
echo.
echo Iniciar Avanor en modo:
echo.
echo 1.Normal
echo 2.Demo
echo 3.Test
echo 4.God
echo 5.Volver al directorio
echo *************************

choice /n /c:12345 Opcion: 

if errorlevel == 5 goto esc
if errorlevel == 4 goto god
if errorlevel == 3 goto test
if errorlevel == 2 goto demo
if errorlevel == 1 goto normal

:normal
echo  Modo Normal
avanor.exe
goto esc

:demo
echo  Modo Demo
avanor.exe -demo
goto esc

:test
echo  Modo Test
avanor.exe -test
goto esc

:god
echo  Modo God
avanor.exe -god
goto esc

:esc
cls
dir