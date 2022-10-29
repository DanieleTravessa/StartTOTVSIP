/*17.Ler uma matriz A do tipo vetor com 10 elementos. Construir uma matriz B de mesmo tipo, sendo que cada elemento 
de B seja o somatório do primeiro até o elemento correspondente de A. Apresentar os elementos da matriz B.*/
FUNCTION MAIN()

    LOCAL aVetorA := {}, aVetorB := {}, nN := 1, cElemento, cElementoB, nAn, nBn

    WHILE nN <= 10
    cElemento := HB_RandomInt(10,20)
    AADD(aVetorA, cElemento)
    cElementoB := cElemento+1
    AADD(aVetorB, cElementoB)
    nN++
    ENDDO
    ?hb_valtoexp(aVetorA)
    ?hb_valtoexp(aVetorB)
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
    
RETURN NIL



