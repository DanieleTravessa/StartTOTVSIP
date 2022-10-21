/*Desenvolver uma máquina de soma (cálculo de somatório). 
O programa deverá ler uma série indefinida de valores informados pelo usuário. 
A leitura deverá prosseguir até que o valor zero seja informado. Ao final apresentar na tela o total do somatório. 
Implementar uma versão com cada uma das três estruturas de repetição e mais uma utilizando o desvio incondicional.
==> Laço de repetição com pré-teste (enquanto)*/

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
