/*31.Imagine que você está contribuindo num projeto de criação de uma nova linguagem de programação e sua parte consiste em criar
funções genéricas de manipulação de strings, que serão utilizadas pelos programadores dessa linguagem. Assim sendo, crie uma
biblioteca chamada “StrUtil” com as seguintes funções:*/

FUNCTION MAIN()

    LOCAL cA := "", cL := "", cS := "", nAn, nBn, nOpcao 

    CLS
                                 
    ?"1 --> a. Tam: retorna o tamanho de uma string informada."
    ?"2 --> b. Posic: retorna a posição de um dado caractere informado na string informada."
    ?"3 --> c. Copia: retorna uma parte da string informada a partir de uma posicao inicial e quantidade de caracteres tambem informadas."
    ?"4 --> d. Maiusc: retorna uma string informada em maiusculo. "
    ?"5 --> e. Minusc: retorna uma string informada em minusculo."
    ?"6 --> f. InverteStr: retorna a string informada invertida."
    ?"7 --> g. Del: remove de uma string a quantidade de caracteres informada a partir de uma posicao informada. Nao tem retorno,"
    ?"devera manipular a string original."
    ?"8 --> h. Ins: insere uma sub-string em uma string informada, a partir da posicao tambem informada. Nao tem retorno, devera"
    ?"manipular a string original."  
    ?"9 --> i. LFill: preenche uma string informada, a esquerda, com um caractere informado. Nao tem retorno, devera manipular a"
    ?"string original."
    ?"10 --> j. RFill: preenche uma string informada, a direita, com um caractere informado. Nao tem retorno, devera manipular a"
    ?"string original."
    ?"11 --> k. Trim: remove espaços em branco de uma string informada. Nao tem retorno, devera manipular a string original."
    ?"12 --> l. Subst: substitui todas as ocorrencias de um caractere informado, na string informada. Nao tem retorno, devera"
    ?"manipular a string original."

    Accept "Qual a Operacao voce quer acionar? " to nOpcao

    nOpcao := val(nOpcao)

    IF nOpcao == 1
        Tam(cA)
    ELSEIF nOpcao == 2
        Posic(cA, cL)   
    ELSEIF nOpcao == 3
        Copia(cA, nAn, nBn)
    ELSEIF nOpcao == 4
        Maiusc(cA)
    ELSEIF nOpcao == 5
        Minusc(cA)   
    ELSEIF nOpcao == 6
        InverteStr(nN, nV1, aVetorA)
    ELSEIF nOpcao == 7
        Del(cA, nAn)
    ELSEIF nOpcao == 8
        Ins(cA, nAn, cL)
    ELSEIF nOpcao == 9
        LFill(cA, nAn, cL)   
    ELSEIF nOpcao == 10
        RFill(cA, cL)
    ELSEIF nOpcao == 11
        TRM(cA)        
    ELSEIF nOpcao == 12
        Subt(cA, cL, cS)        
    ENDIF    

RETURN NIL 

//a. Tam: retorna o tamanho de uma string informada.
FUNCTION TAM(cA)

ACCEPT "Insira uma palavra e te informo o tamanho dela: " to cA
?"O tamanho da palavra", cA, "eh ", ALLTRIM(STR(LEN(cA)))
?""
RETURN (cA)

/*b. Posic: retorna a posição de um dado caractere
 informado na string informada."*/
FUNCTION POSIC(cA, cL)

ACCEPT "Insira uma palavra: " to cA 
ACCEPT "Insira uma letra e te informo a posicao dela na palavra informada: " to cL
?"A letra", cL, "esta na", ALLTRIM(STR(AT(cL, cA))), "° posicao."
?""

RETURN (cA)

/*c. Copia: retorna uma parte da string informada a partir de uma posição inicial 
e quantidade de caracteres também informadas."*/
FUNCTION COPIA(cA, nAn, nBn)

ACCEPT "Insira uma palavra: " to cA
?"Posso te devolver parte dela! Para isso:"
ACCEPT "Insira a partir de qual posicao: " to nAn
ACCEPT "E quantas letras quer: " to nBn
nAn := VAL(nAn)
nBn := VAL(nBn)
?"Aqui esta: ", SUBSTR(cA, nAn, nBn)

RETURN (cA)

