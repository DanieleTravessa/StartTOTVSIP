/*76b.Para cada uma das s�ries abaixo, elabore um programa que calcule o valor de Z. 
O valor de n dever� ser informado pelo usu�rio: */

FUNCTION MAIN()

    LOCAL nSoma := 0, nNum := 0, nCont := 0, nInv := 0, nCont2 := 30

        FOR nCont := 1 to 30
            nSoma += (nCont/nCont2--)
        NEXT
        QOUT("**")
        QOUT("Valor de 1/30 + 2/29 + ... + 29/2 + 30/1 �: ", Alltrim(STR(nSoma)))

        ACCEPT("Informe a quantidade de fra�oes ") to nNum

        nNum := Val(nNum)
        nSoma := 0
        FOR nCont := 1 to nNum
            if nNum%2 == 0
                nSoma := 0
            else
                nSoma := 0.5
            end if
        NEXT
        QOUT("O valor de z e: ", Alltrim(STR(nSoma)))

RETURN NIL
