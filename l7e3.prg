/*3. Ler 10 elementos de uma matriz tipo vetor e apresentá-los na ordem
inversa em que foram lidos e armazenados.*/

FUNCTION MAIN()

    LOCAL aVetor:={}, nN := 0, cElemento :="", nIn := 0

    WHILE nN < 10
    ACCEPT "Insira a informacao: " to cElemento
    AADD(aVetor, cElemento)
    nN++
    ENDDO

    FOR EACH nIn in aVetor DESCEND
        ?nIn
    NEXT
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL

