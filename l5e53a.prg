/*53a. Elaborar um programa que exiba na tela, automaticamente, valores gerados aleatoriamente, entre 10 e 99. 
Os valores dever�o ser gerados indefinidamente at� que surja o valor 80, que ao surgir n�o deve ser exibido na tela.
==> La�o de repeti��o com pr�-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 0  
        
    WHILE nNumero != 80    //No la�o pr�-teste a condi��o de sa�da � dada no in�cio do la�o
        nNumero := HB_RandomInt(10,99) //� atribu�da � vari�vel um valor aleat�rio
        IF nNumero == 80
            EXIT
        ENDIF
        ?nNumero            //O programa exibe o valor contido na vari�vel
    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
