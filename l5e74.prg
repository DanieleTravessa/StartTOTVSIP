
/*74.Jogo Adivinha o número - parte 2: Continue o desenvolvimento do jogo. Agora, o programa deverá continuar dando dicas a cada palpite do usuário até que ele acertar o número sorteado. Quando o usuário acertar o número gerado deverá ser apresentado o resultado do teste. Da seguinte forma: 
• Em menos de 5 tentativas exibir a mensagem: “Você é muito bom, acertou em x tentativas.” 
• Em mais do que 5 e menos do que 9 tentativas: “Você é bom, acertou em x tentativas". 
• Em mais do que 9 e menos do que 13 tentativas: “Você é mediano, acertou em x tentativas”. 
• Em mais do que 13: “Você é muito fraco, acertou em x tentativas” 
*/
Function Main()

    Local nN 
    Local nChute := 0
    Local nTent := 0

    nN := Random()% 100 + 1
    while nChute != nN

        ACCEPT "Digite um numero (de 1 a 100): " to nChute
        nChute = val(nChute)

        if(nChute == nN)
            QOUT("Parabens, voce acertou.")
            QOUT("O total de erro foi de: " + alltrim(str(nTent)))

        elseif (nChute > nN)
            QOUT("O valor digitado e maior, tente novamente.")
            nTent +=1
        else
            QOUT("O valor digitado e baixo, tente novamente.")
            nTent +=1
        ENDIF
      
    ENDDO
    
    IF nTent <=5
        ?"Voce e muito bom, acertou em ", +AllTrim(STR(nTent)),"tentativas"
    ELSEIF nTent > 5 .and. nTent <= 9
        ?"Voce e bom, acertou em ", +AllTrim(STR(nTent)),"tentativas"
    ELSEIF nTent > 9 .and. nTent <= 13
        ?"Voce e mediano, acertou em ", +AllTrim(STR(nTent)),"tentativas"
    ELSEIF nTent > 13
        ?"Voce e muito fraco, acertou em ", +AllTrim(STR(nTent)),"tentativas"
    ENDIF
RETURN NIL
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
// ?  "Processando  com  o  laço  FOR  "
// FOR  nContador  :=  1  TO  100
//         ?  nContador
//         ACCEPT  "Deseja  contar  mais  um  ?  (S/N)  "  TO  cResposta
//         IF  !(  cResposta  $  "Ss"  )  //  cResposta  não  está  contido  em  "Ss"
//               EXIT
//         ENDIF
// NEXT
// ?  "O  valor  após  a  saída  é  "  ,  nContador
// RETURN
