/*8. Sabendo que a área quadrada é dada pela multiplicação da medida de
2 lados, escreva um algoritmo que mostre a área quadrada de um
espaço qualquer cujos lados foram informados pelo usuário. O cálculo
da área deverá ser realizado por uma função.*/

FUNCTION MAIN()

    LOCAL nArea := 0, nL1 := 0, nL2 := 0

    ?"****Vamos Calcular a area do seu espaco!****"
    ACCEPT "Informe um dos lados: " to nL1
    ACCEPT "Informe o outro lado: " to nL2

    nL1 := Val(nL1)
    nL2 := Val(nL2)
    nArea := Area(nArea, nL1, nL2)

    ?"A area desse esse espaco e: ", ALLTRIM(STR(nArea)), "m²."
    ?""

RETURN NIL

FUNCTION Area(nArea, nL1, nL2)

    nArea := nL1*nL2

RETURN nArea
