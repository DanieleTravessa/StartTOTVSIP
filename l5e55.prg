/*55.Elaborar um programa que exiba na tela automaticamente todos os múltiplos de 3 existentes entre 1 e 100. 
Utilizar obrigatoriamente o laço finito (para) para esta solução. 
==> Versão: laço finito (para)*/

FUNCTION MAIN()

    Local nNumero := 1
        
    FOR nNumero:= 1 to 100 ///*No laço finito, a estrutura e a variavel com contador se iniciam simultaneamente.
        IF nNumero%3=0
        ?nNumero          //O programa exibe o valor contido na variável
        ENDIF
    NEXT
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN NIL
