/*53c. Elaborar um programa que exiba na tela, automaticamente, valores gerados aleatoriamente, entre 10 e 99. 
Os valores dever�o ser gerados indefinidamente at� que surja o valor 80, que ao surgir n�o deve ser exibido na tela.
==> Vers�o: la�o finito (para)*/

FUNCTION MAIN()

    Local nNumero := 10
    
    /*Aqui temos � estrutura, a vari�vel com contador se iniciando simultaneamente. Nosso controle de sa�da � nNumero := 80, e na sa�da
    de dados o programa sorteia n�mero aleat�rio de 10 a 99 continuamente, at� encontrar o 80 dentro da repeti��o*/

    FOR nNumero:= 10 to 80  
        ?nNumero:=Random(10,99)%99+1            
    NEXT    //Volta para o in�cio da estrutura at� que a condi��o de sa�da seja cumprida
       //?nNumero //Imprime o �ltimo valor contido na vari�vel
    ?"-> *** A Contagem chegou ao final! ***"

RETURN NIL
