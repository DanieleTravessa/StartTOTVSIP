/*53b. Elaborar um programa que exiba na tela, automaticamente, valores gerados aleatoriamente, entre 10 e 99. 
Os valores dever�o ser gerados indefinidamente at� que surja o valor 80, que ao surgir n�o deve ser exibido na tela.
==> Vers�o: la�o com p�s-teste (repita)*/

FUNCTION MAIN()

    Local nNumero := 0 

    DO WHILE .T. //No Harbour a fun��o repita n�o est� dispon�vel, mas pode ser reproduzida com o Do While .T.;
        nNumero := HB_RandomInt(10,99) //� atribu�da � vari�vel um valor aleat�rio
        If nNumero != 80 //Imprime o valor da vari�vel;
            ?nNumero    
        ELSEIF nNumero == 80 //Condi��o de sa�da, define o momento que a repeti��o atingiu seu limite;
            EXIT //Uma vez cumprida a condi��o de sa�da o programa encerra a contagem;
        ENDIF
    ENDDO
         
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN .T.
