/*51a. Elaborar um programa que exiba na tela automaticamente todos os n�meros naturais entre 100 e 0, em ordem decrescente.
==> La�o de repeti��o com pr�-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 100    //Como a contagem � decrescente, � vari�vel � atribu�do o maior valor do contador.

    WHILE nNumero >= 0    //No la�o pr�-teste a condi��o de sa�da � dada no in�cio do la�o
        ?nNumero                //O programa exibe o valor contido na vari�vel

        nNumero -= 1  //� feito o decremento no valor retrocedendo a contagem

    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
