FUNCTION MAIN()

/*60.Faça um programa que calcule a somatória dos "n" primeiros números naturais pares ou ímpares. 
O usuário informará através de digitação: a quantidade de números desejada ("n") e escolhe entre par o ímpar.*/

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

//             WHILE Val(nLoop) < 0 .or. Val(nLoop) <> 0
//                 ACCEPT "Valor invalido, digite aqui um numero inteiro e maior que 0: " to nLoop

//             ENDDO
//         ENDDO
//     QOUT("")
//     ACCEPT "Digite aqui 'P'se voce quer ver os numeros naturais pares ou 'I' para numeros impares: " TO cPar
//         cPar := Upper(cPar)
//         QOUT(cPar)

//         WHILE cPar <> "P" .OR. cPar <> "I"
//             ACCEPT "Digite a letra 'P' se voce quiser numeros naturais pares ou a letra 'I' para numeros impares: " to cPar
//         ENDDO

//         IF cPar == "P"
//             PAR(nI , nSoma , nNum , nLoop)
//         ELSE
//             IMPAR(nI, nSoma , nNum , nLoop)
//         ENDIF

// Return NIL

// Function PAR(nI, nSoma , nNum, nLoop)

//     DO WHILE nI <= Val(nLoop)
//         nNum++
//         IF (nNum % 2) == 0
//             QOUT(alltrim(Str(nNum)) , "E par")
//                 nSoma := nSoma + nNum
//                 nI++
//         ENDIF
//     ENDDO

//     QOUT("A soma de todos os 10 primeiros numeros naturais pares e: " , (alltrim(Str(nSoma))))
// Return NIL

// Function IMPAR(nI, nSoma , nNum, nLoop)

//     DO WHILE nI <= Val(nLoop)
//         nNum++
//         IF (nNum % 2) <> 0
//             QOUT(alltrim(Str(nNum)) , "E Impar")
//                 nSoma := nSoma + nNum
//                 nI++
//         ENDIF
//     ENDDO

//     QOUT("A soma de todos os 10 primeiros numeros naturais pares e: " , (alltrim(Str(nSoma))))
// Return NIL
// ```    
?"Calculo de Somatorio"
            ?"Operacoes disponiveis"
            ?"'+' : soma"
            ?"'-' : subtracao"
            ?"'*' : multiplicao"
            ?"'/' : divisao"
            ?"'%' : resto da divisao"

    ACCEPT "Digite um numero: " to nNumero1
    ACCEPT "Digite a Operacao: " to cOper
    ACCEPT "Digite o outro numero: " to nNumero2 
        //?"Para sair digite: S"

    nNumero1 := Val(nNumero1)
    nNumero2 := Val(nNumero2)
         
    Cls 

    //QOUT ("Calculando: = ", nNumero1,cOper,nNumero2)

    While (nNumero1 != 0 .and. cOper != '0' .and. nNumero2 != 0)

            DO CASE
            CASE  cOper == "+"
                wait
                ?(nNumero1 + nNumero2)
                

            CASE cOper == '-'
                ?(nNumero1 - nNumero2)
                wait

            CASE cOper == '*'
                ?(nNumero1 * nNumero2)
                wait

            CASE cOper == '/'
                IF(nNumero2 != 0)
                    ?(nNumero1 / nNumero2)
                ELSE
                    ?("Nao existe divisao por 0")
                wait
                ENDIF

            CASE cOper == '%'
                    ?(nNumero1 % nNumero2)
                wait
            ENDCASE
                //default:
                  //      if(num1 != 0 && oper != '0' && num2 != 0)
                    //        printf(" Operador invalido\n\n ");
                      //  else
                        //    printf(" Fechando calculadora!\n ");
        ENDDO
RETURN .T.
