/*54a. Elaborar um programa que exiba, na tela, todos os caracteres visuais da tabela ASCII (do 32 ao 126) no formato �c�digo � caractere�. 
Exemplo: �80 � P�. Fazer 2 vers�es desta solu��o: uma utilizando la�o com pr�-teste (enquanto), outra usando la�o finito (para). 
==> La�o de repeti��o com pr�-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 32
        
    WHILE nNumero <= 126 //No la�o pr�-teste a condi��o de sa�da � dada no in�cio do la�o
         QOUT(nNumero, " - ", Chr(nNumero))          //O programa exibe o valor contido na vari�vel
         nNumero := nNumero + 1
    ENDDO
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
