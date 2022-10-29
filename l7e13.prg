/*13.Ler 8 elementos em uma matriz A tipo vetor. Construir uma matriz B
de mesma dimensão onde cada elemento é o triplo do elemento
correspondente da mátria A.*/

FUNCTION MAIN()

    LOCAL aVetorA := {}, aVetorB := {}, nN := 0, cElemento, cElementoB, nAn, nBn

    WHILE nN < 9
        cElemento := HB_RandomInt(10,20)
        AADD(aVetorA, cElemento)
        cElementoB := cElemento*3
        AADD(aVetorB, cELementoB)
        nN++
    ENDDO

        ?hb_ValToExp(aVetorA)
        ?hb_ValToExp(aVetorB)
        ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL


