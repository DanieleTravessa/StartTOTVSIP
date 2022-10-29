/*9. Fazer uma função que apresente na tela todos os elementos de um
vetor que será passado como parâmetro para a função. Este
procedimento será útil para vários exercícios. Que tal colocá-lo numa
biblioteca?*/
FUNCTION MAIN()

    LOCAL aVetor:={}, nN := 0, cElemento :="", nIn := 0

    WHILE nN < 4
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


