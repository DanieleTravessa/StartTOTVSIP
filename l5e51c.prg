/*51c. Elaborar um programa que exiba na tela automaticamente todos os n�meros naturais entre 100 e 0, em ordem decrescente.
==> Vers�o: la�o finito (para)*/

FUNCTION MAIN()

    Local nNumero := 100

   /*No la�o finito, a estrutura e a variavel com contador se iniciam simultaneamente. 
    No caso de decremento devemos considerar um passo negativo*/
   
    FOR nNumero := 100 to 0 step -1 
   
        ?nNumero //Imprime o �ltimo valor contido na vari�vel
   
    NEXT    //Volta para o in�cio da estrutura at� que a condi��o de sa�da seja cumprida
    ?"-> *** A Contagem chegou ao final! ***"

RETURN NIL
