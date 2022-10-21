/*52a. Elaborar um programa que exiba na tela, automaticamente, 50 valores gerados aleatoriamente, entre 10 e 99.
==> Laço de repetição com pré-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 0  
    Local NCont   := 0    //Declara-se uma variável para o contador.

    
    WHILE nCont <= 50    //No laço pré-teste a condição de saída é dada no início do laço
        nNumero := HB_RandomInt(10,99) //É atribuída à variável um valor aleatório
        nCont++  //É feito o icremento utilizando um contador para avançar na contagem
        ?nNumero            //O programa exibe o valor contido na variável
    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
