/*3. Elaborar um programa que possua uma sub-rotina que efetue o
somat�rio dos N primeiros n�meros naturais iniciando em 1. O
resultado dever� ser exibido no programa principal e n�o no
procedimento.*/
//58.Fa�a um programa que calcule a somat�ria dos dez primeiros n�meros naturais.

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
