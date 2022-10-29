/*23.Fazer um programa que trate de um vetor de 8 elementos numericos.
Ele devera apresentar um menu que permitira as seguintes
operacoes: */

FUNCTION MAIN()

    LOCAL aVetorA := {}, aVetorB := {}, lScanvetor := 0
    LOCAL nN := 1, cElemento, cElementoB, nAn, nBn, nV1 := 0, nV2 := 0, nOpcao := 0, cA := ""

    CLS

    @ 1, 2, 12, 20 BOX "§"

    @ 2, 4 Prompt "CarregarV";
            Message "1 --> a. Carregar o vetor atraves da leitura dos valores."
    @ 3, 4 Prompt "ExibirV";
            Message "2 --> b. Exibir o conteudo do vetor."
    @ 4, 4 Prompt "VetorCresc";
            Message "3 --> c. Classificar os valores em ordem crescente. Caso o vetor esteja vazio, informar."
    @ 5, 4 Prompt "VetorDec";  
            Message "4 --> d. Classificar os valores em ordem decrescente. Caso o vetor esteja vazio, informar."  
    @ 6, 4 Prompt "Busca";
            Message "5 --> e. Pesquisar a existencia de um valor no vetor. Caso o vetor esteja vazio, informar."
    @ 7, 4 Prompt "Somatorio";  
            Message "6 --> f. Informar o somatorio dos valores do vetor."          
    @ 8, 4 Prompt "Media";
            Message "7 --> g. Informar a media dos valores do vetor."
    @ 9, 4 Prompt "Maior_Menor";  
            Message "8 --> h. Informar o maior e o menor valor do vetor."          
    @ 10, 4 Prompt "Embaralhar";
            Message "9 --> i. Embaralhar o conteudo do vetor."
    @ 11, 4 Prompt "Repeticao";  
            Message "10 --> j. Informar os valores que se repetem e a quantidade de repeticoes."                  

    SET MESSAGE TO 13
    
    Menu to nOpcao
            
    IF nOpcao == 1
        CarregarV(nN, aVetorA, cElemento)
    ELSEIF nOpcao == 2
        ExibirV(nN, nV1, aVetorA)   
    ELSEIF nOpcao == 3
        VetorCresc(aVetorA, nN)
    ELSEIF nOpcao == 4
        VetorDec(aVetorA, nN, aVetorB, nAn)
    ELSEIF nOpcao == 5
        Busca(nN, nAn, nV1, aVetorA)   
    ELSEIF nOpcao == 6
        Somatorio(nN, nV1, aVetorA)
    ELSEIF nOpcao == 7
        Media(aVetorA, nN, nV1)
    ELSEIF nOpcao == 8
        Maior_Menor(aVetorA, nN)
    ELSEIF nOpcao == 9
        Embaralhar(nN, nV1, nV2, aVetorA, aVetorB)   
    ELSEIF nOpcao == 10
        Repeticao(aVetorA, aVetorB, nN, nBn, nAn)
    ENDIF    
    
RETURN NIL

//a. Carregar o vetor através da leitura dos valores.
FUNCTION CarregarV(nN, aVetorA, cElemento)
 
    WHILE nN <= 8
        cElemento := HB_RandomInt(1,100)
        AADD(aVetorA, cElemento)
        nN++
    ENDDO

RETURN aVetorA

/*b. Exibir o conteúdo do vetor.*/
FUNCTION ExibirV(nN, nV1, aVetorA)   

CarregarV(nN, aVetorA)

?hb_ValToExp(aVetorA)        
?""

RETURN NIL

// c. Classificar os valores em ordem crescente. Caso o vetor esteja vazio, informar.
Function VetorCresc(aVetorA, nN)

CarregarV(nN, aVetorA)
?"Aqui esta o Vetor", hb_ValToExp(aVetorA), "ordenado de forma crescente: "
aVetorA := ASORT(aVetorA)
?"              ****", hb_ValToExp(aVetorA), "****"
?""

RETURN NIL

// d. Classificar os valores em ordem decrescente. Caso o vetor esteja vazio, informar.
FUNCTION VetorDec(aVetorA, nN, aVetorB, nAn)

CarregarV(nN, aVetorA)
?"Aqui esta o Vetor", hb_ValToExp(aVetorA), "ordenado de forma decrescente: "
aVetorA := ASORT(aVetorA)
    FOR nN := LEN(aVetorA) TO 1 STEP -1
    AADD(aVetorB, aVetorA[nN])
    NEXT  
    
