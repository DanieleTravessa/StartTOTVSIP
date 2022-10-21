/*53a. Elaborar um programa que exiba na tela, automaticamente, valores gerados aleatoriamente, entre 10 e 99. 
Os valores deverão ser gerados indefinidamente até que surja o valor 80, que ao surgir não deve ser exibido na tela.
==> Laço de repetição com pré-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 0  
        
    WHILE nNumero != 80    //No laço pré-teste a condição de saída é dada no início do laço
        nNumero := HB_RandomInt(10,99) //É atribuída à variável um valor aleatório
        IF nNumero == 80
            EXIT
        ENDIF
        ?nNumero            //O programa exibe o valor contido na variável
    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
