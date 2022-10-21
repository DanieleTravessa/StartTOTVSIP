/*54b.Elaborar um programa que exiba, na tela, todos os caracteres visuais da tabela ASCII (do 32 ao 126) no formato “código – caractere”. 
Exemplo: “80 – P”. Fazer 2 versões desta solução: uma utilizando laço com pré-teste (enquanto), outra usando laço finito (para). 
==> Versão: laço finito (para)*/

FUNCTION MAIN()

    Local nNumero := 32
        
    FOR nNumero:= 32 to 126 ///*No laço finito, a estrutura e a variavel com contador se iniciam simultaneamente.
         QOUT(nNumero, " - ", Chr(nNumero))          //O programa exibe o valor contido na variável
    NEXT
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
