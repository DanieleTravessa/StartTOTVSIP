/*55.Elaborar um programa que exiba na tela automaticamente todos os m�ltiplos de 3 existentes entre 1 e 100. 
Utilizar obrigatoriamente o la�o finito (para) para esta solu��o. 
==> Vers�o: la�o finito (para)*/

FUNCTION MAIN()

    Local nNumero := 1
        
    FOR nNumero:= 1 to 100 ///*No la�o finito, a estrutura e a variavel com contador se iniciam simultaneamente.
        IF nNumero%3=0
        ?nNumero          //O programa exibe o valor contido na vari�vel
        ENDIF
    NEXT
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
