/*76b.Para cada uma das séries abaixo, elabore um programa que calcule o valor de Z. 
O valor de n deverá ser informado pelo usuário: */

FUNCTION MAIN()

    LOCAL nSoma := 0, nNum := 0, nCont := 0, nInv := 0, nCont2 := 30

        FOR nCont := 1 to 30
            nSoma += (nCont/nCont2--)
        NEXT
        QOUT("**")
        QOUT("Valor de 1/30 + 2/29 + ... + 29/2 + 30/1 é: ", Alltrim(STR(nSoma)))

        ACCEPT("Informe a quantidade de fraçoes ") to nNum

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
