/*52c. Elaborar um programa que exiba na tela, automaticamente, 50 valores gerados aleatoriamente, entre 10 e 99.
==> Vers�o: la�o finito (para)*/

FUNCTION MAIN()

    Local nNumero := 0
    Local nCont   := 0

    FOR nCont := 1 to 50  /*No la�o finito, a estrutura e a variavel com contador se iniciam simultaneamente. 
                                    No caso de decremento devemos considerar um passo negativo*/
        nNumero := Random(10,99)%99+1
        ?nNumero //Imprime o �ltimo valor contido na vari�vel
    NEXT    //Volta para o in�cio da estrutura at� que a condi��o de sa�da seja cumprida
    ?"-> *** A Contagem chegou ao final! ***"

RETURN NIL
