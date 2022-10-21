/*50. Elaborar um programa que exiba na tela automaticamente todos os números naturais entre 0 e 100, em ordem crescente.
==> Laço de repetição com pré-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 0

    WHILE nNumero <= 100    //No laço pré-teste a condição de saída é dada no início do laço
        ?nNumero                //O programa exibe o valor contido na variável

        nNumero := nNumero + 1  //É feito o icremento no valor avançando a contagem
    WaitPeriod(1/5000)
    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""
    
RETURN NIL
