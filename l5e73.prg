/*73.Fa�a um programa que leia um conjunto de notas de alunos anotadas em cart�es, 
calcule e exiba a m�dia das notas dos alunos, assim como a maior e a menor nota da turma. 
Dever� funcionar para turma com qualquer quantidade de alunos, que sempre corresponder� � quantidade de notas armazenadas nos cart�es. 
A tecla �ESC� indica o encerramento da s�rie de notas.
*/
Function MediaMaiorMenor()
    Local nCartao := 0, nSoma := 0, nMedia := 0, nCtd :=0, nMaior := 0, nMenor :=10, nAlunos :=0, lLoop := .T.


        //Accept "Qual o n�mero de alunos?: " to nAlunos


    While lLoop

        Accept "Digite a Nota do Cartao: " to nCartao
        nCartao:= (Val(nCartao))

        nSoma := nSoma + nCartao

        IF nCartao > nMaior
            nMaior := nCartao
        ENDIF

        IF nCartao < nMenor 
            nMenor := nCartao
        ENDIF
        nCtd++

        Wait "Valor digitado valido, pressione 'esc' para calcular a media ou 'enter' para continuar"

        IF lastkey() == 27
            lLoop := .F.
        ENDIF

    ENDDO

    nMedia := (nSoma/nCtd)

    QOUT("A media das notas dos alunos foi: ", +AllTrim(Str(nMedia)))
    QOUT("A menor nota de aluno foi: ", +AllTrim(Str(nMenor)))
    QOUT("A maior das notas dos alunos foi: ", +AllTrim(Str(nMaior)))
    QOUT("")

RETURN NIL

