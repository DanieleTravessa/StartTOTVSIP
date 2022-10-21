//58.Faça um programa que calcule a somatória dos dez primeiros números naturais.

FUNCTION MAIN()

    Local nNumero := 0, nSoma := 0

    WHILE nNumero < 9 
        nNumero += 1
        nSoma += nNumero
       
    ENDDO
    ?"A soma dos inteiros de 1 a 9 e: " + +AllTrim((Str(nSoma)))
    ?""

RETURN NIL
 

