/*50c. Elaborar um programa que exiba na tela automaticamente todos os n�meros naturais entre 0 e 100, em ordem crescente.
==> Vers�o: la�o finito (para)*/

FUNCTION MAIN()



    Local nNumero := 0

    FOR nNumero := 0 to 100 //No la�o finito, a estrutura e a variavel com contador se iniciam simultaneamente. 
        ?nNumero //Imprime o �ltimo valor contido na vari�vel
    NEXT    //Volta para o in�cio da estrutura at� que a condi��o de sa�da seja cumprida
    ?"-> *** A Contagem chegou ao final! ***"
    RETURN NIL