?"              ****", hb_ValToExp(aVetorB), "****"
?""
RETURN NIL

// e. Pesquisar a existência de um valor no vetor. Caso o vetor esteja vazio, informar.
FUNCTION Busca(nN, nAn, nV1, aVetorA)

CarregarV(nN, aVetorA)

  //?"              ****", hb_ValToExp(aVetorA), "****" ---> Print para conferência

    ACCEPT "              --->Insira um valor para a busca: " to nAn
    nAn := Val(nAn)
    nV1 := ASCAN(aVetorA, nAn)
    
    IF nV1 != 0
        ?"       >>>> O valor", nAn, "existe no vetor e esta na posicao", ALLTRIM(STR(nV1)), "<<<<"
    ELSE
        ?"          >>>> O valor", nAn, "nao esta contido no vetor. <<<<"
    ENDIF
    ?""

RETURN NIL

// f. Informar o somatório dos valores do vetor.
FUNCTION Somatorio(nN, nV1, aVetorA)

CarregarV(nN, aVetorA)
?hb_ValToExp(aVetorA)

FOR nN := 1 TO LEN (aVetorA)
    nV1 += aVetorA[nN]
NEXT
?"A soma dos valores contidos no vetor eh", ALLTRIM(STR(nV1))
?""
RETURN NIL

// g. Informar a média dos valores do vetor.
FUNCTION Media(aVetorA, nN, nV1, nV2)

CarregarV(nN, aVetorA)

    FOR nN := 1 TO LEN(aVetorA)
        nV1 += aVetorA[nN]            
    NEXT         
    
    ?">>>> No Vetor ", hb_ValToExp(aVetorA), "<<<<"
    ?"      >>>> A media dos valores e ", ALLTRIM(STR(nV1/LEN(aVetorA))), "<<<<"
    ?""

RETURN NIL

//h. Informar o maior e o menor valor do vetor.
FUNCTION Maior_Menor(aVetorA, nN)

CarregarV(nN, aVetorA)
    
    ?">>>> No Vetor ", hb_ValToExp(aVetorA), "<<<<"
    ASORT(aVetorA)
  
    ?"      >>>> O maior valor e o numero ", ALLTRIM(STR(aVetorA[8])), "<<<<"
    ?"      >>>> O menor valor e o numero ", ALLTRIM(STR(aVetorA[1])), "<<<<"
    ?""

RETURN NIL

// i. Embaralhar o conteúdo do vetor.
FUNCTION Embaralhar(nN, nV1, nV2, aVetorA, aVetorB)

CarregarV(nN, aVetorA)
?">>>>Esses sao os valores do vetor", hb_ValToExp(aVetorA), "embaralhados.<<<<"

Do WHILE LEN(aVetorB) != LEN(aVetorA)
nV1 := HB_RandomInt(LEN(aVetorA))
    nV2 := ASCAN(aVetorB, aVetorA[nV1]) // Checa a existencia e a posição do elemento no Array
    
    IF nV2 = 0 // Caso a posição seja 0 indica que o elemento não consta no Array
    AADD(aVetorB, aVetorA[nV1])
        //AADD(aVetorB, cElementoB) //Dada essa condição o programa adiciona o elemento no Array       
    ENDIF

ENDDO
?"               >>>>", hb_ValToExp(aVetorB), "<<<<"
?""
RETURN NIL

// j. Informar os valores que se repetem e a quantidade de repetições.

FUNCTION Repeticao(aVetorA, aVetorB, nN, nBn, nAn)

    CarregarV(nN, aVetorA)
    //?hb_ValToExp(aVetorA)

        Asort(aVetorA)

        ? hb_ValToExp(aVetorA)

        FOR nAn :=1 TO LEN(aVetorA)-1
            IF aVetorA[nAn] == (aVetorA[nAn+1])
                nN+=1
                IF nAn == LEN(aVetorA)-1 .and. (nN+1) >= 2
                    ?"O numero: ", ALLTRIM(STR(aVetorA[nAn])), "aparece", ALLTRIM(STR(nN+1)), "vezes! "
                    nN:=0
                ENDIF

            ELSEIF (nN+1) >= 2
                ?"O numero: ", ALLTRIM(STR(aVetorA[nAn])), "aparece", ALLTRIM(STR(nN+1)), "vezes! "
                nN := 0
            ENDIF
        NEXT
    