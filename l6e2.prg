/*2. Criar um algoritmo que efetue o c�lculo de uma presta��o em atraso.
para tanto, utilize a f�rmula PREST = VALOR + (VALOR * (TAXA/ 100)
* TEMPO). Apresentar o valor da presta��o. O c�lculo e a exibi��o
dever�o ser feitos por um procedimento.*/

Function Main()

    local nVal:=0, nNum:=0

    ACCEPT("Informe o valor de N: ") to nVal
    Qout()

    nNum := CalcPres(nVal)

    Qout("O somat�rio de N �: ", Alltrim(STR(nNum)))
RETURN NIL

Function CalcPres(nVal)

    local nCont:=1, nAux:=0

    for nCont:=1 to Val(nVal)
        nAux+=nCont
    next

RETURN nAux
Function Main()

    local nVal:=0, nTaxa:=0, nTempo:=0

    ACCEPT("Informe o valor da presta��o: ") to nVal
    ACCEPT("Informe a taxa da presta��o: ") to nTaxa
    ACCEPT("Informe o tempo da presta��o: ") to nTempo

    CalcPres (nVal, nTaxa, nTempo)

RETURN NIL
Function CalcPres(nVal, nTaxa, nTempo)

    local nPres:=0

    nPres:= Val(nVal) + (Val(nVal) * (Val(nTaxa)/100) * Val(nTempo))

    Qout("O valor da presta��o �: R$", Alltrim(STR(nPres)))

RETURN NIL

PROCEDURE Prestacao()

