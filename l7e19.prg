/*19.Carregar um vetor com 50 caracteres gerados aleatoriamente (rand�micos). 
Ser�o v�lidos apenas caracteres que representem letras mai�sculas de �A� at� �Z�. 
A carga do vetor dever� ser feita atrav�s de uma sub-rotina que � chamada automaticamente no
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


