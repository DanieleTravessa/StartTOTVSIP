/*21.Carregar um vetor com 12 caracteres gerados aleatoriamente (rand�micos). Ser�o v�lidos apenas caracteres que representem
letras min�sculas de �a� at� �z�. A carga do vetor dever� ser feita atrav�s de uma sub-rotina que � chamada automaticamente no
programa principal. Os caracteres N�O podem se repetir. Exibir no final o vetor gerado. A exibi��o dever� ser feita via uma sub-rotina.*/

FUNCTION MAIN()

    LOCAL aVetorA :={}, nN := 1, cElemento, cElementoB, cElementoS, nA
    
    Do WHILE nN <= 12 //Estrutura de repeti��o
        cElemento := HB_RandomInt(97,122) //Gera os elementos de forma aleat�ria
        cElementoB := CHR(cElemento) //Busca o elemento em sua vers�o Caracter dentro da tabela ASC
        cElementoS := ASCAN(aVetorA, cElementoB) // Checa a existencia e a posi��o do elemento no Array
        IF cElementoS = 0 // Caso a posi��o seja 0 indica que o elemento n�o consta no Array
            AADD(aVetorA, cElementoB) //Dada essa condi��o o programa adiciona o elemento no Array        
        ENDIF
        nN++
    ENDDO
    
    ?hb_valtoexp(aVetorA)
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
    
RETURN NIL
