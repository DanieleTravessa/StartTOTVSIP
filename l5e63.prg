/*[Refactoring do 24] Ler quatro valores referentes a quatro notas escolares de um aluno e 
imprimir uma mensagem dizendo que o aluno foi aprovado, se o valor da média escolar for maior ou igual a 7. 
Se o valor da média for menor que 7, solicitar a nota de exame, sornar com o valor da média e obter nova média. 
Se a nova média for maior ou igual a 5, apresentar uma mensagem dizendo que o aluno foi aprovado em exame. 
Se o aluno não foi aprovado, indicar uma mensagem informando esta condição. 
Apresentar com as mensagens o valor da média do aluno, para qualquer condição. 
Atenção. Deverá ser feita a consistência dos dados de entrada para aceitar apenas notas com valores entre 0 e 10. */

Function Main()

    LOCAL nNum := 0, nAux := 0, n_media := 0, nCont := 1, nExam := 0

    QOUT("Informa as 4 notas")
    FOR nCont :=1 to 4
    ACCEPT("Informe a nota: ") TO nNum
    nNum := Val(nNum)
    IF nNum > 10 .Or. nNum < 0
        QOut("Informe um valor entre 0 e 10")
        nCont:=nCont-1
    ELSE
        nAux := nAux + nNum
    END IF
    NEXT

    n_media := (nAux/4)

    IF n_media >= 7 .And. n_media <= 10
        QOut("O aluno foi aprovado! Sua média é: " + str(n_media))

    ELSE 
        ACCEPT "Informe a nota do exame: " TO nExam
        nExam := Val(nExam)

        WHILE nExam > 10 .Or. nExam < 0
            QOut("Informe um valor entre 0 e 10")
            ACCEPT "Informe a nota do exame: " TO nExam
            nExam := Val(nExam)
        ENDDO

        n_media = ((nExam+n_media)/2)

        IF n_media >= 5
            QOut("O aluno foi aprovado apos o exame! Sua media e: " +ALLTrim(str(n_media)))
        ELSE
            QOut("O aluno foi reprovado apos o exame! Sua media e: " +ALLTrim(str(n_media)))
        ENDIF
    ENDIF
RETURN NIL
