/*83.Altera o algoritmo anterior, para que faça o mesmo para 10.000 valores.*/

Function Main()

    LOCAL nValor := 0, nCont := 1, nI := 10000, aNum := {}, cMsg := ""

    WHILE nCont <= 10000

    ACCEPT "Digite um numero: " to nValor
    Aadd(aNum, nValor)
    nCont++

    ENDDO

    FOR nCont :=10000 to 1 STEP -1
        cMsg := cMsg + aNum[nI]
        nI--

    NEXT nCont
    QOUT(CHR(10) + "Ordem inversa " +CHR(10))
    QOUT(cMsg )
RETURN NIL
