/*10.Ler dois vetores, A e B de 10 elementos cada um e calcular um vetor
C onde seu primeiro elemento é o primeiro elemento de A, seu
segundo elemento é o primeiro de B, seu terceiro elemento é o
segundo de A, e assim sucessivamente. Notem que o vetor C deverá
ter 20 elementos. Exibir o conteúdo do vetor C.*/
FUNCTION MAIN()

    LOCAL aVetorA := {}, aVetorB := {}, aVetorC := {}, nN := 1, cElemento, cElementoB, nAn, nBn, nCn

    WHILE nN <= 10
        cElemento := HB_RandomInt(10,20)
        AADD(aVetorA, cElemento)
        cElementoB := HB_RandomInt(10,20)
        AADD(aVetorB, cElementoB)
        AADD(aVetorC, cELemento)
        AADD(aVetorC, cElementoB)
        nN++
    ENDDO

    ?"A combinacao do primeiro vetor, com o segundo vetor, resulta em:"
    FOR EACH nCn IN aVetorC
    ?nCn
    NEXT
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL


