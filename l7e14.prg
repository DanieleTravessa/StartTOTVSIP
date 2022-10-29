/*14.Ler duas matrizes A e B do tipo vetor com 20 elementos. Construir
uma matriz C, onde cada elemento de C é a subtração do elemento

correspondente de A com B. Apresentar a matriz C.*/
FUNCTION MAIN()

    LOCAL aVetorA := {}, aVetorB := {}, aVetorC := {}, nN := 0, cElemento, cElementoB, nAn, nBn, nCn

    WHILE nN < 20
        cElemento := HB_RandomInt(10,20)
        AADD(aVetorA, cElemento)
        cElementoB := HB_RandomInt(10,20)
        AADD(aVetorB, cElementoB)
        AADD(aVetorC, cELemento-cElementoB)
        nN++
    ENDDO

    FOR EACH nAn, nBn, nCn IN aVetorA , aVetorB, aVetorC
        ?"A subtracao de ", nAn, "-", nBn, "=", nCn
    NEXT
        ?""
        ?"-~-~-~-~-~-~-~-~"
        ?""
RETURN NIL


