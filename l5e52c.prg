/*52c. Elaborar um programa que exiba na tela, automaticamente, 50 valores gerados aleatoriamente, entre 10 e 99.
==> Versão: laço finito (para)*/

FUNCTION MAIN()

    Local nNumero := 0
    Local nCont   := 0

    FOR nCont := 1 to 50  /*No laço finito, a estrutura e a variavel com contador se iniciam simultaneamente. 
                                    No caso de decremento devemos considerar um passo negativo*/
        nNumero := Random(10,99)%99+1
        ?nNumero //Imprime o último valor contido na variável
    NEXT    //Volta para o início da estrutura até que a condição de saída seja cumprida
    ?"-> *** A Contagem chegou ao final! ***"

RETURN NIL
