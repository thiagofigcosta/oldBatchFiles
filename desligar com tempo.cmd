@Echo off
title despertador
color 0b
echo Bem-Vindo ao despertador da:
Echo #####################
Echo #*  * **** *  *  ** #
Echo #** * *  * ** * *  *#
Echo #* ** **** * ** *  *#
Echo #*  * *  * *  *  ** #
Echo #####################softwere
echo.
echo Esse despertador funciona com segundos,

:1
echo Deseja abrir a calculadora para converter horas em segundos? (S/N)
set/p "ask1="
if %ask1%==S goto calc
if %ask1%==s goto calc
if %ask1%==N goto desp
if %ask1%==n goto desp
echo Resposta invalida
echo.
goto 1

:calc
start calc.exe

:desp
echo Daqui a quantos segundos voce deseja que desperte?
set/p "seg="
shutdown -s -f -t %seg%
echo Obrigado por preferir a NANOSOFTWARE
echo                                     by:. Mr. Hacker
]
exit
