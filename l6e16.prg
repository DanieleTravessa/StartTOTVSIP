/*16.Criar um programa de funções com literais e nela disponibilizar as
funções/procedimentos:
a. isLetra(c): informa se o caractere enviado é uma letra.
b. isDigito(c): informa se o caractere enviado é um número.
c. isSimbolo(c): informa se o caractere enviado é um símbolo.
d. toLower(c): converte uma letra maiúscula em minúscula.
e. cTroca(a, b): troca os valores entre as variáveis a e b.*/

FUNCTION MAIN()

LOCAL cCaracter := "D@n1ele", nA := 8, nB := 23, nAux := 5, cCel := 1, nOpcao := 0
    
    CLS
       
    ?"1 --> E Letra? : Informa se o caractere enviado e uma letra."
    ?"2 --> E Numero? : Informa se o caractere enviado e um numero."
    ?"3 --> E Simbolo? : Informa se o caractere enviado e um simbolo."
    ?"4 --> Minuscula.: Converte uma letra maiuscula em minuscula."
    ?"5 --> Troca(a, b): Troca os valores entre as variaveis a e b."
    ?""
        
    Accept "Qual a Operacao voce quer acionar? " to nOpcao
    nOpcao := val(nOpcao)

    IF nOpcao == 1
        isLetra(cCel, cCaracter)
    ELSEIF nOpcao == 2
        isDigito(cCel, cCaracter)   
    ELSEIF nOpcao == 3
        isSimbolo(cCel, cCaracter)
    ELSEIF nOpcao == 4
        toLower(cCaracter)
    ELSEIF nOpcao == 5
        cTroca(nA, nB, nAux)
    ENDIF    

RETURN NIL 

//a. isLetra(c): informa se o caractere enviado é uma letra.
FUNCTION isLetra(cCel, cCaracter)

    LOCAL lLetra

        FOR EACH cCel in cCaracter
            lLetra := ISALPHA(cCel)
            IF lLetra == .F.
            ?cCel, "Nao eh uma letra."
            ELSE
            ?cCel, "Eh uma letra!"
            ENDIF
        NEXT
    ?""

RETURN cCel

//b. isDigito(c): informa se o caractere enviado é um número.
FUNCTION isDigito(cCel, cCaracter)

    LOCAL lNumero

        FOR EACH cCel in cCaracter
            lNumero := ISDIGIT(cCel)
            IF lNumero == .F.
            ?cCel, "Nao eh um numero."
            ELSE
            ?cCel, "Eh um numero!"
            ENDIF
        NEXT
    ?""

RETURN cCel

//c. isSimbolo(c): informa se o caractere enviado é um símbolo.
FUNCTION isSimbolo(cCel, cCaracter)

    LOCAL cSimbolo

        FOR EACH cCel in cCaracter
            cSimbolo := ASC(cCel)
            IF cSimbolo > 31 .and. cSimbolo < 48 .or. cSimbolo > 57 .and. cSimbolo < 65 .or. cSimbolo > 90;
            .and. cSimbolo < 99 .or. cSimbolo > 122 .and. cSimbolo < 127
            ?cCel, "Trata-se de um simbolo!"
            ELSE
            ?cCel, "Nao eh um simbolo."
            ENDIF
        NEXT
    ?""

RETURN cCel

//d. toLower(c): converte uma letra maiúscula em minúscula.
FUNCTION toLower(cCaracter)
    
    cCaracter := LOWER (cCaracter)
    ?cCaracter          
    ?""

RETURN cCaracter

//e. cTroca(a, b): troca os valores entre as variáveis a e b.
FUNCTION cTroca(cCaracter, nA, nAux)

    ACCEPT "Insira mais um valor : " to nA 
    nAux := nA 
    nA := cCaracter
    cCaracter := nAux
    ?"Os valores trocados ficam: ", cCaracter, "depois", nA 
    ?""
/*Montei essa função com o Aux, mas se simplismente trocarmos as variáveis na saída elas já seriam apresentadas trocadas*/
Return NIL
