/*40.Carregar uma matriz de 5x5 com caracteres aleatórios entre A e Z.
Apresentar no final a string formada pelos caracteres da diagonal principal dessa matriz.*/
FUNCTION MAIN()
    
    LOCAL aA := {}, aB := {}, aC := {}, aD := {}, aE := {}, aF :={}
    LOCAL nI , nDigP , nA, nB, nC, nD, nE
    
    FOR nI := 1 TO 5
    nA := hb_RandomInt(65,90)
    nB := hb_RandomInt(65,90)
    nC := hb_RandomInt(65,90)
    nD := hb_RandomInt(65,90)
    nE := hb_RandomInt(65,90)
    
    AAdd (aA, CHR(nA))
    AADD (aB, CHR(nB))
    AADD (aC, CHR(nC))
    AADD (aD, CHR(nD))
    AADD (aE, CHR(nE))
    NEXT
    
    AADD (aF, aA)
    AADD (aF, aB)
    AADD (aF, aC)
    AADD (aF, aD)
    AADD (aF, aE)
    nDigP := aF[1][1] + aF[2][2] + aF[3][3] + aF[4][4] + aF[5][5]

    ?"Os caracteres da diagonal principal formam a string", nDigP,"."
    ?""
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
    
RETURN NIL
