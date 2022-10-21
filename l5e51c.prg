/*51c. Elaborar um programa que exiba na tela automaticamente todos os números naturais entre 100 e 0, em ordem decrescente.
==> Versão: laço finito (para)*/

FUNCTION MAIN()

    Local nNumero := 100

   /*No laço finito, a estrutura e a variavel com contador se iniciam simultaneamente. 
    No caso de decremento devemos considerar um passo negativo*/
   
    FOR nNumero := 100 to 0 step -1 
   
        ?nNumero //Imprime o último valor contido na variável
   
    NEXT    //Volta para o início da estrutura até que a condição de saída seja cumprida
    ?"-> *** A Contagem chegou ao final! ***"

RETURN NIL
