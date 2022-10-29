/*15.Ler duas matrizes do tipo vetor. A com 10 elementos e B com 15
elementos. Construir uma matriz C, sendo esta, a junção das duas
outras matrizes. Desta forma, C deverá ter a capacidade de
armazenar 25 elementos. Apresentar a matriz C.*/
FUNCTION MAIN()

    LOCAL aVetorA := {}, aVetorB := {}, aVetorC := {}
    LOCAL nN := 1, nElemento := 0, nElementoB := 0

    WHILE nN < 12
        nElemento := HB_RandomInt(10,20)
        AADD(aVetorA, nElemento)
        nElementoB := HB_RandomInt(10,20)
        AADD(aVetorB, nElementoB)
        AADD(aVetorC, nELemento)
        AADD(aVetorC, nElementoB)
        nN++
    ENDDO

    ?"A combinacao do primeiro vetor, com o segundo vetor, resulta em:"
        ?hb_ValToExp(aVetorC)
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL


