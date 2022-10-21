/*51b. Elaborar um programa que exiba na tela automaticamente todos os n�meros naturais entre 100 e 0, em ordem decrescente.
==> Vers�o: la�o com p�s-teste (repita)*/

FUNCTION MAIN()

    Local nNumero := 100 //Como a contagem � decrescente, � vari�vel � atribu�do o maior valor do contador.

    /*No Harbour a fun��o repita n�o existe de modo literal mas segundo minhas pesquisas, ela pode ser reproduzida de forma semelhante
    com o uso Do While .T. */
    
    DO WHILE .T. 
        ?nNumero //Imprime o valor da vari�vel;
        nNumero -= 1 //decrementa a vari�vel para retroceder na contagem;
        If nNumero = 0 //Condi��o de sa�da, define o momento que a repeti��o atingiu seu limite;
            EXIT //Uma vez cumprida a condi��o de sa�da o programa encerra a contagem;
        ENDIF
    ENDDO
    ?nNumero //Imprime o �ltimo valor atribu�do � vari�vel    
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN .T.
