/*50. Elaborar um programa que exiba na tela automaticamente todos os n�meros naturais entre 0 e 100, em ordem crescente.
==> La�o de repeti��o com pr�-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 0

    WHILE nNumero <= 100    //No la�o pr�-teste a condi��o de sa�da � dada no in�cio do la�o
        ?nNumero                //O programa exibe o valor contido na vari�vel

        nNumero := nNumero + 1  //� feito o icremento no valor avan�ando a contagem
    WaitPeriod(1/5000)
    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""
    
RETURN NIL
