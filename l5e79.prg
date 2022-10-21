/*79.Jogo do �pim� infal�vel. Fazer um programa que simule o jogo do �pim�. 
Ele servir� para treinar competidores deste game. 
Neste jogo voc� vai verbalizando todos os n�meros de 1 a 60, sendo que toda
vez que se passa por um m�ltiplo do n�mero determinado como �pim�, ao inv�s de cantar o n�mero, 
devemos dizer �pim�. Exemplo digamos que o �pim� ser�o m�ltiplos de 3. 
Dever� ser cantado: �1, 2, pim, 4, 5, pim, ..., 58, 59, pim�. 
Seu programa dever� simular esta situa��o. 
O usu�rio informar� o n�mero PIM e o programa  exibir� o resultado na tela. 
 Estabelecer um atraso a cada sa�da para que o jogador possa ira cantando juntamente com o programa. 
*/
FUNCTION MAIN()
    
    Local nNum:=0, nCont:=1

    FOR nCont:=1 TO 60
        IF nCont %3 == 0
            ?"Pim"
            TONE(1000, 15)
        ELSE
            Qout(Alltrim(STR(nCont)))
        ENDIF
    NEXT

RETURN NIL
