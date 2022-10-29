/*22.Ler 12 elementos de uma matriz tipo vetor, colocá-los em ordem crescente.*/

FUNCTION MAIN()

    LOCAL aVetorA := {}, nN := 1, cElemento, cA := ""

    CLS

    WHILE nN <= 12
        ACCEPT "Insira um elemento: " to cElemento
        AADD(aVetorA, cElemento)
        nN++
    ENDDO

    ASORT(aVetorA)
    
    ?hb_valtoexp(aVetorA)
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL
