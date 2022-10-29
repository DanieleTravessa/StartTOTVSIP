/*19.Carregar um vetor com 50 caracteres gerados aleatoriamente (randômicos). 
Serão válidos apenas caracteres que representem letras maiúsculas de “A” até “Z”. 
A carga do vetor deverá ser feita através de uma sub-rotina que é chamada automaticamente no
programa principal. Os caracteres podem se repetir.*/
FUNCTION MAIN()

    LOCAL aVetorA := {}, aVetorB := {}, nN := 1, cElemento, cElementoB, nAn, nBn

    WHILE nN <= 50
    cElemento := HB_RandomInt(65,90)
    cElementoB := CHR(cElemento)
    AADD(aVetorA, cElementoB)
    nN++
    ENDDO

    ?hb_valtoexp(aVetorA)
    ?"-~-~-~-~-~-~-~-~"
    ?""        
RETURN NIL


