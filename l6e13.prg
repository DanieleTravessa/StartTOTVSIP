/*13.Na mesma linha do programa anterior fazer uma função para cálculo
do valor presente, dado o montante e a taxa.*/
FUNCTION MAIN()

    LOCAL nVF := 0, nVp := 0, nI := 0, nTemp := 0, nJ := 0, cJcs := ""

    ?"***Calculadora de Juros***"
    ACCEPT "Informe o valor do montante: R$" to nVF
    ACCEPT "Informe a taxa de juros aplicada em decimal: " to nI
    ACCEPT "Informe o prazo em meses" to nTemp
    ACCEPT "Informe o tipo de capitalizacao. Juros Compostos ou Juros Simples (C/S)? " to cJcs

    nVF := Val(nVF)
    nI := Val(nI)
    nTemp := Val(nTemp)

    Do CASE
        CASE cJcs $ "Cc" //Lê-se, caso a variavel esteja contida em "C" ou "c"
        nVP := (nVF/((1+nI))**nTemp) //Ou nVP := (nVF*(1+nI)**-nTemp)
        
        CASE cJcs $ "Ss"
        nVP := nVF/(1+nI*nTemp)         
    ENDCASE

    ? "O valor do capital investido foi de R$", ALLTRIM(STR(nVP))
    ?""


RETURN NIL


