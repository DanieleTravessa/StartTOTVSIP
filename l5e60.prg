/*60.Fa�a um programa que calcule a somat�ria dos "n" primeiros n�meros naturais pares ou �mpares. 
O usu�rio informar� atrav�s de digita��o: a quantidade de n�meros desejada ("n") e escolhe entre par o �mpar.*/

FUNCTION MAIN()

    LOCAL nNumero := 0, nSoma := 0, nLimite := 0, cIP := "", cPI := ""
    ACCEPT "Insira quantos numeros naturais quer calcular : " to nLimite
    ACCEPT "Quer calcular os valores pares ou impares? (P/I) " to cIP

   
    WHILE ISDIGIT(nLimite) = .F. // Validacao para saber se o numero digitado eh inteiro e positivo
            ACCEPT "Valor invalido, digite aqui um numero inteiro positivo: " to nLimite
    ENDDO

    nLimite := Val(nLimite)
    cIP := UPPER(cIP)


    WHILE nNumero < nLimite 
        IF cIP == "P"
        nNumero := nNumero + 2
        nSoma := nSoma + nNumero
        cPI := "Pares"
        ELSEIF cIP == "I"
        nNumero := nNumero + 1
        nSoma := nSoma + nNumero
        cPI := "Impares"
        ENDIF
    ENDDO
    ?"A somatoria dos", nLimite, "primeiros numeros naturais", cPI, "e: ", +AllTrim((Str(nSoma)))
    ?""

RETURN NIL

