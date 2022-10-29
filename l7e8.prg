/*8. Ler dois vetores A e B, de 20 elementos cada e calcular um terceiro,
C, onde cada elemento será a soma dos correspondentes em A e B.
Apresentar o vetor resultante.*/
FUNCTION MAIN()

    LOCAL aVetorA [20], aVetorB[20], aVetorC[20], nN := 0, cElemento, cElementoB, nAn, nBn, nCn

    WHILE nN < 20
        cElemento := HB_RandomInt(10,20)
        AADD(aVetorA, cElemento)
        cElementoB := HB_RandomInt(10,20)
        AADD(aVetorB, cElementoB)
        AADD(aVetorC, cELemento+cElementoB)
        nN++
    ENDDO

    FOR EACH nAn, nBn, nCn IN aVetorA , aVetorB, aVetorC
        ?"A soma de ", nAn, "+", nBn, "=", nCn
    NEXT
        ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL


