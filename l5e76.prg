/*76a.Para cada uma das s�ries abaixo, elabore um programa que calcule o valor de Z. 
O valor de n dever� ser informado pelo usu�rio: */

FUNCTION MAIN ()

    LOCAL nZ :=0, nN:= 0, nCont

    ACCEPT "Informe um valor: " to nN
    nN := Val (nN)

    FOR nCont := 0 to nN
        nZ += (1/nCont)
    NEXT

    ?"O valor de Z e =", AllTrim(Str(nZ))
    ?""

RETURN NIL
