/*20.Alterar o programa anterior de modo a incluir 4 menus que terão as seguintes finalidades:*/

FUNCTION MAIN()

    LOCAL aVetorA := {}, aVetorB := {}
    LOCAL nN := 1, cElemento, cElementoB, nAn, nBn, nV1 := 0, nV2 := 0, nOpcao := 0, cA := ""

    CLS
                                  
    WHILE nN <= 10
    cElemento := HB_RandomInt(65,90)
    cElementoB := CHR(cElemento)
    AADD(aVetorA, cElementoB)
    nN++
    ENDDO
    
    @ 1, 2, 6, 30 BOX "*"

    @ 2, 4 Prompt "Listar";
            Message "Listar o conteudo completo do vetor."
    @ 3, 4 Prompt "Buscar Caracter";
            Message "Pesquisa e informa se o caractere existe ou nao no vetor, retornando a posicao e todas as ocorrencias."
    @ 4, 4 Prompt "Buscar ultimo Caracter";
            Message "Pesquisa e informa qual a posicao da ultima ocorrencia do caractere."
    @ 5, 4 Prompt "Buscar primeiro Caracter";  
        Message "Pesquisa e informa qual a posicao da primeira ocorrencia desse caractere."          

    SET MEssage to 7
    
    Menu to nOpcao

    IF nOpcao == 1
        Listar(nN, aVetorA)
    ELSEIF nOpcao == 2
        Buscar(nN, nV1, aVetorA)   
    ELSEIF nOpcao == 3
        BuscarUlt(aVetorA, aVetorB, cA, nV1, nAn, nBn)
    ELSEIF nOpcao == 4
        BuscarPri(aVetorA)
    ENDIF    

RETURN NIL 

//a. Listar o conteúdo completo do vetor.
FUNCTION Listar(nN, aVetorA)

    ?hb_valtoexp(aVetorA)

/*Inicialmente percorri o vetor utilizando a estrutura for até descobrir a função hb_valtoexp e otimizei o programa com ela
    FOR nN := 1 TO LEN (aVetorA)
    ?aVetorA[nN]    
    NEXT     
    ?""*/

RETURN NIL

/**b. Solicitar ao usuário um caractere, a ser pesquisado no vetor e informar se o caractere pesquisado existe ou não no vetor
informando a posição em que ele está (todas as ocorrências visto que o caractere pode se repetir).*/
FUNCTION Buscar(cA, nV1, aVetorA)

    ACCEPT "Informe o caractere: " to cA
    cA := UPPER(cA)
    nV1 := ASCAN(aVetorA, cA)
    
    IF nV1 > 0
        ?"Existe o caracter", cA, "na posicao", ALLTRIM(STR(nV1))
        ?""
    ELSE 
        ?"Esse caracter nao esta contido no vetor."
        ?""
    ENDIF

RETURN NIL

// /*c. Pesquisar se existe no vetor um caractere informado pelo usuário e informar qual a posição da última ocorrência desse
// caractere (visto que um mesmo caractere poderá se repetir).*/
Function BuscarUlt(aVetorA, aVetorB, cA, nV1, nAn, nBn)

    ASORT(aVetorA)
    FOR nAn := LEN(aVetorA) TO 1 STEP -1
        AADD(aVetorB, aVetorA[nAn])
    NEXT
    ACCEPT "Informe o caractere: " to cA
    cA := UPPER(cA)
    nV1 := ASCAN(aVetorB, cA)
   
        IF nV1 > 0
            ?"A ultima ocorrencia do caractere informado no vetor esta na posicao ", nV1
            ?""
        ELSE
            ?"Esse caractere nao aparece no vetor."
            ?""
        ENDIF
    
    /*?hb_valtoexp(aVetorA) --> Prints de checagem
    ?hb_valtoexp(aVetorB)*/

RETURN NIL

// /*d. Pesquisar se existe no vetor um caractere informado pelo usuário e informar qual a posição da primeira ocorrência desse
// caractere (visto que um mesmo caractere poderá se repetir).*/
FUNCTION BuscarPri(aVetorA, cA, nV1)

    ASORT(aVetorA)

    ACCEPT "Informe o caractere: " to cA
    cA := UPPER(cA)
    nV1 := ASCAN(aVetorA, cA)
   
        IF nV1 > 0
            ?"A primeira ocorrencia do caractere informado no vetor esta na posicao ", ALLTRIM(STR(nV1))
            ?""
        ELSE
            ?"Esse caractere nao aparece no vetor."
            ?""
        ENDIF
    //?hb_valtoexp(aVetorA) //--> Print de checagem

RETURN NIL
