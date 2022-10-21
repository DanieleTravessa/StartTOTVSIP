   /*67.[Refactoring do CS 03] 
   Nas olimpíadas deste ano, anotou-se em cartões cada uma das medalhas de ouro, prata e bronze, 
   obtidas por um determinado país. 
   Faça um programa que leia esses cartões e exiba o quadro completo de medalhas obtidas pela delegação do país. 
   O cartão com o conteúdo “F” indica que é o último da pilha. */ 

Function TipodeMedalhas()
    Local cCartao := "", nO := 0, nP:=0, nB:=0, nTotal:=0
  
    While cCartao <> "F" .and. cCartao !="f"
        Accept "Digite o Conteudo do Cartao: " to cCartao
        If cCartao=="O".or.cCartao =="o"
            nO += 1
        ELSEIF cCartao=="P".or.cCartao=="p"
            nP += 1
        ELSEIF cCartao=="B".or.cCartao=="b"
            nB += 1
        ENDIF
    END
    nTotal := nO+nP+nB  

    QOUT("A delegacaoo tem:")
    QOut( AllTrim(Str(nO)), "medalhas de ouro!")
    QOUT( AllTrim(Str(nP)), "medalhas de prata!")
    QOUT( AllTrim(Str(nB)), "medalhas de bronze!")
    QOUT("Com um total de", AllTrim(Str(nTotal)), "medalhas.")
    QOUT()

RETURN NIL
