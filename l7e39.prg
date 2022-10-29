/*39.Dada uma matriz A de tamanho 3 x 3, preenchida sequencialmente a partir de 0 até 8. 
Calcule a diferença entre a diagonal principal e secundária da matriz.*/

FUNCTION MAIN()

    LOCAL aA := {{0,1,2},{3,4,5},{6,7,8}}
    LOCAL nI , nJ, nDigP , nDigS , nDif
    
    nDigP := aA[1][1] + aA[2][2] + aA[3][3] 
    nDigS := aA[1][3] + aA[2][2] + aA[3][1] 
    nDif  := nDigP - nDigS

    ?hb_valtoexp(aA[1])
    ?hb_valtoexp(aA[2])
    ?hb_valtoexp(aA[3])

    ?"Diagonal principal " + allTrim(str(nDigP))
    ?"Diagonal secundaria " + allTrim(str(nDigS))
    ?"Diferenca " + allTrim(str(nDif))

    ?"-~-~-~-~-~-~-~-~"
    ?""

RETURN NIL
