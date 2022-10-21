/*50c. Elaborar um programa que exiba na tela automaticamente todos os números naturais entre 0 e 100, em ordem crescente.
==> Versão: laço finito (para)*/

FUNCTION MAIN()



    Local nNumero := 0

    FOR nNumero := 0 to 100 //No laço finito, a estrutura e a variavel com contador se iniciam simultaneamente. 
        ?nNumero //Imprime o último valor contido na variável
    NEXT    //Volta para o início da estrutura até que a condição de saída seja cumprida
    ?"-> *** A Contagem chegou ao final! ***"
    RETURN NIL
