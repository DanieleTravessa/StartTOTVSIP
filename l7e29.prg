/*29.Faça um programa que valide um CPF informado pelo usuário, através
do cálculo do dígito verificador (check-digit).*/

FUNCTION MAIN()

    LOCAL cCPF , aCPF := {} , nI , nCalc := 0

    WHILE .T.
        ACCEPT "Digite o CPF... " TO cCPF
        
        IF LEN(cCPF) == 11
            EXIT
        ENDIF
    ENDDO

    aCPF := array(11)
    FOR nI := 1 TO 11
        aCPF[nI] := val(SubStr(cCPF, nI , 1))
    next nI

    // Checagem de entrada, CPF não pode ter todos os digitos iguais
    IF aCPF[1] = aCPF[2] .and. aCPF[2] = aCPF[3] .and. aCPF[3] = aCPF[4] .and. aCPF[4] = aCPF[5] .and. aCPF[5] = aCPF[6] .and. aCPF[6] = aCPF[7] .and. aCPF[7] = aCPF[8] .and. aCPF[8] = aCPF[9] .and. aCPF[9] = aCPF[10] .and. aCPF[10] = aCPF[11]
        ?"CPF INVALIDO"
    ELSE
        // inicio do teste do primeiro digito verificador
        nCalc := aCPF[1] * 10 + aCPF[2] * 9 + aCPF[3] * 8 + aCPF[4] * 7 + aCPF[5] * 6 + aCPF[6] * 5 + aCPF[7] * 4 + aCPF[8] * 3 + aCPF[9] * 2

        nCalc :=  (nCalc * 10) % 11
        IF ( nCalc == 10)
            nCalc := 0
        ENDIF

        IF (nCalc == aCPF[10]) // teste do primeiro digito verificador
            // inicio do teste do segundo digito verificador
            nCalc := aCPF[1] * 11 + aCPF[2] * 10 + aCPF[3] * 9 + aCPF[4] * 8 + aCPF[5] * 7 + aCPF[6] * 6 + aCPF[7] * 5 + aCPF[8] * 4 + aCPF[9] * 3 + aCPF[10] * 2

            nCalc :=  (nCalc * 10) % 11
            IF ( nCalc == 10)
                nCalc := 0
            ENDIF

            IF (nCalc == aCPF[11])//teste do segundo digito verificador
                QOUT("CPF VALIDO")
            ELSE
                QOUT("CPF INVALIDO")
            ENDIF
        ENDIF
    ENDIF

   ?"-~-~-~-~-~-~-~-~"
   ?""
RETURN NIL

