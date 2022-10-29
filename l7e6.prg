/*6. Elaborar um programa que popule um vetor de 30 posições com
valores de 30 até 1. Exibir o conteúdo do vetor.*/
FUNCTION MAIN()

    LOCAL aVetor:={}, nN := 30, cElemento :="", nIn := 0

        WHILE nN > 0
        AADD(aVetor, nN)
        nN--
        ENDDO

        FOR EACH nIn in aVetor
        ?nIn
        NEXT
        ?""
        ?"-~-~-~-~-~-~-~-~"
        ?""
RETURN NIL
