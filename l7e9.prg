/*9. Fazer uma fun��o que apresente na tela todos os elementos de um
vetor que ser� passado como par�metro para a fun��o. Este
procedimento ser� �til para v�rios exerc�cios. Que tal coloc�-lo numa
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


