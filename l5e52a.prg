/*52a. Elaborar um programa que exiba na tela, automaticamente, 50 valores gerados aleatoriamente, entre 10 e 99.
==> La�o de repeti��o com pr�-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 0  
    Local NCont   := 0    //Declara-se uma vari�vel para o contador.

    
    WHILE nCont <= 50    //No la�o pr�-teste a condi��o de sa�da � dada no in�cio do la�o
        nNumero := HB_RandomInt(10,99) //� atribu�da � vari�vel um valor aleat�rio
        nCont++  //� feito o icremento utilizando um contador para avan�ar na contagem
        ?nNumero            //O programa exibe o valor contido na vari�vel
    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
