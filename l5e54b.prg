/*54b.Elaborar um programa que exiba, na tela, todos os caracteres visuais da tabela ASCII (do 32 ao 126) no formato �c�digo � caractere�. 
Exemplo: �80 � P�. Fazer 2 vers�es desta solu��o: uma utilizando la�o com pr�-teste (enquanto), outra usando la�o finito (para). 
==> Vers�o: la�o finito (para)*/

FUNCTION MAIN()

    Local nNumero := 32
        
    FOR nNumero:= 32 to 126 ///*No la�o finito, a estrutura e a variavel com contador se iniciam simultaneamente.
         QOUT(nNumero, " - ", Chr(nNumero))          //O programa exibe o valor contido na vari�vel
    NEXT
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
