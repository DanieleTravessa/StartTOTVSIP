FUNCTION MAIN()

/**Elaborar um programa que exiba na tela, automaticamente, 50 valores gerados aleatoriamente, entre 10 e 99.
==> Versão: laço com pós-teste (repita)*/

    Local nNumero := 0
    Local NCont   := 0    //Declara-se uma variável para o contador.

    DO WHILE .T. //No Harbour a função repita pode ser reproduzida com o Do While .T.;
        nCont = nCont + 1 //incrementa a variável do contador para avançar na contagem na contagem;
        nNumero := Random(10,99)%99+1
        ?nNumero //Imprime o último valor atribuído à variável  
        If nCont > 50 //Condição de saída, define o momento que a repetição atingiu seu limite;
           EXIT //Uma vez cumprida a condição de saída o programa encerra a contagem;
        ENDIF
       
    ENDDO
    
    ?"-> *** A Contagem chegou ao final! ***"
    ?""

RETURN .T.



// Function Main()

//     local num:=0, nCont:=1,num1:=0,nCont1:=1, num2:=0, nCont2:=1

//     while num!=80

//         num := Random(10, 99)% 99 + 1
//         if num == 80
//             exit
//         else
//             Qout ("Nºs entre 10 e 99 até o nº 80, usando enquanto: ", ALLtrim(STR(num)))
//         nCont++
//         end if
//     enddo
// 18 de outubro de 2022

// Natan — Hoje às 00:15
// function main()

//     local nI, nCont := 32

//     QOUT("FOR ")
//     for nI := 32  TO 126
//         QOUT(Alltrim(StrZero(nI, 3) + " - "+ Chr(nI)))

//     next nI

//     QOUT(Chr(10) + "WHILE ")
//     while nCont <= 126
//         QOUT(Alltrim(StrZero(nCont, 3) + " - "+ Chr(nCont)))
//         nCont ++
//     end do

// RETURN nil
// [00:16]
// function main()

//     local nI

//     for nI := 0  TO 100 STEP 3
//         QOUT(Alltrim(StrZero(nI, 3)))
//     next nI
//     QOUT("Fim do programa! ")
// RETURN nil
// [00:16]
// local nI, n1:=0, lim:=0, n2:=0, lim2:=0, ne:=0

//     ACCEPT "Digite o número: " TO n1
//     ACCEPT "Digite o limite: " TO lim

//     n1 := Val(n1)
//     lim := Val(lim)

//     for nI  := 0  TO lim STEP n1
//         QOUT(Alltrim(StrZero(nI, 3)))
//     next nI
//     QOUT("Fim do programa! ")

//     ACCEPT "Digite o número: " TO n2
//     ACCEPT "Digite o limite: " TO lim2

//     n2 := Val(n2)
//     lim2 := Val(lim2)
//     ne:=n2

//    while n2 <= lim2
//         QOUT(Alltrim(StrZero(n2, 3)))
//         n2:=n2+ne
//    enddo
//        QOUT("Fim do programa! ")
// [00:16]
// local num:=0, div:=0, ab, nCont:=1, nCont2:=0, num2:=0

//     ACCEPT("Insira um valor para realizar a divisão (while) ")to div
//     ACCEPT("Insira a quantidade de valores a serem gerados (while) ")to nCont2
//     div:=Val(div)
//     nCont2:=Val(nCont2)

//     while nCont <= nCont2

//         num := (hb_randomint(1,99))
//         ab:= (num % div)

//         if ab == 0
//             Qout ("Valor gerado: ", ALLtrim(STR(num)), "nº: ", ALLtrim(STR(nCont)))
//             nCont++
//         end if
//     enddo

//     ACCEPT("Insira um valor para realizar a divisão (for) ")to div
//     ACCEPT("Insira a quantidade de valores a serem gerados (for) ")to nCont2
//     div:=Val(div)
//     nCont2:=Val(nCont2)

//     for nCont:=1 to nCont2 STEP 1

//         num2 := (hb_randomint(1,99))
//         ab:= (num2 % div)

//         if ab == 0
//             Qout ("Valor gerado com for: ", ALLtrim(STR(num2)), "nº: ", ALLtrim(STR(nCont)))
//         else
//             nCont--
//         end if

//     next nCont == nCont2
// [00:16]
// local num:=0, nCont:=1, aux:=0

//     for nCont:=1 to 10
//         ACCEPT ("Entre com um número: ") to num
//         num:=Val(num)
//         aux:=aux+num
//         Qout("A soma é: ",num)
//     next nCont

//     Qout("A soma total é: ", Alltrim(STR(aux)))
// [00:16]
// local num:=0, nCont:=1, aux:=0

//     for nCont:=1 to 10
//         num := (hb_randomint(1,99))
//         if num %2==0
//             aux:=aux+num
//             Qout("A soma é: ",Alltrim(STR(num)))
//         else
//             nCont--
//         end if
//     next nCont

//     Qout("A soma total é: ", Alltrim(STR(aux)))
// [00:16]
// local num:=0, nCont:=1, aux:=0, par:="", qtd:=0

//     ACCEPT ("Entre com um número: ") to qtd
//     ACCEPT ("Par ou impar? P/I ") to par

//     qtd:=Val(qtd)

//     for nCont:=1 to qtd

//         num := (hb_randomint(1,99))

//         if par == "P" .and. num %2==0
//             aux:=aux+num
//             Qout("A soma é: ",Alltrim(STR(num)))

//         elseif par == "I" .and. num %2!=0
//             aux:=aux+num
//             Qout("A soma é: ",Alltrim(STR(num)))
//         else
//             nCont--
//         end if

//     next nCont

//     Qout("A soma total é: ", Alltrim(STR(aux)))

// Conversar em ??Sala de estudo 1
