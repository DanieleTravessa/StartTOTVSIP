/*16.Ler uma matriz A do tipo vetor com 5 elementos. Construir uma matriz B de mesmo tipo e dimens�o, 
onde cada elemento da matriz B dever� ser o valor inverso (sinal trocado) do elemento
correspondente da matriz A. Apresentar os elementos da matriz.*/
FUNCTION MAIN()

    LOCAL aVetorA := {}, aVetorB := {}, nN := 1, cElemento, cElementoB, nAn, nBn

    WHILE nN <= 5
    cElemento := HB_RandomInt(10,20)
    AADD(aVetorA, cElemento)
    cElementoB := cElemento*-1
    AADD(aVetorB, cElementoB)
    nN++
    ENDDO

    ?"O vetor ", hb_ValToExp(aVetorA), "com sinal trocado eh:"
    ?hb_ValToExp(aVetorB)
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL
