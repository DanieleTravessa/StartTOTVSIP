/*5. Elaborar um programa que popule um vetor de 30 posições com
valores de 1 até 30. Exibir o conteúdo do vetor.*/
FUNCTION MAIN()

    LOCAL aVetor:={}, nN := 1, cElemento :="", nIn := 0

        WHILE nN <= 30
        AADD(aVetor, nN)
        nN++
        ENDDO

        FOR EACH nIn in aVetor
            ?nIn
        NEXT
        ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL


