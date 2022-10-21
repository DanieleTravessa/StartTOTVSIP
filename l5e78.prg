/*78.Fazer um programa para determinar e exibir se um número informado é primo.*/

Function Main()
    LOCAL lP := .T. , nCount := 2, nNum := 0

    ACCEPT "Introduza um Numero: " to nNum

    WHILE nCount < val(nNum) 
        IF val(nNum) % nCount == 0
            lP := .F.
            EXIT
        ENDIF
        nCount += 1
    ENDDO

    IF lP
        ? "O numero e primo."
        ?""
    ELSE
        ?"O numero nao e primo."
        ?""
    ENDIF
RETURN NIL
