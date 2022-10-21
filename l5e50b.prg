/*50b. Elaborar um programa que exiba na tela automaticamente todos os n�meros naturais entre 0 e 100, em ordem crescente.
==> Vers�o: la�o com p�s-teste (repita)*/

FUNCTION MAIN()

    Local nNumero := 0

    /*No Harbour a fun��o repita n�o existe de modo literal mas segundo minhas pesquisas, ela pode ser reproduzida de forma semelhante
    com o uso Do While .T. */
    
    DO WHILE .T. 
        ?nNumero //Imprime o valor da vari�vel;
        nNumero := nNumero + 1 //itera a vari�vel para avan�ar na contagem;
        If nNumero = 100 //Condi��o de sa�da, define o momento que a repeti��o atingiu seu limite;
            EXIT //Uma vez cumprida a condi��o de sa�da o programa encerra a contagem;
        ENDIF
    ENDDO
    ?nNumero //Imprime o �ltimo valor atribu�do � vari�vel    
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN .T.
