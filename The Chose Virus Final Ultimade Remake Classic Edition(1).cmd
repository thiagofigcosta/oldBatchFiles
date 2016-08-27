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

Echo Ola qual e o seu nome?
set/p "nome="
echo.

:Inicio
echo.
echo Qual seu Sexo? (M/F)
set/p "respostaS="
if %respostaS%==M goto Macho
if %respostaS%==m goto Macho
if %respostaS%==F goto Muie
if %respostaS%==f goto Muie
goto erro1

:Macho
echo.
Echo Bem Vindo %nome%,The chose virus ProtectPast Edition,e
Echo um programa da NanoSoftwere que ira proteger seu arquivo
Echo em uma pasta que so podera ser aberta com sua senha.
Echo.
Echo Deseja saber as vantagens do programa? (S/N)
set/p "ask1="
if %ask1%==S goto HI
if %ask1%==s goto HI
if %ask1%==N goto exe
if %ask1%==n goto exe
goto erro2

:Muie
echo.
Echo Bem Vinda %nome%,The chose virus ProtectPast Edition,e
Echo um programa da NanoSoftwere que ira proteger seu arquivo
Echo em uma pasta que so podera ser aberta com sua senha.
Echo.
Echo Deseja saber as Vantagens do programa? (S/N)
set/p "ask1="
if %ask1%==S goto HI
if %ask1%==s goto HI
if %ask1%==N goto exe
if %ask1%==n goto exe
goto erro3

:HI
echo.
Echo The chose virus ProtectPast Edition editado Por ImBr(Jo�o Victor Ferraz),
Echo a praticidade neste programa permite qualquer pessoa proteger seus arquivos.
Echo.
Echo Com este programa voce podera proteger suas pastas contra ataques:
Echo Hacker
Echo Invas�o
Echo qualquer tipo de ataque.
Echo.
Echo                                              NanoSoftwere
Echo                                                           -ImBr-
pause
goto exe

:exe
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto Desbloquear
if NOT EXIST "�" goto CriarPasta

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
ren "�" "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo A pasta foi Protegida Com Sucesso!
goto fim

:Desbloquear
echo Digite a segunda senha:
set/p "pass=>"
if NOT %pass%== unlock goto senha
goto desbloquear1-2
goto fim

:desbloquear2
echo Digite a segunda senha(2):
set/p "pass=>"
if NOT %pass%== unlock goto senha2
goto desbloquear1-2
goto fim

:desbloquear3
echo Digite a segunda senha(1):
set/p "pass=>"
if NOT %pass%== unlock goto senha3
goto desbloquear1-2
goto fim

:Desbloquear1-2
echo Digite a terceira senha:
set/p "pass=>"
if NOT %pass%== unlock2 goto senha1-2
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" "�"
echo A pasta foi desbloqueada com Sucesso!
goto fim

:Desbloquear2-2
echo Digite a terceira senha(2):
set/p "pass=>"
if NOT %pass%== unlock2 goto senha2-2
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo A pasta foi desbloqueada com Sucesso!
goto fim

:Desbloquear3-2
echo Digite a terceira senha(1):
set/p "pass=>"
if NOT %pass%== unlock2 goto senha3-2
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo A pasta foi desbloqueada com Sucesso!
goto fim

:senha1-2
echo Senha invalida tente novamente!
pause
goto desbloquear2-2

:senha2-2
echo Senha invalida tente novamente!
pause
goto desbloquear3-2

:senha3-2
echo Voce errou a senha 3 vezes o programa sera fechado!
pause
goto fim

:senha
echo Senha invalida tente novamente!
pause
goto desbloquear2


:senha2
echo Senha invalida tente novamente!
pause
goto desbloquear3

:senha3
echo Voce errou a senha 3 vezes o programa sera fechado!
pause
goto fim

:CriarPasta
echo Voce nao possui a pasta de seguranca deseja cria-la? (S/N)
set/p "bloqueio=>"
if %bloqueio%==S goto nova
if %bloqueio%==s goto  nova
if %bloqueio%==n goto fim
if %bloqueio%==N goto fim
echo Resposta invalida
goto Criar pasta

:nova
md "�"
echo A pasta foi criada com Sucesso!
goto fim

:erro1
echo.
echo Resposta Invalida responda com (M/F)
echo.
pause
goto Inicio

:erro2
echo.
echo Resposta Invalida responda com (S/N)
echo.
pause
goto Macho


:erro3
echo.
echo Resposta Invalida responda com (S/N)
echo.
pause
goto Muie

:fim
echo.
Echo Obrigado Por Usar The Chose Virus
Echo                                  by: Nanosoftware
pause
exit
