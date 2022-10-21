/*76c.Para cada uma das séries abaixo, elabore um programa que calcule o valor de Z. 
O valor de n deverá ser informado pelo usuário: */

Function Main()

    Local nSoma:=0, nNum:=0, nCont:=0, nInv:=0

        ?"*---------------------------*"
        ?"Valor de 1/2 - 2/4 + 3/6 ... "
        ?"*---------------------------*"

        ACCEPT("Informe a quantidade de fracoes ") to nNum

        nNum:=Val(nNum)
        nSoma :=0
        
        FOR nCont := 1 TO nNum
            IF nNum%2 == 0
                nSoma := 0
            ELSE
                nSoma := 0.5
            END IF
        NEXT
        
        ?"O valor de z e: ", Alltrim(STR(nSoma))
        ?""
    
RETURN NIL
