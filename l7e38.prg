/*38.Ler uma matriz A de 3 linhas e 3 colunas. Calcular e exibir uma matriz B de mesmo tamanho, 
sendo que a primeira linha de B receba a primeira coluna de A, a segunda linha de B receba a segunda coluna
de A e a terceira linha de B receba a terceira coluna de A. Apresentar a matriz resultante.*/
FUNCTION MAIN()

    LOCAL A := ARRAY(3,3), B := ARRAY(3,3)
    LOCAL nCont2:=0, nCont:=0

    A[1][1] := "A"
    A[1][2] := "B"
    A[1][3] := "C"
    A[2][1] := "D"
    A[2][2] := "E"
    A[2][3] := "F"
    A[3][1] := "G"
    A[3][2] := "H"
    A[3][3] := "I"

    FOR nCont2 := 1 TO 3
      FOR nCont := 1 TO 3
          B[nCont][nCont2] := A[nCont2][nCont]
      NEXT
    NEXT

    ?"A primeira matriz e: ", CHR(13)
    ?hb_valtoexp(A)
    ?""
    ?"A segunda matriz e: ", CHR(13)
    ?hb_valtoexp(B)
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL
    