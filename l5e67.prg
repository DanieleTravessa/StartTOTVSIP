   /*67.[Refactoring do CS 03] 
   Nas olimp�adas deste ano, anotou-se em cart�es cada uma das medalhas de ouro, prata e bronze, 
   obtidas por um determinado pa�s. 
   Fa�a um programa que leia esses cart�es e exiba o quadro completo de medalhas obtidas pela delega��o do pa�s. 
   O cart�o com o conte�do �F� indica que � o �ltimo da pilha. */ 

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
