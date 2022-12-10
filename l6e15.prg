/*15.Crie uma função chamada “ehPositivo” que descubra se um valor é
positivo ou negativo (considere o valor zero como positivo) e retorne
Verdadeiro ou Falso. Use essa função em um programa que calcula o
módulo de um número informado pelo usuário.*/
FUNCTION ehPositivo()

    LOCAL nNum := 0, nAbs := 0, lPositivo := .T.

    ACCEPT "Informe um valor e vou dizer se é positivo, negativo e retornar seu modulo: " to nNum
    
    nNum := Val(nNum)

    Do CASE
        CASE nNum >= 0
        lPositivo := .T.
            ?"O valor inserido e ´positivo com modulo, ", ALLTRIM(STR(ABS(nNum)))
            ?""
        CASE nNum < 0
        lPositivo := .F.
            ?"O valor inserido e negativo com modulo, ", ALLTRIM(STR(ABS(nNum)))
            ?""
    ENDCASE

RETURN lPositivo


