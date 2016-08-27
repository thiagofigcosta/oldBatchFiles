@echo off

:Base
title DESLIGAR
color 0B
echo.
Echo #####################
Echo #*  * **** *  *  ** #
Echo #** * *  * ** * *  *#
Echo #* ** **** * ** *  *#
Echo #*  * *  * *  *  ** #
Echo #####################
echo.
:Inicio
echo Deseja Desligar? (S/N)
set/p "respostaS="
if %respostaS%==S goto off
if %respostaS%==s goto off
if %respostaS%==N goto on
if %respostaS%==n goto on
goto Inicio

:on
pause
exit

:off
shutdown -s -f -t 00
