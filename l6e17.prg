/*17.Criar um programa de fun��es com literais e nela disponibilizar as
fun��es:
a. iTroca(a, b): troca os valores entre as vari�veis a e b.
b. isPar(x): informa se o inteiro enviado � um n�mero par.
c. isImPar(x): informa se o inteiro enviado � um n�mero �mpar.
d. Inverte(x): retorna o n�mero com sinal invertido.
e. isDiv(a, b): retorna se a � divis�vel por b.*/
FUNCTION MAIN()

LOCAL nA := 8, nB := 23, nAux := 5, nOpcao := 0
    
    CLS
       
    ?"1 --> Troca       : troca os valores entre as variaveis a e b."
    ?"2 --> Eh Par?     : informa se o inteiro enviado e um numero par."
    ?"3 --> Eh ImPar    : informa se o inteiro enviado e um numero impar."
    ?"4 --> Inverte     : retorna o numero com sinal invertido."
    ?"5 --> Divisivel   : retorna se a e divisivel por b."
    ?""
        
    Accept "Qual a Operacao voce quer acionar? " to nOpcao
    nOpcao := val(nOpcao)

    IF nOpcao == 1
        iTroca(nA, nB)
    ELSEIF nOpcao == 2
        isPar(nA)   
    ELSEIF nOpcao == 3
        isImPar(nA)
    ELSEIF nOpcao == 4
        Inverte(nA)
    ELSEIF nOpcao == 5
        isDiv(nA, nB)
    ENDIF    

RETURN NIL 

//a. iTroca(a, b): troca os valores entre as vari�veis a e b.
FUNCTION iTroca(nA, nB)

    LOCAL nAux := 0

    ACCEPT "Insira mais um valor : " to nA 
    ACCEPT "Insira mais um valor : " to nB 
    nAux := nB 
    nB := nA
    nA := nAux
    ?"Os valores trocados ficam: ", nA, "depois", nB 
    ?""
/*Montei essa fun��o com o Aux, mas se simplismente trocarmos as vari�veis na sa�da elas j� seriam apresentadas trocadas*/
Return NIL

//b. isPar(x): informa se o inteiro enviado � um n�mero par.
FUNCTION isPar(nA)

    IF nA%2 != 0
    ?"O numero inserido nao eh par."
    ELSE
    ?"O numero eh par!"
    ENDIF
    ?""

RETURN nA

//c. isImPar(x): informa se o inteiro enviado � um n�mero �mpar.
FUNCTION isImPar(nA)

    IF nA%2 = 0
        ?"O numero inserido nao eh impar."
        ELSE
        ?"O numero eh impar!"
        ENDIF
    ?""

RETURN nA

//d. Inverte(x): retorna o n�mero com sinal invertido.
FUNCTION Inverte(nA)

    LOCAL nI 

    nI := nA*-1 
    
    ?"O numero inserido com sinal invertido eh", ALLTRIM(STR(nI))
    ?""

RETURN nI

//e. isDiv(a, b): retorna se a � divis�vel por b.
FUNCTION isDiv(nA, nB)
    
    ACCEPT "Insira mais um valor : " to nB 
    nB := Val(nB)
    
    IF nA%nB = 0
        ?"O numero", nA, "eh divisivel por", nB
        ELSE
        ?"O numero", nA, "nao eh divisivel por", nB
    ENDIF
    ?""

RETURN NIL




