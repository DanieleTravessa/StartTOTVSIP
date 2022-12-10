/*7. Como sabemos, o Harbour/ADVPL não possui uma função para cálculo
de potência. Crie uma função “POT”, que receba como parâmetros a
base e o expoente e retorne o valor da potência.*/

FUNCTION Main()

    LOCAL nNum:=0, nExp:=0, nPot := 0

    ACCEPT("Informe o base: ") to nNum
    ACCEPT("Informe o expoente: ") to nExp
    
    nNum := Val(nNum)
    nExp := Val(nExp)
    nPot := POT(nNum, nExp, nPot)

    ?"O valor de ",nNum, "elevado a", nExp, "potencia, e", Alltrim(STR((nPot)))

RETURN NIL

FUNCTION POT(nNum, nExp, nPot)
     
    nPot := nNum**nExp      

RETURN nPot