//d. Maiusc: retorna uma string informada em maiusculo.
FUNCTION MAIUSC(cA)

ACCEPT "Insira uma palavra: " to cA
?"Essa palavra em maisculo eh: ", UPPER(cA)
?""

RETURN (cA)

//e. Minusc: retorna uma string informada em minusculo.
FUNCTION MINUSC(cA)

ACCEPT "Insira uma palavra: " to cA
?"Essa palavra em minusculo eh: ", LOWER(cA)
?""

RETURN (cA)

//f. InverteStr: retorna a string informada invertida.
FUNCTION InverteStr(nN, nV1, aVetorA)

    local cPalavra:="", cInverte:="", nCont:=0

    ACCEPT("Insira uma palavra: ") to cPalavra
    cPalavra:=UPPER(cPalavra)

    for nCont:=(len(cPalavra)) to 1 step -1
        cInverte+=(SUBSTR(cPalavra,nCont,1))
    next 

    QOUT(CHR(10),"A palavra ", cPalavra, "ao inverso é:", cInverte, CHR(10))
    

return nil
*


/*g. Del: remove de uma string a quantidade de caracteres informada a partir de uma posicao informada. 
Não tem retorno, devera manipular a string original.*/
FUNCTION DEL(cA, nAn)

ACCEPT "Insira uma palavra: " to cA
?"Posso te devolver removendo parte dela! Para isso:"
ACCEPT "Insira a partir de qual posicao: " to nAn
//ACCEPT "E quantas letras quer: " to nBn
nAn := VAL(nAn)
//nBn := VAL(nBn)
?"Aqui esta: ", SUBSTR(cA, nAn)

RETURN (cA)

/*h. Ins: insere uma sub-string em uma string informada, a partir da posicao tambem informada. 
Não tem retorno, devera manipular a string original."*/
FUNCTION INS(cA, nAn, cL)

ACCEPT "Insira uma palavra: " to cA
?"Posso te devolver adicionando informacao nela! Para isso:"
ACCEPT "Insira a partir de qual posicao: " to nAn
ACCEPT "E qual elemento quer acrescentar: " to cL
nAn := VAL(nAn)
//nBn := VAL(nBn)
?"Aqui esta: ", STUFF(cA, nAn, 0, cL)
?""

RETURN (cA)

/*i. LFill: preenche uma string informada, a esquerda, com um caractere informado. 
Não tem retorno, devera manipular a string original."*/
FUNCTION LFILL(cA, nAn, cL)

ACCEPT "Insira uma palavra: " to cA
?"Posso te devolver adicionando informacao a esquerda dela! Para isso:"
//ACCEPT "Insira a partir de qual posicao: " to nAn
ACCEPT "Qual elemento quer acrescentar: " to cL
//nAn := VAL(nAn)
//nBn := VAL(nBn)
?"Aqui esta: ", STUFF(cA, 1, 0, cL)
?""

RETURN (cA)

/*j. RFill: preenche uma string informada, a direita, com um caractere informado. 
Não tem retorno, devera manipular a string original."*/

FUNCTION RFill(cA, cL)

ACCEPT "Insira uma palavra: " to cA
?"Posso te devolver adicionando informacao a direita dela! Para isso:"
ACCEPT "Qual elemento quer acrescentar: " to cL
?"Aqui esta: ", (cA + cL)
?""

RETURN (cA)

/*k. Trim: remove espaços em branco de uma string informada. 
Nao tem retorno, devera manipular a string original.*/
FUNCTION TRM(cA)

ACCEPT "Insira uma palavra com espacos: " to cA
?"Posso te devolver excluindo os espacos dela!" 
?"Aqui esta: ", ALLTRIM(cA)
?""

RETURN (cA)

/*l. Subst: substitui todas as ocorrencias de um caractere informado, na string informada. 
Nao tem retorno, devera manipular a string original.*/
FUNCTION SUBT(cA, cL, cS)

ACCEPT "Insira uma palavra: " to cA
?"Posso te devolver substituindo letras! Para isso:"
ACCEPT "Qual letra quer retirar: " to cL
ACCEPT "Qual letra quer inserir: " to cS
?"Aqui esta: ", STRTRAN(cA, cL, cS)
?""

RETURN (cA)
