/*11.Ler um vetor A de 15 elementos e a partir dele construir um vetor B
de mesmo tamanho, sendo o inverso de A, ou seja, o primeiro
elemento de B dever� receber o �ltimo de A o segundo de B dever�
receber o pen�ltimo de A e assim por diante.*/
FUNCTION MAIN()

    LOCAL aVetorA[15], aVetorB[15], nN := 1, cElemento, cElementoB, nAn, nBn

        WHILE nN < 16
            cElemento := HB_RandomInt(10,20)
            AADD(aVetorA, cElemento)
            nN++
        ENDDO
    
        FOR EACH nAn IN aVetorA DESCEND
            AADD(aVetorB, nAn)
            ?nAn, nBn
        NEXT
        ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL






