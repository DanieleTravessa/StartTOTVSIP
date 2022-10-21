/*62.Jogo da forca - parte 1: Neste momento trataremos apenas da leitura do palpite (�chute�) do usu�rio. 
Fazer um programa que realize a consist�ncia de entrada da digita��o de um palpite do usu�rio de modo que 
ele seja for�ado a digitar uma letra efetivamente. 
Fazer 3 vers�es do programa, cada uma com uma das estruturas de repeti��o. 
Responder: qual achou mais adequada? Por qu�? 
*/

FUNCTION MAIN()

LOCAL nCont := 0, cTentativa := "", cRep := "", cChute := ""
FOR nCont:=1 to 2
        ACCEPT "Digite uma letra ou sair para parar o programa: " to cTentativa
        cTentativa := UPPER(cTentativa)

        IF cTentativa == "SAIR" 
            nCont := 2
        ELSE 
            nCont := 1
            IF Len(cTentativa) > 1
                QOUT( "insira apenas 1 letra")
                LOOP
            ELSE
                IF cTentativa $ cRep 
                    QOUT("essa letra j� foi informada anteriormente, tente outra letra")
                    LOOP
                ELSE
                    cRep += cChu
                ENDIF
            ENDIF
        ENDIF
    NEXT
RETURN NIL
