/*Desenvolver uma m�quina de soma (c�lculo de somat�rio). 
O programa dever� ler uma s�rie indefinida de valores informados pelo usu�rio. 
A leitura dever� prosseguir at� que o valor zero seja informado. Ao final apresentar na tela o total do somat�rio. 
Implementar uma vers�o com cada uma das tr�s estruturas de repeti��o e mais uma utilizando o desvio incondicional.
==> La�o de repeti��o com pr�-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 0, nSoma := 0 

    ?"Calculo de Somatorio"
    ACCEPT "Digite um numero: " to nNumero
    nNumero := Val(nNumero)
    
    Do While nNumero != 0
        nSoma += nNumero
        ACCEPT "Digite outro numero: " to nNumero
        nNumero := Val(nNumero)
    ENDDO
    ?nSoma
    ?""

RETURN .T.
