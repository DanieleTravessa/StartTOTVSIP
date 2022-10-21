//59.Faça um programa que calcule a somatória dos dez primeiros números naturais pares.

FUNCTION MAIN()

    LOCAL nNumero := 0, nSoma := 0

    WHILE nNumero < 9 
        nNumero := nNumero + 2
        nSoma := nSoma + nNumero
        //IF nNumero != 9
       // ?nSoma  
       // ENDIF
    ENDDO
    ?"A somatoria dos dez primeiros numeros naturais pares e: " + +AllTrim((Str(nSoma)))
    ?""

RETURN NIL
