/*51a. Elaborar um programa que exiba na tela automaticamente todos os números naturais entre 100 e 0, em ordem decrescente.
==> Laço de repetição com pré-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 100    //Como a contagem é decrescente, à variável é atribuído o maior valor do contador.

    WHILE nNumero >= 0    //No laço pré-teste a condição de saída é dada no início do laço
        ?nNumero                //O programa exibe o valor contido na variável

        nNumero -= 1  //É feito o decremento no valor retrocedendo a contagem

    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
