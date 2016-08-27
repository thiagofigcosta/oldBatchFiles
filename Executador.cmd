@Echo off
title despertador
color 0b
echo Bem-Vindo ao OPEN PROG da:
Echo #####################
Echo #*  * **** *  *  ** #
Echo #** * *  * ** * *  *#
Echo #* ** **** * ** *  *#
Echo #*  * *  * *  *  ** #
Echo #####################softwere
echo.
echo Esse executador funciona com segundos,

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
echo Coloque o programa que deseja executar na mesma pasta que este
echo digite o nome e extenção do programa (exemplo msn.exe)
set/p "prog="
echo.
echo Daqui a quantos segundos voce deseja que execute o programa?
set/p "seg="
PING -n %seg% 127.0.0.1 >nu
echo Obrigado por preferir a NANOSOFTWERE
echo                                     by:. Mr. Hacker
%prog%
exit