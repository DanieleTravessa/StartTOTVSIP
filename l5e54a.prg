/*54a. Elaborar um programa que exiba, na tela, todos os caracteres visuais da tabela ASCII (do 32 ao 126) no formato “código – caractere”. 
Exemplo: “80 – P”. Fazer 2 versões desta solução: uma utilizando laço com pré-teste (enquanto), outra usando laço finito (para). 
==> Laço de repetição com pré-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 32
        
    WHILE nNumero <= 126 //No laço pré-teste a condição de saída é dada no início do laço
         QOUT(nNumero, " - ", Chr(nNumero))          //O programa exibe o valor contido na variável
         nNumero := nNumero + 1
    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
