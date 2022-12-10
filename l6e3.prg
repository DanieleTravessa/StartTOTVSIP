/*3. Elaborar um programa que possua uma sub-rotina que efetue o
somatório dos N primeiros números naturais iniciando em 1. O
resultado deverá ser exibido no programa principal e não no
procedimento.*/
//58.Faça um programa que calcule a somatória dos dez primeiros números naturais.

FUNCTION MAIN()

    Local nNumero := 1, nSoma := 0, nLimite := 0

    ACCEPT "Ate que numero quer calcular a soma? " TO nLimite
    nLimite := Val(nLimite)

    nSoma := Soma(nNumero, nLimite, nSoma)

    ?"A soma dos inteiros de 1 a", nLimite, "e: " + +AllTrim((Str(nSoma)))
    ?""
  
RETURN NIL

Function Soma(nNumero, nLimite, nSoma)

    FOR nNumero := 1 to nLimite 
        nSoma += nNumero        
    NEXT

RETURN nSoma
