@echo off

:Base
title The chose virus ProtectPast Edition
color 0B
Echo =-Responda para usar o The chose virus ProtectPast Edition-=
echo.
Echo #####################
Echo #*  * **** *  *  ** #
Echo #** * *  * ** * *  *#
Echo #* ** **** * ** *  *#
Echo #*  * *  * *  *  ** #
Echo #####################
pause   

echo.       


:exe
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto Desbloquear 
if NOT EXIST " " goto CriarPasta

:pergunta
echo Voce tem certeza que deseja protejer a pasta? (S/N) 
set/p "bloqueio=>" 
if %bloqueio%==S goto Bloquear 
if %bloqueio%==s goto  Bloquear 
if %bloqueio%==n goto fim
if %bloqueio%==N goto fim 
echo Resposta invalida 
goto pergunta

:Bloquear  
ren " " "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" 
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" 
echo A pasta foi Protegida Com Sucesso!
goto fim

:Desbloquear
echo Digite a primeira senha:
set/p "pass=>" 
if %pass%== 781227 goto desbloquear2
goto Desbloquear 
goto fim


:fim
echo.
Echo Obrigado Por Usar The Chose Virus
Echo                                  by: Nanosoftwere
pause 
exit

:desproteger
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" 
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" " "
echo A pasta foi desbloqueada com Sucesso!
explorer " "
exit

:CriarPasta 
echo Voce nao possui a pasta de seguranca deseja cria-la? (S/N) 
set/p "bloqueio=>" 
if %bloqueio%==S goto nova 
if %bloqueio%==s goto  nova 
if %bloqueio%==n goto fim
if %bloqueio%==N goto fim 
echo Resposta invalida 
goto Criar pasta

:desbloquear2
echo Digite a segunda senha:
set/p "pass=>" 
if  %pass%== 12985454 goto desbloquear3
goto desbloquear2
goto fim

:fim
echo.
Echo Obrigado Por Usar The Chose Virus
Echo                                  by: Nanosoftwere
pause 
exit

:nova
md " "
echo A pasta foi criada com Sucesso!
goto fim 


:desbloquear3
echo Digite a terceira senha:
set/p "pass=>" 
if %pass%== 781228 goto desproteger
goto desbloquear3 
goto fim

:fim
echo.
Echo Obrigado Por Usar The Chose Virus
Echo                                  by: Nanosoftwere
pause 
exit