/*53c. Elaborar um programa que exiba na tela, automaticamente, valores gerados aleatoriamente, entre 10 e 99. 
Os valores deverão ser gerados indefinidamente até que surja o valor 80, que ao surgir não deve ser exibido na tela.
==> Versão: laço finito (para)*/

FUNCTION MAIN()

    Local nNumero := 10
    
    /*Aqui temos à estrutura, a variável com contador se iniciando simultaneamente. Nosso controle de saída é nNumero := 80, e na saída
    de dados o programa sorteia número aleatório de 10 a 99 continuamente, até encontrar o 80 dentro da repetição*/

    FOR nNumero:= 10 to 80  
        ?nNumero:=Random(10,99)%99+1            
    NEXT    //Volta para o início da estrutura até que a condição de saída seja cumprida
       //?nNumero //Imprime o último valor contido na variável
    ?"-> *** A Contagem chegou ao final! ***"

RETURN NIL
