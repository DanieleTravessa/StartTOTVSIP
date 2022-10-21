/*60.Faça um programa que calcule a somatória dos "n" primeiros números naturais pares ou ímpares. 
O usuário informará através de digitação: a quantidade de números desejada ("n") e escolhe entre par o ímpar.*/

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

