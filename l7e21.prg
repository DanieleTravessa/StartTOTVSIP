/*21.Carregar um vetor com 12 caracteres gerados aleatoriamente (randômicos). Serão válidos apenas caracteres que representem
letras minúsculas de “a” até “z”. A carga do vetor deverá ser feita através de uma sub-rotina que é chamada automaticamente no
programa principal. Os caracteres NÃO podem se repetir. Exibir no final o vetor gerado. A exibição deverá ser feita via uma sub-rotina.*/

FUNCTION MAIN()

    LOCAL aVetorA :={}, nN := 1, cElemento, cElementoB, cElementoS, nA
    
    Do WHILE nN <= 12 //Estrutura de repetição
        cElemento := HB_RandomInt(97,122) //Gera os elementos de forma aleatória
        cElementoB := CHR(cElemento) //Busca o elemento em sua versão Caracter dentro da tabela ASC
        cElementoS := ASCAN(aVetorA, cElementoB) // Checa a existencia e a posição do elemento no Array
        IF cElementoS = 0 // Caso a posição seja 0 indica que o elemento não consta no Array
            AADD(aVetorA, cElementoB) //Dada essa condição o programa adiciona o elemento no Array        
        ENDIF
        nN++
    ENDDO
    
    ?hb_valtoexp(aVetorA)
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
    
RETURN NIL
