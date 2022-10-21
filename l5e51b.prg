/*51b. Elaborar um programa que exiba na tela automaticamente todos os números naturais entre 100 e 0, em ordem decrescente.
==> Versão: laço com pós-teste (repita)*/

FUNCTION MAIN()

    Local nNumero := 100 //Como a contagem é decrescente, à variável é atribuído o maior valor do contador.

    /*No Harbour a função repita não existe de modo literal mas segundo minhas pesquisas, ela pode ser reproduzida de forma semelhante
    com o uso Do While .T. */
    
    DO WHILE .T. 
        ?nNumero //Imprime o valor da variável;
        nNumero -= 1 //decrementa a variável para retroceder na contagem;
        If nNumero = 0 //Condição de saída, define o momento que a repetição atingiu seu limite;
            EXIT //Uma vez cumprida a condição de saída o programa encerra a contagem;
        ENDIF
    ENDDO
    ?nNumero //Imprime o último valor atribuído à variável    
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN .T.
