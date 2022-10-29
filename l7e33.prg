/*33.Fa�a o programa do mapa de troco. Nele o usu�rio informa um valor monet�rio a pagar e o programa calcula 
qual a menor quantidade de c�dulas/moedas ser�o necess�rias para pagar exatamente este valor.
Por exemplo: se o usu�rio informar R$ 1.260,00, o programa dever� informar 6 notas de R$ 200,00; 1 nota de R$ 50,00; 
1 nota de R$10,00. Pense em utilizar uma matriz de 2 dimens�es, onde a primeira coluna contenha o valor de cada 
c�dula/moeda e a segunda ter� a quantidade.*/
FUNCTION MAIN()

    LOCAL nVal:=0

    ACCEPT("Informe o valor monetario a pagar: ") to nVal
    nVal:=val(nVal)

    ValorMonetario(nVal)

RETURN NIL


FUNCTION ValorMonetario(nVal)

    LOCAL A:=ARRAY(2,13), nCont:=1, aux:=1

    A[1][1]:=200 
    A[1][2]:=100 
    A[1][3]:=50 
    A[1][4]:=20 
    A[1][5]:=10 
    A[1][6]:=5 
    A[1][7]:=2 
    A[1][8]:=1 
    A[1][9]:=0.5 
    A[1][10]:=0.25 
    A[1][11]:=0.1 
    A[1][12]:=0.05 
    A[1][13]:=0.01

    FOR nCont := 1 to LEN(A[1])
        aux := 1
        WHILE nVal >= (A[1,nCont])
            nVal := nVal - A[1,nCont]
            A[2][nCont]:=aux++
        ENDDO
        IF (A[2,nCont]) != NIL
          ?"O valor de R$", Alltrim(STR(A[1,nCont])), "foi utilizado", Alltrim(STR(A[2][nCont])),"vez(es)"
        ENDIF
    NEXT
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL
