/*8. Sabendo que a �rea quadrada � dada pela multiplica��o da medida de
2 lados, escreva um algoritmo que mostre a �rea quadrada de um
espa�o qualquer cujos lados foram informados pelo usu�rio. O c�lculo
da �rea dever� ser realizado por uma fun��o.*/

FUNCTION MAIN()

    LOCAL nArea := 0, nL1 := 0, nL2 := 0

    ?"****Vamos Calcular a area do seu espaco!****"
    ACCEPT "Informe um dos lados: " to nL1
    ACCEPT "Informe o outro lado: " to nL2

    nL1 := Val(nL1)
    nL2 := Val(nL2)
    nArea := Area(nArea, nL1, nL2)

    ?"A area desse esse espaco e: ", ALLTRIM(STR(nArea)), "m�."
    ?""

RETURN NIL

FUNCTION Area(nArea, nL1, nL2)

    nArea := nL1*nL2

RETURN nArea
