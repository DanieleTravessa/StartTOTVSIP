/*50b. Elaborar um programa que exiba na tela automaticamente todos os números naturais entre 0 e 100, em ordem crescente.
==> Versão: laço com pós-teste (repita)*/

FUNCTION MAIN()

    Local nNumero := 0

    /*No Harbour a função repita não existe de modo literal mas segundo minhas pesquisas, ela pode ser reproduzida de forma semelhante
    com o uso Do While .T. */
    
    DO WHILE .T. 
        ?nNumero //Imprime o valor da variável;
        nNumero := nNumero + 1 //itera a variável para avançar na contagem;
        If nNumero = 100 //Condição de saída, define o momento que a repetição atingiu seu limite;
            EXIT //Uma vez cumprida a condição de saída o programa encerra a contagem;
        ENDIF
    ENDDO
    ?nNumero //Imprime o último valor atribuído à variável    
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN .T.
