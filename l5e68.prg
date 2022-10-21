Function MediadasNotas()
    /*68.[Refactoring do CS 02]: Faça um programa que leia um conjunto de notas de alunos de uma determinada turma, 
    anotadas em cartões, calcule e exiba a média das notas dos alunos. Sabe-se que a classe possui 15 alunos. 
*/
    Local cCartao := "", nNotas := 0, nMedia := 0, nCtd :=0
          
    While nCtd < 15
        Accept "Digite a Nota do Cartao: " to cCartao
        nNotas := nNotas + (Val(cCartao))
            nCtd := nCtd + 1
    END
    nMedia := (nNotas/15)
      
    QOUT("A media das notas dos alunos foi: ", +AllTrim(Str(nMedia)))
    QOUT("")
          
RETURN NIL

