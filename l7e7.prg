/*7. Elaborar um programa que popule um vetor de 10 posi��es com
valores pares a partir de 2 at� o 20. Exibir o conte�do do vetor.*/
FUNCTION MAIN()

    LOCAL aVetor:={}, nN := 1, cElemento :="", nIn := 0

    WHILE nN <= 10
    nIn := nN*2
    AADD(aVetor, nIn)
    nN++
    ENDDO

    FOR EACH cELemento in aVetor
        ?cElemento
    NEXT
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL


