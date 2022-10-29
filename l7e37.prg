/*37.A partir da matriz M e N criadas nos exercícios anteriores, construir a matriz R de mesmo tamanho, 
onde cada elemento de R será a soma dos elementos correspondentes de M e N. Apresentar a matriz resultante.*/
FUNCTION MAIN()

    LOCAL aA := {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10}
    LOCAL aB := {2 , 3 , 4 , 5, 4 , 5 , 4 , 5 , 6 , 7}
    LOCAL nAux := 0
    LOCAL aC := ARRAY(10)
    LOCAL nCont := 0

    FOR nCont := 1 TO 10 

    nAux := aA[nCont] + aB[nCont]
    aC[nCont] := nAux
    ?aC[nCont]

    NEXT
    
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL

