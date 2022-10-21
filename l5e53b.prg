/*53b. Elaborar um programa que exiba na tela, automaticamente, valores gerados aleatoriamente, entre 10 e 99. 
Os valores deverão ser gerados indefinidamente até que surja o valor 80, que ao surgir não deve ser exibido na tela.
==> Versão: laço com pós-teste (repita)*/

FUNCTION MAIN()

    Local nNumero := 0 

    DO WHILE .T. //No Harbour a função repita não está disponível, mas pode ser reproduzida com o Do While .T.;
        nNumero := HB_RandomInt(10,99) //É atribuída à variável um valor aleatório
        If nNumero != 80 //Imprime o valor da variável;
            ?nNumero    
        ELSEIF nNumero == 80 //Condição de saída, define o momento que a repetição atingiu seu limite;
            EXIT //Uma vez cumprida a condição de saída o programa encerra a contagem;
        ENDIF
    ENDDO
         
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN .T.
