/*15.Crie uma fun��o chamada �ehPositivo� que descubra se um valor �
positivo ou negativo (considere o valor zero como positivo) e retorne
Verdadeiro ou Falso. Use essa fun��o em um programa que calcula o
m�dulo de um n�mero informado pelo usu�rio.*/
FUNCTION ehPositivo()

    LOCAL nNum := 0, nAbs := 0, lPositivo := .T.

    ACCEPT "Informe um valor e vou dizer se � positivo, negativo e retornar seu modulo: " to nNum
    
    nNum := Val(nNum)

    Do CASE
        CASE nNum >= 0
        lPositivo := .T.
            ?"O valor inserido e �positivo com modulo, ", ALLTRIM(STR(ABS(nNum)))
            ?""
        CASE nNum < 0
        lPositivo := .F.
            ?"O valor inserido e negativo com modulo, ", ALLTRIM(STR(ABS(nNum)))
            ?""
    ENDCASE

RETURN lPositivo


